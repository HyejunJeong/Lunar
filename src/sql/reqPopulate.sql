-- Assumes already using the lunar database
-- CS Major Req


-- Dept setup
INSERT INTO Departments(name, dcode) VALUES ("Computer Science", "CSE");

-- COURSE INSERT EXAMPLE
INSERT INTO Courses(subject, crs, title) VALUES ("CSE", "101", "Introduction to Computers");
INSERT INTO Courses(subject, crs, title) VALUES ("CSE", "114", "Intro to Object-Oriented Prog");
INSERT INTO Rooms(rnumber, bname) VALUES ("B103", "Academic B");
INSERT INTO Professors(pfname, plname) VALUES ("Pravin", "Pawar");

CREATE OR REPLACE VIEW deptInfo AS SELECT did FROM Departments WHERE dcode="CSE";
CREATE OR REPLACE VIEW courseInfo AS SELECT cid FROM Courses WHERE subject="CSE" AND crs="101";
CREATE OR REPLACE VIEW roomInfo AS SELECT rmid FROM Rooms WHERE rnumber="B103";
CREATE OR REPLACE VIEW profInfo AS SELECT pid FROM Professors WHERE pfname="Pravin" AND plname="Pawar";
INSERT INTO WorksIn(pid, did) SELECT pid, did FROM deptInfo, profInfo;

INSERT INTO Classes(classid, semester, cid, cmp, section, credits, stime, etime, rmid, profid, cap) 
	SELECT 95061, 'fall19', cid, 'LEC', 91, NULL, '17:00:00', '18:20:00', rmid, pid, 20 -- if Professor is TBA put NULL
	FROM courseInfo, roomInfo, profInfo;

INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 3); -- TUESDAY
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 5); -- THURSDAY

INSERT INTO Offers(did, classid) SELECT did, 95061 FROM deptInfo;
INSERT INTO Teaches(pid, classid) SELECT pid, 95061 FROM profInfo;


-- SBC Reqs for BS
INSERT INTO Reqs(reqname, rcode, rtype, numreq, crdreq) VALUES ("Stony Brook Curriculum Requirements CEAS", "SBCCEAS", 0, NULL, 29);
CREATE OR REPLACE VIEW reqInfo AS SELECT reqid FROM Reqs WHERE rcode="SBCCEAS";

--INSERT INTO requireSBC(reqid, sbcid) VALUES (1, 0);
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "ARTS";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "GLO";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "HUM";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "QPS";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "SBS";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "SNW";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "TECH";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "USA";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "WRT";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "STAS";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "CER";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "ESI";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "SPK";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM reqInfo, SBCReq WHERE name = "WRTD";

INSERT INTO Reqs(reqname, rcode, rtype, numreq, crdreq) VALUES ("PURSUE DEEPER UNDERSTANDING: COMPLETE 3 of 4 CATEGORIES", "SBCPDU", 1, 3, NULL);

CREATE OR REPLACE VIEW subReqInfo AS SELECT reqid FROM Reqs WHERE rcode="SBCPDU";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM subReqInfo, SBCReq WHERE name = "EXP+";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM subReqInfo, SBCReq WHERE name = "HFA+";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM subReqInfo, SBCReq WHERE name = "SBS+";
INSERT INTO requireSBC(reqid, sbcid) SELECT reqid, sbcid FROM subReqInfo, SBCReq WHERE name = "STEM+";

-- put req 2 under req 1
INSERT INTO requireReq(reqid, subrid) SELECT reqInfo.reqid AS reqid, subReqInfo.reqid AS subrid FROM reqInfo, subReqInfo;

-- insert into requireSBC(reqid, sbcid) SELECT 0, sbcid from SBCReq where SBCReq.name = "SPK";

-- create or replace view sbcReqs as select reqid from requireReq where reqid=1 union select subrid as reqid from requireReq where reqid=1;

-- select name from SBCReq, requireSBC, sbcReqs where SBCReq.sbcid = requireSBC.sbcid and requireSBC.reqid = sbcReqs.reqid;

-- REQ EXAMPLE
INSERT INTO Reqs(reqname, rcode, rtype, numreq, crdreq) VALUES ("Major in Computer Science (Korea)", "CSMAJKR", 0, NULL, 80);


INSERT INTO requireCourse(reqid, cid) SELECT reqid, cid FROM Reqs, Courses WHERE rcode = "CSMAJKR" AND subject="CSE" AND crs="114";
