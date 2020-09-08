-- Assumes already using the lunar database
-- CS Major Req


-- Dept setup
INSERT INTO Departments(name, dcode) VALUES ("Applied Mathematics & Statistics", "AMS");
INSERT INTO Departments(name, dcode) VALUES ("Business", "BUS");
INSERT INTO Departments(name, dcode) VALUES ("Computer Science", "CSE");
INSERT INTO Departments(name, dcode) VALUES ("Technological Systems Management", "TSM");
INSERT INTO Departments(name, dcode) VALUES ("Mechanical Engineering", "MEC");
INSERT INTO Departments(name, dcode) VALUES ("Accounting", "ACC");
INSERT INTO Departments(name, dcode) VALUES ("Engineering Management", "EMP");
INSERT INTO Departments(name, dcode) VALUES ("Atmospheric Sciences", "ATM");
INSERT INTO Departments(name, dcode) VALUES ("Economics", "ECO");
INSERT INTO Departments(name, dcode) VALUES ("Engineering Science", "ESG");
INSERT INTO Departments(name, dcode) VALUES ("Biology", "BIO");
INSERT INTO Departments(name, dcode) VALUES ("History", "HIS");
INSERT INTO Departments(name, dcode) VALUES ("Korean", "KOR");
INSERT INTO Departments(name, dcode) VALUES ("Mathematics", "MAT");
INSERT INTO Departments(name, dcode) VALUES ("Music", "MUS");
INSERT INTO Departments(name, dcode) VALUES ("Oral Academic English", "OAE");
INSERT INTO Departments(name, dcode) VALUES ("Physics", "PHY");
INSERT INTO Departments(name, dcode) VALUES ("Political Science", "POL");
INSERT INTO Departments(name, dcode) VALUES ("Writing Academic English", "WAE");
INSERT INTO Departments(name, dcode) VALUES ("Writing", "WRT");
INSERT INTO Departments(name, dcode) VALUES ("Chinese", "CHI");



-- COURSE INSERT EXAMPLE
INSERT INTO Courses(subject, crs, title) VALUES ("CSE", "101", "Introduction to Computers");
INSERT INTO Courses(subject, crs, title) VALUES ("CSE", "114", "Intro to Object-Oriented Prog");

INSERT INTO Rooms(rnumber, bname) VALUES ("A114", "Academic A");
INSERT INTO Rooms(rnumber, bname) VALUES ("A115", "Academic A");
INSERT INTO Rooms(rnumber, bname) VALUES ("A116", "Academic A");
INSERT INTO Rooms(rnumber, bname) VALUES ("A117", "Academic A");
INSERT INTO Rooms(rnumber, bname) VALUES ("A312", "Academic A");

INSERT INTO Rooms(rnumber, bname) VALUES ("B103", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B104", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B105", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B203", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B204", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B205", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B206", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B207", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B313", "Academic B");
INSERT INTO Rooms(rnumber, bname) VALUES ("B314", "Academic B");

INSERT INTO Rooms(rnumber, bname) VALUES ("C103", "Academic C");
INSERT INTO Rooms(rnumber, bname) VALUES ("C105", "Academic C");
INSERT INTO Rooms(rnumber, bname) VALUES ("C107", "Academic C");
INSERT INTO Rooms(rnumber, bname) VALUES ("C303", "Academic C");

INSERT INTO Professors(pfname, plname) VALUES ("Suil", "O");
INSERT INTO Professors(pfname, plname) VALUES ("Tan", "Cao");
INSERT INTO Professors(pfname, plname) VALUES ("Kazem", "Mahdavi");
INSERT INTO Professors(pfname, plname) VALUES ("Myoungshic", "Jhun");
INSERT INTO Professors(pfname, plname) VALUES ("Changsoon", "Park");
INSERT INTO Professors(pfname, plname) VALUES ("Ky", "Tran");
INSERT INTO Professors(pfname, plname) VALUES ("Chang I.", "Shin");
INSERT INTO Professors(pfname, plname) VALUES ("Jaeyeong", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Abroon", "Qazi");
INSERT INTO Professors(pfname, plname) VALUES ("Sungjoon", "Nam");
INSERT INTO Professors(pfname, plname) VALUES ("Chih-mao", "Hsieh");
INSERT INTO Professors(pfname, plname) VALUES ("Kyungkyu", "Kim");

INSERT INTO Professors(pfname, plname) VALUES ("Pravin", "Pawar");
INSERT INTO Professors(pfname, plname) VALUES ("Antonino", "Mione");
INSERT INTO Professors(pfname, plname) VALUES ("YoungMin", "Kwon");
INSERT INTO Professors(pfname, plname) VALUES ("ChiHim", "Wong");
INSERT INTO Professors(pfname, plname) VALUES ("Arthur", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Amos", "Omondi");
INSERT INTO Professors(pfname, plname) VALUES ("Jihoon", "Ryoo");
INSERT INTO Professors(pfname, plname) VALUES ("SeungSoo", "Park");

INSERT INTO Professors(pfname, plname) VALUES ("Joseph", "Cabuay");
INSERT INTO Professors(pfname, plname) VALUES ("Anthony", "Pennings");
INSERT INTO Professors(pfname, plname) VALUES ("James", "Larson");
INSERT INTO Professors(pfname, plname) VALUES ("Micah", "Modell");
INSERT INTO Professors(pfname, plname) VALUES ("Jang", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Suzana", "Brown");
INSERT INTO Professors(pfname, plname) VALUES ("Mark", "Whitaker");
INSERT INTO Professors(pfname, plname) VALUES ("Jin-sang", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Soogil", "Young");
INSERT INTO Professors(pfname, plname) VALUES ("Johng-Ihl", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Gerald", "Stokes");

INSERT INTO Professors(pfname, plname) VALUES ("Eugene", "Park");
INSERT INTO Professors(pfname, plname) VALUES ("Mahdi", "Mohebbi");
INSERT INTO Professors(pfname, plname) VALUES ("SiWon", "Hwang");
INSERT INTO Professors(pfname, plname) VALUES ("GunWoong", "Bahng");
INSERT INTO Professors(pfname, plname) VALUES ("Min Yang", "Yang");
INSERT INTO Professors(pfname, plname) VALUES ("Hamid", "Hefazi");
INSERT INTO Professors(pfname, plname) VALUES ("Changwoon", "Han");

INSERT INTO Professors(pfname, plname) VALUES ("SeonKi", "Park");
INSERT INTO Professors(pfname, plname) VALUES ("John", "Eimes");
INSERT INTO Professors(pfname, plname) VALUES ("Sunghyun", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Mengyang", "Jia");
INSERT INTO Professors(pfname, plname) VALUES ("WoongMoo", "Lee");
INSERT INTO Professors(pfname, plname) VALUES ("Oh-Yang", "Kwon");
INSERT INTO Professors(pfname, plname) VALUES ("Haeran", "Hur");
INSERT INTO Professors(pfname, plname) VALUES ("Koksuk", "Seo");
INSERT INTO Professors(pfname, plname) VALUES ("Soojin", "Kim");
INSERT INTO Professors(pfname, plname) VALUES ("Hyunju", "Kim");
INSERT INTO Professors(pfname, plname) VALUES ("Alexander", "Krejci");
INSERT INTO Professors(pfname, plname) VALUES ("Aaron", "Park");
INSERT INTO Professors(pfname, plname) VALUES ("JaiKun", "Yoo");
INSERT INTO Professors(pfname, plname) VALUES ("Jung-Min", "Hong");
INSERT INTO Professors(pfname, plname) VALUES ("YoungJune", "Kwon");
INSERT INTO Professors(pfname, plname) VALUES ("Katherine", "Stewart");
INSERT INTO Professors(pfname, plname) VALUES ("Timothy", "Fletcher");
INSERT INTO Professors(pfname, plname) VALUES ("Gary", "Sasala");
INSERT INTO Professors(pfname, plname) VALUES ("Alexander", "Grevett");
INSERT INTO Professors(pfname, plname) VALUES ("Leanne", "Patterson-Shin");


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="CSE";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95061, 'fall19', cid, 'LEC', '91', NULL, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 3); -- TUESDAY
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 5); -- THURSDAY

INSERT INTO Offers(did, classid) SELECT did, 95061 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95061 FROM profInfo;


-- AMS
CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="AMS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="151";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Suil" AND plname="O";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94843, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94843, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94843, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94843 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94843 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="161";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Tan" AND plname="Cao";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94844, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94844, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94844, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94844 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94844 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="210";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Tan" AND plname="Cao";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94845, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94845, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94845, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94845 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94845 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="261";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kazem" AND plname="Mahdavi";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94846, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94846, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94846, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94846 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94846 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="261";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kazem" AND plname="Mahdavi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94847, 'fall19', cid, 'REC', 'R90', 3, '13:30:00', '14:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94847, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94847 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94847 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="301";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Suil" AND plname="O";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94848, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94848, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94848, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94848 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94848 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="310";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Myoungshic" AND plname="Jhun";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94849, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94849, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94849, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94849 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94849 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="317";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changsoon" AND plname="Park";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95784, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95784, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95784, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95784 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95784 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="318";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Ky" AND plname="Tran";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95842, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95842, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95842, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95842 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95842 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="361";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kazem" AND plname="Mahdavi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95850, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95850, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95850, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95850 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95850 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="361";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kazem" AND plname="Mahdavi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95851, 'fall19', cid, 'REC', '90', 3, '14:30:00', '15:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95851, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95851 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95851 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="394";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changsoon" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95843, 'fall19', cid, 'REC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95843, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95843, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95843 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95843 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="475";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Myoungshic" AND plname="Jhun";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94997, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94997 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94997 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="476";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Myoungshic" AND plname="Jhun";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95007, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;
	
INSERT INTO Offers(did, classid) SELECT did, 95007 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95007 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="487";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Myoungshic" AND plname="Jhun";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95008, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;
	
INSERT INTO Offers(did, classid) SELECT did, 95008 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95008 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="487";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kazem" AND plname="Mahdavi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95785, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;
	
INSERT INTO Offers(did, classid) SELECT did, 95785 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95785 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="AMS" AND crs="487";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Tan" AND plname="Cao";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95786, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;
	
INSERT INTO Offers(did, classid) SELECT did, 95786 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95786 FROM profInfo;


-- BUS
CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="ACC";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ACC" AND crs="210";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C107";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94914, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '16:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94914, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94914 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94914 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="BUS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="115";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Chang I." AND plname="Shin";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95011, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95011, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95011 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95011 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="215";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jaeyeong" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94915, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94915, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94915, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94915 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94915 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="220";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Abroon" AND plname="Qazi";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94973, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94973, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94973, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94973 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94973 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="220";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94925, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94925, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94925, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94925 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94925 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="332";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Chih-mao" AND plname="Hsieh";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95012, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95012, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95012, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95012 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95012 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="346";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A114";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Abroon" AND plname="Qazi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95013, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95013, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95013, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95013 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95013 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="348";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sungjoon" AND plname="Nam";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94926, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94926, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94926, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94926 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94926 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="353";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Chih-mao" AND plname="Hsieh";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95790, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95790, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95790, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95790 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95790 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="358";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sungjoon" AND plname="Nam";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95791, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95791, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95791, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95791 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95791 FROM profInfo;



CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="365";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95844, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95844, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95844, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95844 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95844 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="448";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kyungkyu" AND plname="Kim";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95859, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95859, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95859, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95859 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95859 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="475";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Chih-mao" AND plname="Hsieh";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94927, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;
	
INSERT INTO Offers(did, classid) SELECT did, 94927 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94927 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BUS" AND crs="488";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Chih-mao" AND plname="Hsieh";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94916, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;
	
INSERT INTO Offers(did, classid) SELECT did, 94916 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94916 FROM profInfo;


-- CSE
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94852, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94852, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94852, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94852 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94852 FROM profInfo;

CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94853, 'fall19', cid, 'LAB', 'L90', 0, '12:30:00', '13:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94853, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 94853 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94853 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95061, 'fall19', cid, 'LEC', '91', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95061 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95061 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95060, 'fall19', cid, 'LAB', 'L90', 0, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95060, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 95060 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95060 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94854, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94854, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94854, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94854 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94854 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="114";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Antonino" AND plname="Mione";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94855, 'fall19', cid, 'LEC', '90', 4, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94855, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94855, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94855 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94855 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="114";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Antonino" AND plname="Mione";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94856, 'fall19', cid, 'LAB', 'L90', 0, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94856, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94856, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94856 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94856 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="114";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95063, 'fall19', cid, 'LEC', '90', 4, '14:00:00', '15:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95063, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95063, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95063 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95063 FROM profInfo;



CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="114";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95062, 'fall19', cid, 'LAB', 'L90', 0, '14:00:00', '15:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95062, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95062, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95062 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95062 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="214";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="YoungMin" AND plname="Kwon";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94857, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94857, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94857, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94857 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94857 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="214";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="YoungMin" AND plname="Kwon";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94858, 'fall19', cid, 'REC', 'R90', 0, '14:00:00', '14:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94858, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94858 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94858 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="215";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="ChiHim" AND plname="Wong";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94859, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94859, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94859, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94859 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94859 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="215";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="ChiHim" AND plname="Wong";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94860, 'fall19', cid, 'REC', 'R90', 0, '09:00:00', '09:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94860, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94860 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94860 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="216";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Arthur" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95798, 'fall19', cid, 'LEC', '90', 4, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95798, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95798, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95798 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95798 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="216";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Arthur" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95799, 'fall19', cid, 'REC', 'R90', 0, '14:00:00', '14:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95799, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95799 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95799 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="220";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Amos" AND plname="Omondi";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94863, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94863, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94863, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94863 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94863 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="220";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Amos" AND plname="Omondi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94864, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94864, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 94864 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94864 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="300";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Amos" AND plname="Omondi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94981, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94981, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94981, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94981 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94981 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="303";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="ChiHim" AND plname="Wong";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95064, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95064, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95064, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95064 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95064 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="307";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Antonino" AND plname="Mione";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94982, 'fall19', cid, 'LEC', '90', 0, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94982, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94982, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94982 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94982 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="308";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95800, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95800, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95800, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95800 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95800 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="310";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jihoon" AND plname="Ryoo";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94910, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94910, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94910, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94910 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94910 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="316";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Antonino" AND plname="Mione";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95801, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95801, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95801, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95801 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95801 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="320";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="YoungMin" AND plname="Kwon";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95055, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95055, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95055, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95055 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95055 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="352";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="SeungSoo" AND plname="Park";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94943, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94943, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94943, 4); -- @

INSERT INTO Offers(did, classid) SELECT did, 94943 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94943 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="353";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95802, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95802, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95802, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95802 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95802 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="373";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jihoon" AND plname="Ryoo";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94865, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94865, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94865, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94865 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94865 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="475";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Arthur" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94911, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94911 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94911 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="487";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Arthur" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94899, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94899 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94899 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="502";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Amos" AND plname="Omondi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95803, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95803, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95803, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95803 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95803 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="512";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95803, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95803, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95803, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95803 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95803 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="517";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Arthur" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95805, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95805, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95805 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95805 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="526";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Antonino" AND plname="Mione";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94983, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94983, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94983, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94983 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94983 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="534";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jihoon" AND plname="Ryoo";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95806, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95806, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95806, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95806 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95806 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="537";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="SeungSoo" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94993, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94993, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94993, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94993 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94993 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="541";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="SeungSoo" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95014, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95014, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95014, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95014 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95014 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="644";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Arthur" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94984, 'fall19', cid, 'LEC', '90', 3, '18:30:00', '19:50:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94984, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 94984 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94984 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="649";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="YoungMin" AND plname="Kwon";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94985, 'fall19', cid, 'LEC', '90', 3, '18:30:00', '19:50:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94985, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 94985 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94985 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="658";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jihoon" AND plname="Ryoo";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94868, 'fall19', cid, 'LEC', '90', 3, '18:30:00', '19:50:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94868, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 94868 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94868 FROM profInfo;


-- TSM
CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="TSM";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="194";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Joseph" AND plname="Cabuay";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95807, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95807, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95807, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95807 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95807 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="202";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Anthony" AND plname="Pennings";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94871, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94871, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94871, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94871 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94871 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="205";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95808, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95808, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95808, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95808 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95808 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="230";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="James" AND plname="Larson";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94872, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94872, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94872, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94872 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94872 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="304";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Chang I." AND plname="Shin";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95034, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95034, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95034 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95034 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="305";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Micah" AND plname="Modell";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94909, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94909, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94909, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94909 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94909 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="310";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Micah" AND plname="Modell";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95809, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95809, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95809, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95809 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95809 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="326";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Joseph" AND plname="Cabuay";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94873, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94873, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94873, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94873 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94873 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="327";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jang" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94972, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94972, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94972, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94972 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94972 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="331";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Joseph" AND plname="Cabuay";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94874, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94874, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94874 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94874 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="364";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Suzana" AND plname="Brown";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94875, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94875, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94875, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94875 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94875 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="371";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kyungkyu" AND plname="Kim";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94876, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94876, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94876, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94876 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94876 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="372";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mark" AND plname="Whitaker";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95035, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95035, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95035, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95035 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95035 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="391";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mark" AND plname="Whitaker";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94877, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94877, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94877, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94877 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94877 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="392";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jin-sang" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94903, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94903, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94903, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94903 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94903 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="393";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C107";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jang" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94878, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94878, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94878, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94878 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94878 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="440";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Suzana" AND plname="Brown";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94879, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94879, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94879, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94879 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94879 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="441";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B203";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Anthony" AND plname="Pennings";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94917, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94917, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94917, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94917 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94917 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="488";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95082, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95082 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="488";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95860, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95860 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Joseph" AND plname="Cabuay";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95040, 'fall19', cid, 'TUT', 'T101', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95040 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95040 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Micah" AND plname="Modell";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95041, 'fall19', cid, 'TUT', 'T102', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95041 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95041 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jin-sang" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95042, 'fall19', cid, 'TUT', 'T103', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95042 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95042 FROM profInfo;

CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="James" AND plname="Larson";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95002, 'fall19', cid, 'TUT', 'T91', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95002 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95002 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Anthony" AND plname="Pennings";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95003, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95003 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95003 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Soogil" AND plname="Young";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95004, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95004 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95004 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Suzana" AND plname="Brown";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95005, 'fall19', cid, 'TUT', 'T95', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95005 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95005 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mark" AND plname="Whitaker";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95006, 'fall19', cid, 'TUT', 'T96', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95006 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95006 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Johng-Ihl" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95037, 'fall19', cid, 'TUT', 'T97', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95037 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95037 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jang" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95038, 'fall19', cid, 'TUT', 'T98', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95038 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95038 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EMP" AND crs="502";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Johng-Ihl" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95032, 'fall19', cid, 'LEC', '90', 3, '19:00:00', '21:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95032, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95032 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95032 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="530";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95810, 'fall19', cid, 'LEC', '90', 3, NULL, NULL, NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95810 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95810 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="558";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="James" AND plname="Larson";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95067, 'fall19', cid, 'SEM', 'S90', 3, '19:00:00', '21:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95067, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95067 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95067 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="559";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95068, 'fall19', cid, 'LEC', '90', 3, NULL, NULL, NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95068 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95068 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="581";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94869, 'fall19', cid, 'LEC', '90', 3, '19:00:00', '21:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94869, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94869 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="692";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Gerald" AND plname="Stokes";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95845, 'fall19', cid, 'SEM', 'S90', 1, NULL, NULL, NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95845 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95845 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="697";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95084, 'fall19', cid, 'SUP', 'V103', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95084 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="697";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94908, 'fall19', cid, 'SUP', 'V91', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 94908 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="697";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95083, 'fall19', cid, 'SUP', 'V96', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95083 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="698";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95087, 'fall19', cid, 'TUT', 'T91', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95087 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="698";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95086, 'fall19', cid, 'TUT', 'T96', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95086 FROM deptInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="698";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95861, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo;

INSERT INTO Offers(did, classid) SELECT did, 95861 FROM deptInfo;



-- MEC
CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="MEC";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94881, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94881, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94881, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94881 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94881 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="203";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94882, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94882, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94882, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94882 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94882 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="226";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="SiWon" AND plname="Hwang";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95813, 'fall19', cid, 'LAB', 'L90', 1, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95813, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95813 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95813 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="301";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="GunWoong" AND plname="Bahng";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94974, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94974, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94974, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94974 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94974 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="310";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changwoon" AND plname="Han";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94975, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94975, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94975, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94975 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94975 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="316";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changwoon" AND plname="Han";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94977, 'fall19', cid, 'LAB', 'L90', 2, '14:00:00', '16:00:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94977, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94977 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94977 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="320";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94978, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94978, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94978, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94978 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94978 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="325";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Min Yang" AND plname="Yang";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94979, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94979, 2); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94979, 4); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94979 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94979 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="364";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94991, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94991, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94991, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94991 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94991 FROM profInfo;

CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="364";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B313";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94992, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94992, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 94992 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94992 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="402";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95814, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95814, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95814, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95814 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95814 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="422";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95028, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95028, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95028, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95028 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95028 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="441";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A114";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95029, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95029, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95029, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95029 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95029 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="455";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95815, 'fall19', cid, 'LEC', '90', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95815, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95815, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95815 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95815 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hamid" AND plname="Hefazi";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94963, 'fall19', cid, 'TUT', 'T90', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94963 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94963 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changwoon" AND plname="Han";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94967, 'fall19', cid, 'TUT', 'T91', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94967 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94967 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94966, 'fall19', cid, 'TUT', 'T92', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94966 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94966 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94964, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94964 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94964 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="GunWoong" AND plname="Bahng";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94965, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94965 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94965 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Min Yang" AND plname="Yang";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95816, 'fall19', cid, 'TUT', 'T95', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95816 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95816 FROM profInfo;

CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="499";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95817, 'fall19', cid, 'TUT', 'T96', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95817 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95817 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="512";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95818, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '15:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95818, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95818 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95818 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="530";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B206";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95819, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95819, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95819, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95819 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95819 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hamid" AND plname="Hefazi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94930, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94930 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94930 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changwoon" AND plname="Han";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94934, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94934 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94934 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94933, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94933 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94933 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94931, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94931 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94931 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="GunWoong" AND plname="Bahng";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94932, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94932 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94932 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Min Yang" AND plname="Yang";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95820, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95820 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95820 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95821, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95821 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95821 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="630";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B207";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hamid" AND plname="Hefazi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95862, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95862, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 95862 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95862 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="637";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B204";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95847, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '11:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95815, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95847 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95847 FROM profInfo;



CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="699";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hamid" AND plname="Hefazi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94935, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94935 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94935 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="699";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Changwoon" AND plname="Han";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94939, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94939 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94939 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="699";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mahdi" AND plname="Mohebbi";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94938, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94938 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94938 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="699";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Eugene" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94936, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94936 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94936 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="699";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="GunWoong" AND plname="Bahng";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94937, 'fall19', cid, 'TUT', 'T93', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 94937 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94937 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="699";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Min Yang" AND plname="Yang";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95822, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95822 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95822 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MEC" AND crs="599";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95823, 'fall19', cid, 'TUT', 'T94', 3, '01:00:00', '01:00:00', NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95823 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95823 FROM profInfo;


