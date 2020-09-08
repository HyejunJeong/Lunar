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

	IF v_cid IS NOT NULL AND v_pid IS NOT NULL AND v_rmid IS NOT NULL THEN
		INSERT INTO Classes(classid, semester, cid, cmp, section, credits, rmid, pid, cap)
			VALUES (p_classid, p_semester, v_cid, p_cmp, p_sect, p_cred, 
				 v_rmid, v_pid, p_cap);
	END IF;

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
CREATE FUNCTION f_setClassTime(p_classid INTEGER, p_day INTEGER, p_stime TIME, p_etime TIME)
RETURNS INTEGER DETERMINISTIC

BEGIN
	DECLARE v_slotid INTEGER;
	SET v_slotid = f_get_slotID(p_day, p_stime, p_etime);
	IF v_slotid IS NULL THEN
		INSERT INTO Timeslot(day, stime, etime) VALUES (p_day, p_stime, etime);
		SET v_slotid = LAST_INSERT_ID();
	END IF;
	INSERT INTO ClassOfferedOn(classid, slotid) VALUES (p_classid, v_slotid);
	RETURN 1;
END; //


DELIMITER ;
