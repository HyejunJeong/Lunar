DELIMITER //
CREATE FUNCTION f_get_courseID(p_subject VARCHAR(3), p_crs INTEGER)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_cid INTEGER;
	SELECT cid INTO v_cid FROM Courses WHERE subject=p_subject AND crs=p_crs;
	RETURN v_cid;
END;


CREATE FUNCTION f_get_profID(p_fname VARCHAR(255), p_lname VARCHAR(255))
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_pid INTEGER;
	SELECT pid INTO v_pid FROM Professors WHERE pfname=p_fname AND plname=p_lname;
	RETURN v_pid;
END;

CREATE FUNCTION f_get_roomID(p_rnumber VARCHAR(4))
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_rmid INTEGER;
	SELECT rmid INTO v_rmid FROM Rooms WHERE rnumber=p_rnumber;
	RETURN v_rmid;
END; 

CREATE FUNCTION f_get_deptID(p_dcode VARCHAR(3))
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_did INTEGER;
	SELECT did INTO v_did FROM Departments WHERE dcode=p_dcode;
	RETURN v_did;
END;

CREATE FUNCTION f_get_studentID(p_fname VARCHAR(255), p_lname VARCHAR(255))
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_sid INTEGER;
	SELECT sid INTO v_sid FROM Students WHERE sfname=p_fname AND slname=p_lname;
	RETURN v_sid;
END;

CREATE FUNCTION f_get_recordID(p_sid INTEGER)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_rid INTEGER;
	SELECT rid INTO v_rid FROM Takes WHERE sid=p_sid;
	RETURN v_rid;
END;

-- return credit sum
-- specified or all
CREATE FUNCTION f_get_credits(p_rid INTEGER, p_semester VARCHAR(9), b_graded BOOLEAN)
RETURNS INTEGER NOT DETERMINISTIC

BEGIN
	DECLARE v_credits INTEGER;
	IF b_graded THEN
		IF p_semester IS NULL THEN
			SELECT SUM(credits) INTO v_credits FROM Classes WHERE 
				classid IN (SELECT classid FROM Contains 
					WHERE rid = p_rid AND grade IS NOT NULL);
		ELSE
			SELECT SUM(credits) INTO v_credits FROM Classes WHERE 
				classid IN (SELECT classid FROM Contains 
					WHERE rid = p_rid AND grade IS NOT NULL)
				AND semester = p_semester;
		END IF;
	ELSE
		IF p_semester IS NULL THEN
			SELECT SUM(credits) INTO v_credits FROM Classes WHERE classid IN 
				(SELECT classid FROM Contains WHERE rid = p_rid);
		ELSE
			SELECT SUM(credits) INTO v_credits FROM Classes WHERE classid IN 
				(SELECT classid FROM Contains WHERE rid = p_rid) AND semester = p_semester;
		END IF;
	END IF;
	RETURN v_credits;
END;

-- return NULL if no conflict, other classid if conflict
CREATE FUNCTION f_timeslot_match(p_rid INTEGER, p_classid INTEGER)
RETURNS INTEGER NOT DETERMINISTIC
BEGIN
	DECLARE v_classid INTEGER;
	SELECT DISTINCT classid INTO v_classid FROM ClassOfferedOn WHERE classid IN
		(SELECT classid FROM Contains WHERE rid = p_rid)
		AND slotid IN (SELECT slotid FROM ClassOfferedOn WHERE classid = p_classid);

	RETURN v_classid;
END;

CREATE PROCEDURE p_grade(p_sid INTEGER, p_classid INTEGER, p_grade VARCHAR(3))
BEGIN
	DECLARE v_rid INTEGER;
	DECLARE v_gpa DOUBLE;
	SET v_rid = f_get_recordID(p_sid);
	UPDATE Contains SET grade=p_grade WHERE rid=v_rid AND classid=p_classid;
	SET v_gpa = f_calculate_gpa(p_sid, NULL);
	UPDATE Record SET gpa=v_gpa WHERE rid=v_rid;
	IF v_gpa >= 3.0 THEN
		UPDATE Record SET climit=23 WHERE rid=v_rid;
	ELSE
		UPDATE Record SET climit=17 WHERE rid=v_rid;
	END IF;
END;


CREATE FUNCTION f_calculate_gpa(p_sid INTEGER, p_semester VARCHAR(9))
RETURNS REAL NOT DETERMINISTIC
BEGIN
	DECLARE v_sum, v_credit,  v_rid INTEGER;
	SET v_rid = f_get_recordID(p_sid);
	SELECT SUM(point * credits) INTO v_sum FROM Classes, Contains, GPA WHERE 
		Classes.classid = Contains.classid AND rid=v_rid AND Contains.grade=GPA.grade;
	RETURN TRUNCATE(v_sum/f_get_credits(v_rid, p_semester, TRUE), 2);
END;

-- Insert a class and return its classid
CREATE FUNCTION f_insert_class(p_classid INTEGER, p_semester VARCHAR(9), p_subject VARCHAR(3), 
	p_crs INTEGER,p_cmp VARCHAR(3), p_sect VARCHAR(4), p_cred INTEGER, p_rnum VARCHAR(4), 
	p_fn VARCHAR(255), p_ln VARCHAR(255), p_cap INTEGER)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_cid INTEGER;
	DECLARE v_pid INTEGER;
	DECLARE v_rmid INTEGER;
	DECLARE v_did INTEGER;
	SET v_cid = f_get_courseID(p_subject, p_crs);
	SET v_pid = f_get_profID(p_fn, p_ln);
	SET v_rmid = f_get_roomID(p_rnum);
	SET v_did = f_get_deptID(p_subject);
	IF v_cid IS NULL THEN
		INSERT INTO Courses(subject, crs) VALUES (p_subject, p_crs);
		SET v_cid = LAST_INSERT_ID();
	END IF;
	IF v_pid IS NULL AND (p_fn IS NOT NULL AND p_ln IS NOT NULL) THEN
		INSERT INTO Professors(pfname, plname) VALUES (p_fn, p_ln);
		SET v_pid = LAST_INSERT_ID();
	END IF;
	IF v_rmid IS NULL AND p_rnum IS NOT NULL THEN
		INSERT INTO Rooms(rnumber) VALUES (p_rnum);
		SET v_rmid = LAST_INSERT_ID();
	END IF;

	INSERT INTO Classes(classid, semester, cid, cmp, section, credits, rmid, pid, cap)
		VALUES (p_classid, p_semester, v_cid, p_cmp, p_sect, p_cred, 
			 v_rmid, v_pid, p_cap);
	
	INSERT INTO Offers(did,classid) VALUES (v_did, p_classid);
	
	IF v_pid IS NOT NULL THEN
		INSERT INTO Teaches(pid,classid) VALUES (v_pid, p_classid);
		IF NOT EXISTS(SELECT * FROM WorksIn WHERE pid=v_pid AND did=v_did) THEN
			INSERT INTO WorksIn(pid,did) VALUES (v_pid, v_did);
		END IF;
	END IF;

	RETURN p_classid;
END;

CREATE FUNCTION f_get_slotID(p_day INTEGER, p_stime TIME, p_etime TIME)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_slotid INTEGER;
	SELECT slotid INTO v_slotid FROM Timeslot WHERE day=p_day AND stime=p_stime AND etime=p_etime;
	RETURN v_slotid;
END;

-- get classid, day, stime, etime
-- make timeslot if not exist
-- set slotid if not in classid
CREATE FUNCTION f_set_class_time(p_classid INTEGER, p_day INTEGER, p_stime TIME, p_etime TIME)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_slotid INTEGER;
	SET v_slotid = f_get_slotID(p_day, p_stime, p_etime);
	IF v_slotid IS NULL THEN
		BEGIN
		INSERT INTO Timeslot(day, stime, etime) VALUES (p_day, p_stime, p_etime);
		SET v_slotid = LAST_INSERT_ID();
	END;
	END IF;
	INSERT INTO ClassOfferedOn(classid, slotid) VALUES (p_classid, v_slotid);
	RETURN v_slotid;
END;

-- create a student
-- create a student account
-- create a record
CREATE FUNCTION f_create_student_account(p_fname VARCHAR(255), p_lname VARCHAR(255), 
	p_pswd VARCHAR(10), p_type VARCHAR(2))
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_rid INTEGER;
	DECLARE v_sid INTEGER;
	INSERT INTO Students(sfname, slname, stype) VALUES (p_fname, p_lname, p_type);
	SET v_sid = LAST_INSERT_ID();
	INSERT INTO Record() VALUES ();
	SET v_rid = LAST_INSERT_ID();
	INSERT INTO Takes(sid, rid) VALUES (v_sid, v_rid);

	INSERT INTO StudentAccounts(sid, pswd) VALUES (v_sid, p_pswd);
	RETURN v_sid;
END;

CREATE FUNCTION f_register_class(p_sid INTEGER, p_classid INTEGER)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_rid INTEGER;
	SET v_rid = f_get_recordID(p_sid);

	INSERT INTO Contains(rid, classid) VALUES (v_rid, p_classid);
	RETURN v_rid;

END;

CREATE TRIGGER registration_error BEFORE INSERT ON Contains
FOR EACH ROW BEGIN
	DECLARE v_conflict INTEGER;
	DECLARE v_credit_sum INTEGER;
	DECLARE v_credit INTEGER;
	DECLARE v_limit INTEGER;
	DECLARE v_semester VARCHAR(9);
	
	SELECT semester INTO v_semester FROM Classes WHERE classid=NEW.classid;
	SET v_conflict = f_timeslot_match(NEW.rid, NEW.classid);
	SET v_credit_sum = f_get_credits(NEW.rid, v_semester, FALSE);
	SELECT credits INTO v_credit FROM Classes WHERE classid = NEW.classid;
	SELECT climit INTO v_limit FROM Record WHERE rid = NEW.rid;
	IF v_credit_sum + v_credit > v_limit THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'YOU ARE AT A MAXIMUM CREDIT LIMIT!!';
	END IF;
        IF v_conflict IS NOT NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THERE IS A TIME CONFLICT WITH YOUR RECORD:';
	END IF;
END;

CREATE PROCEDURE p_drop_class(p_sid INTEGER, p_classid INTEGER)
BEGIN
	DECLARE v_rid INTEGER;
	SET v_rid = f_get_recordID(p_sid);
	DELETE FROM Contains WHERE rid = v_rid AND classid = p_classid;
END;

-- search other than sid
CREATE PROCEDURE p_search_class(p_subject VARCHAR(3), p_crs VARCHAR(3), 
			p_crs_cond INTEGER, p_ln VARCHAR(255), p_sbc VARCHAR(147))
BEGIN
	DECLARE v_sbc_sql VARCHAR(200);
	DECLARE v_cid_sql VARCHAR(80);
	DECLARE v_crs_sql VARCHAR(10);
	DECLARE v_sbj_sql VARCHAR(15);
	DECLARE v_pid_sql VARCHAR(310);
	DECLARE v_sql VARCHAR(650);
	
	IF p_sbc != '' THEN
		SET v_sbc_sql = concat('cid in (SELECT cid FROM Fulfills WHERE sbcid IN 
				(SELECT sbcid FROM SBCReq WHERE SBCReq.name in (', p_sbc, ')))');
	ELSE
		SET v_sbc_sql = 'TRUE';
	END IF;
	
	IF p_subject != '' THEN
		SET v_sbj_sql = concat('subject="', p_subject, '"');
	ELSE
		SET v_sbj_sql = 'TRUE';
	END IF;

	IF p_crs != '' THEN
		IF p_crs_cond = 0 THEN
			SET v_crs_sql = concat('crs<=', p_crs);
		ELSEIF p_crs_cond = 1 THEN
			SET v_crs_sql = concat('crs=', p_crs);
		ELSEIF p_crs_cond = 2 THEN
			SET v_crs_sql = concat('crs>=', p_crs);
		END IF;
	ELSE
		SET v_crs_sql = 'TRUE';
	END IF;

	IF p_subject='' AND p_crs='' THEN
		SET v_cid_sql = 'TRUE';
	ELSE
		SET v_cid_sql = concat('cid IN (SELECT cid FROM Courses WHERE ', v_crs_sql, ' AND ', v_sbj_sql, ')');
	END IF;

	IF p_ln != '' THEN
		SET v_pid_sql = concat(' pid IN (SELECT pid FROM Professors WHERE plname="', p_ln, '")');
	ELSE
		SET v_pid_sql = 'TRUE';
	END IF;

	
	SET v_sql = concat('SELECT classid FROM Classes WHERE ', v_cid_sql, ' AND ', v_pid_sql, ' AND ', v_sbc_sql, ';');

	SELECT v_sql;
	SET @SQL = v_sql;
	PREPARE stmt FROM @SQL;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;

END;//

DELIMITER ;
