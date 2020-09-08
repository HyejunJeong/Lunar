-- Assumes already using the lunar database
-- CS Major Req

-- Dept setup

CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="ATM";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ATM" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="SeonKi" AND plname="Park";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95058, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95058, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95058 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95058 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="BIO";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="BIO" AND crs="201";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="John" AND plname="Eimes";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94918, 'fall19', cid, 'LEC', '90', 3, '17:00:00', '19:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94918, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 94918 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94918 FROM profInfo;

CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="CHI";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CHI" AND crs="111";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mengyang" AND plname="Jia";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95052, 'fall19', cid, 'LEC', '90', 4, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95052, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95052, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95052 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95052 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CHI" AND crs="111";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mengyang" AND plname="Jia";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95051, 'fall19', cid, 'REC', 'R90', 0, '18:30:00', '19:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95051, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 95051 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95051 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CHI" AND crs="111";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mengyang" AND plname="Jia";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95794, 'fall19', cid, 'LEC', '90', 4, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95794, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95794, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95794 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95794 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CHI" AND crs="111";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mengyang" AND plname="Jia";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95795, 'fall19', cid, 'REC', 'R90', 0, '17:00:00', '17:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95795, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 95795 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95795 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CHI" AND crs="112";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mengyang" AND plname="Jia";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95796, 'fall19', cid, 'LEC', '90', 4, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95796, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95796, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95796 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95796 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CHI" AND crs="112";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Mengyang" AND plname="Jia";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95797, 'fall19', cid, 'REC', 'R90', 0, '10:30:00', '11:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95797, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 95797 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95797 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="ECO";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ECO" AND crs="108";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94958, 'fall19', cid, 'LEC', '90', 4, '10:30:00', '11:50:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94958, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94958, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94958 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94958 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ECO" AND crs="108";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94959, 'fall19', cid, 'REC', 'R90', 0, '12:00:00', '12:53:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94959, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94959 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94959 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="ESG";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ESG" AND crs="281";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="WoongMoo" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95045, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95045, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95045, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95045 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95045 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ESG" AND crs="281";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="WoongMoo" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95044, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95044, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 95044 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95044 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="ESG";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ESG" AND crs="332";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Oh-Yang" AND plname="Kwon";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95047, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95047, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95047, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95047 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95047 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="ESG" AND crs="332";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Oh-Yang" AND plname="Kwon";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95046, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95046, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 95046 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95046 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="HIS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="HIS" AND crs="103";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C107";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95971, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:23:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95971, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95971, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95971 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95971 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="HIS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="HIS" AND crs="103";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C107";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95970, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95970, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95970 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95970 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="HIS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="HIS" AND crs="237";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C107";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95972, 'fall19', cid, 'LEC', '90', 4, '09:00:00', '10:20:00', rmid, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95972, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95972, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95972 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95972 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="KOR";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="KOR" AND crs="111";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B314";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Haeran" AND plname="Hur";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94987, 'fall19', cid, 'LEC', '90', 4, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94987, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94987, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94987 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94987 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="KOR" AND crs="111";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B314";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Haeran" AND plname="Hur";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94988, 'fall19', cid, 'REC', 'R90', 0, '17:00:00', '17:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94988, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 94988 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94988 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="KOR" AND crs="112";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B314";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Haeran" AND plname="Hur";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95811, 'fall19', cid, 'LEC', '90', 4, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95811, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95811, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95811 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95811 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="KOR" AND crs="112";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B314";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Haeran" AND plname="Hur";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95812, 'fall19', cid, 'REC', 'R90', 0, '17:00:00', '17:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95812, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95812 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95812 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="KOR" AND crs="220";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Koksuk" AND plname="Seo";

INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94971, 'fall19', cid, 'LEC', '90', 4, '09:00:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94971, 2); -- M

INSERT INTO Offers(did, classid) SELECT did, 94971 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94971 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MAT" AND crs="103";

INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95017, 'fall19', cid, 'LEC', '90', 3, NULL, NULL, NULL, NULL, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO Offers(did, classid) SELECT did, 95017 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95017 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="MAT";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MAT" AND crs="122";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jaeyeong" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95019, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95019, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95019, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95019 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95019 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MAT" AND crs="122";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jaeyeong" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95018, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95018, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 95018 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95018 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MAT" AND crs="123";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Ky" AND plname="Tran";

INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94969, 'fall19', cid, 'LEC', '90', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94969, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94969, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94969 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94969 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MAT" AND crs="123";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Ky" AND plname="Tran";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94970, 'fall19', cid, 'REC', 'R90', 0, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94970, 6); -- T

INSERT INTO Offers(did, classid) SELECT did, 94970 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94970 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MAT" AND crs="200";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Kazem" AND plname="Mahdavi";

INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95856, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95856, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95856, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95856 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95856 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="MUS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="MUS" AND crs="105";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C107";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Soojin" AND plname="Kim";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95059, 'fall19', cid, 'LEC', '90', 3, '09:30:00', '12:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95059, 3); -- T

INSERT INTO Offers(did, classid) SELECT did, 95059 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95059 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="OAE";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="OAE" AND crs="581";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hyunju" AND plname="Kim";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94919, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94919, 7); -- SA

INSERT INTO Offers(did, classid) SELECT did, 94919 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94919 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="PHY";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="131";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Krejci";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94960, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94960, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94960, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94960 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94960 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="131";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Krejci";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94961, 'fall19', cid, 'REC', 'R90', 0, '09:30:00', '10:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94961, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94961 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94961 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="132";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Krejci";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94956, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94956, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94956, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94956 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94956 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="132";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B205";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Krejci";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94957, 'fall19', cid, 'REC', 'R90', 0, '10:30:00', '11:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94957, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94957 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94957 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="133";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C303";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Aaron" AND plname="Park";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94954, 'fall19', cid, 'LAB', 'L90', 1, '10:00:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94954, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94954 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94954 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="133";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C303";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Aaron" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94955, 'fall19', cid, 'LAB', 'L91', 1, '12:30:00', '14:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94955, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94955 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94955 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="PHY" AND crs="134";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C303";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Aaron" AND plname="Park";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94953, 'fall19', cid, 'LAB', 'L91', 1, '14:30:00', '16:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94953, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94953 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94953 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="POL";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="POL" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C105";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="JaiKun" AND plname="Yoo";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95031, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95031, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95031 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95031 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="POL" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="C103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Jung-Min" AND plname="Hong";

INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94952, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94952, 6); -- F

INSERT INTO Offers(did, classid) SELECT did, 94952 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94952 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="SUS";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="SUS" AND crs="206";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A114";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="YoungJune" AND plname="Kwon";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95826, 'fall19', cid, 'LEC', '90', 3, '12:30:00', '13:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95826, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95826, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95826 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95826 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="SUS" AND crs="206";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A114";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="YoungJune" AND plname="Kwon";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95827, 'fall19', cid, 'REC', 'R90', 0, '15:30:00', '16:23:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95827, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95827 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95827 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="WAE";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="190";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hyunju" AND plname="Kim";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95828, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95828, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95828, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95828 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95828 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="192";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hyunju" AND plname="Kim";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94950, 'fall19', cid, 'LEC', '91', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94950, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94950, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94950 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94950 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="192";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Hyunju" AND plname="Kim";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94951, 'fall19', cid, 'LEC', '92', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94951, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94951, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94951 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94951 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="194";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Katherine" AND plname="Stewart";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94947, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94947, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94947, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94947 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94947 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="194";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Katherine" AND plname="Stewart";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94948, 'fall19', cid, 'LEC', '91', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94948, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94948, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94948 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94948 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="194";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Katherine" AND plname="Stewart";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94949, 'fall19', cid, 'LEC', '92', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94949, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94949, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94949 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94949 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WAE" AND crs="194";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Katherine" AND plname="Stewart";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95000, 'fall19', cid, 'LEC', '93', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95000, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95000, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95000 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95000 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="WRT";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A114";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Timothy" AND plname="Fletcher";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94944, 'fall19', cid, 'LEC', '90', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94944, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94944, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 94944 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94944 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Gary" AND plname="Sasala";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94945, 'fall19', cid, 'LEC', '91', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94945, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94945, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94945 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94945 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Gary" AND plname="Sasala";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94946, 'fall19', cid, 'LEC', '92', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94946, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94946, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94946 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94946 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Gary" AND plname="Sasala";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95024, 'fall19', cid, 'LEC', '93', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95024, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95024, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95024 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95024 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A114";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Timothy" AND plname="Fletcher";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95079, 'fall19', cid, 'LEC', '94', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95079, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95079, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95079 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95079 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A117";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Gary" AND plname="Sasala";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95783, 'fall19', cid, 'LEC', '95', 3, '15:30:00', '16:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95783, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95783, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95783 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95783 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Grevett";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95858, 'fall19', cid, 'LEC', '90', 3, '09:00:00', '10:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95858, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95858, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95858 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95858 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Leanne" AND plname="Patterson-Shin";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94940, 'fall19', cid, 'LEC', '91', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94940, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94940, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94940 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94940 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Grevett";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94941, 'fall19', cid, 'LEC', '92', 3, '10:30:00', '11:50:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94941, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94941, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94941 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94941 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Leanne" AND plname="Patterson-Shin";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95069, 'fall19', cid, 'LEC', '93', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95069, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95069, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95069 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95069 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="WRT" AND crs="102";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A116";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Alexander" AND plname="Grevett";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94942, 'fall19', cid, 'LEC', '94', 3, '14:00:00', '15:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94942, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94942, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94942 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94942 FROM profInfo;


CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="CAR";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CAR" AND crs="210";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="A312";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95793, 'fall19', cid, 'LEC', '90', 1, '11:00:00', '11:53:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95793, 4); -- W

INSERT INTO Offers(did, classid) SELECT did, 95793 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95793 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94870, 'fall19', cid, 'LEC', '90', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94870, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94870, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94870 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94870 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94905, 'fall19', cid, 'LEC', '91', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94905, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94905, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94905 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94905 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94906, 'fall19', cid, 'LEC', '92', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94906, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94906, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94906 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94906 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 94907, 'fall19', cid, 'LEC', '93', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (94907, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94907, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 94907 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 94907 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95905, 'fall19', cid, 'LEC', '94', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95905, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95905, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95905 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95905 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95906, 'fall19', cid, 'LEC', '95', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95906, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95906, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95906 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95906 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95907, 'fall19', cid, 'LEC', '96', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95907, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95907, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95907 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95907 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95908, 'fall19', cid, 'LEC', '97', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95908, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95908, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95908 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95908 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95909, 'fall19', cid, 'LEC', '98', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95909, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95909, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95909 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95909 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95910, 'fall19', cid, 'LEC', '99', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95910, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95910, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95910 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95910 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95911, 'fall19', cid, 'LEC', '100', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95911, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95911, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95911 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95911 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95912, 'fall19', cid, 'LEC', '101', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95912, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95912, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95912 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95912 FROM profInfo;


CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="EST" AND crs="104";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Sunghyun" AND plname="Lee";

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95913, 'fall19', cid, 'LEC', '102', NULL, '19:00:00', '20:20:00', NULL, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95913, 3); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95913, 5); -- TH

INSERT INTO Offers(did, classid) SELECT did, 95913 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95913 FROM profInfo;










