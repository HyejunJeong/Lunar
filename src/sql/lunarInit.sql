/* HanBin Baik hanbin.baik@stonybrook.edu */

DROP DATABASE IF EXISTS lunar;

CREATE DATABASE lunar;
/* Grant privileges here */

USE lunar;

/* entities */

CREATE TABLE Professors(
	pid	INTEGER NOT NULL AUTO_INCREMENT,
	pfname	VARCHAR(255) NOT NULL,
	plname	VARCHAR(255) NOT NULL,
	-- need relationships with courses
	-- in the future, maybe implement office and office hours
	PRIMARY KEY (pid)
);

CREATE TABLE Rooms(
	rmid	INTEGER NOT NULL AUTO_INCREMENT,
	rnumber	VARCHAR(10),	-- room number
	PRIMARY KEY (rmid)
);

CREATE TABLE Courses(
	cid	INTEGER NOT NULL AUTO_INCREMENT,
	subject	VARCHAR(3) NOT NULL,
	crs	INTEGER NOT NULL,
	title	VARCHAR(255) NOT NULL,
	PRIMARY KEY (cid)
);

CREATE TABLE Timeslot(
	slotid	INTEGER NOT NULL,
	stime	TIME NOT NULL, -- start hour
	etime	TIME NOT NULL, -- end hour
	PRIMARY KEY(slotid)
);

CREATE TABLE Classes (
	classid	INTEGER NOT NULL, -- class id
	semester VARCHAR(9) NOT NULL, -- format: Fall19 Spring19
	cid	INTEGER NOT NULL, -- course id
	cmp	VARCHAR(3) NOT NULL,
	section	VARCHAR(4),
	credits	INTEGER,
	rmid	INTEGER, -- room id
	pid	INTEGER, -- professor id
	cap	INTEGER, -- capacity
	-- need relationships with requisites
	-- need relationships with students
	PRIMARY KEY (classid),
	FOREIGN KEY (pid) REFERENCES Professors(pid)
		ON DELETE SET NULL,
	FOREIGN KEY (rmid) REFERENCES Rooms(rmid)
		ON DELETE SET NULL,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE
);

CREATE TABLE Students(
	sid	INTEGER NOT NULL AUTO_INCREMENT, -- studentid
	sfname	VARCHAR(255) NOT NULL,
	slname	VARCHAR(255) NOT NULL,
	type	VARCHAR(2) NOT NULL, -- G(Graduate) and UG(Undergraduate)
	PRIMARY KEY (sid)
);

CREATE TABLE Departments(
	did	INTEGER NOT NULL AUTO_INCREMENT,
	name	VARCHAR(50) NOT NULL,
	dcode	VARCHAR(3) NOT NULL, -- short code i.e. CSE
	-- has offers course relationships
	-- students majors and minors in dept
	-- professors works in a dept
	-- dept requires courses or credits
	PRIMARY KEY (did)
);

CREATE TABLE Record(
	rid	INTEGER NOT NULL AUTO_INCREMENT,
	semester VARCHAR(9) NOT NULL,
	climit	INTEGER DEFAULT 17, -- credit limit
	gpa	DOUBLE,
	PRIMARY KEY(rid)
);

CREATE TABLE Reqs(
	reqid	INTEGER NOT NULL AUTO_INCREMENT,
	reqname	VARCHAR(255),
	rcode	VARCHAR(20), -- short code of the name
       	-- 0: require all in requires
	-- 1: require only certain number of courses
	-- 2: require only certain credits of courses
	rtype	INTEGER NOT NULL,
	numreq	INTEGER,
	crdreq	INTEGER, -- if not 2, assume to be the minimum req
	PRIMARY KEY(reqid)
);

CREATE TABLE SBCReq(
	sbcid	INTEGER NOT NULL AUTO_INCREMENT,
	name	VARCHAR(10) NOT NULL,
	PRIMARY KEY (sbcid)
);

/* Relations */
CREATE TABLE Fulfills(
	cid	INTEGER NOT NULL,
	sbcid	INTEGER NOT NULL,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	FOREIGN KEY (sbcid) REFERENCES SBCReq(sbcid)
		ON DELETE CASCADE,
	PRIMARY KEY (cid, sbcid)
); 

CREATE TABLE HasPreReq(
	cid	INTEGER NOT NULL,
	precid	INTEGER NOT NULL,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	FOREIGN KEY (precid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	PRIMARY KEY (cid, precid)
);

CREATE TABLE HasCoReq(
	cid1	INTEGER NOT NULL,
	cid2	INTEGER NOT NULL,
	FOREIGN KEY (cid1) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	FOREIGN KEY (cid2) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	PRIMARY KEY (cid1, cid2)
);

-- Class is offered on which day of week
CREATE TABLE ClassOfferedOn(
	classid	INTEGER NOT NULL,
	slotid	INTEGER NOT NULL,
	PRIMARY KEY(classid, slotid),
	FOREIGN KEY(classid) REFERENCES Classes(classid)
		ON DELETE CASCADE,
	FOREIGN KEY(slotid) REFERENCES Timeslot(slotid)
		ON DELETE CASCADE
);

CREATE TABLE Teaches(
	pid	INTEGER NOT NULL,
	classid	INTEGER NOT NULL,
	FOREIGN KEY (pid) REFERENCES Professors(pid)
		ON DELETE CASCADE,
	FOREIGN KEY (classid) REFERENCES Classes(classid)
		ON DELETE CASCADE,
	PRIMARY KEY (pid, classid)
);

CREATE TABLE Takes(
	sid	INTEGER NOT NULL,
	rid	INTEGER NOT NULL,
	FOREIGN KEY (sid) REFERENCES Students(sid)
		ON DELETE CASCADE,
	FOREIGN KEY (rid) REFERENCES Record(rid)
		ON DELETE CASCADE,
	PRIMARY KEY (sid, rid)
);

CREATE TABLE Contains(
	rid	INTEGER NOT NULL,
	classid	INTEGER NOT NULL,
	grade	VARCHAR(3),
	FOREIGN KEY (rid) REFERENCES Record(rid)
		ON DELETE CASCADE,
	FOREIGN KEY (classid) REFERENCES Classes(classid)
		ON DELETE CASCADE,
	PRIMARY KEY (rid, classid)
);

CREATE TABLE Offers(
	did	INTEGER NOT NULL,
	classid	INTEGER NOT NULL,
	FOREIGN KEY (did) REFERENCES Departments(did)
		ON DELETE CASCADE,
	FOREIGN KEY (classid) REFERENCES Classes(classid)
		ON DELETE CASCADE,
	PRIMARY KEY (did, classid)
);

CREATE TABLE MajorsIn(
	sid	INTEGER NOT NULL,
	did	INTEGER NOT NULL,
	FOREIGN KEY (sid) REFERENCES Students(sid)
		ON DELETE CASCADE,
	FOREIGN KEY (did) REFERENCES Departments(did)
		ON DELETE CASCADE,
	PRIMARY KEY (sid, did)
);

CREATE TABLE MinorsIn(
	sid	INTEGER NOT NULL,
	did	INTEGER NOT NULL,
	FOREIGN KEY (sid) REFERENCES Students(sid)
		ON DELETE CASCADE,
	FOREIGN KEY (did) REFERENCES Departments(did)
		ON DELETE CASCADE,
	PRIMARY KEY (sid, did)
);

CREATE TABLE WorksIn(
	pid	INTEGER NOT NULL,
	did	INTEGER NOT NULL,
	FOREIGN KEY (pid) REFERENCES Professors(pid)
		ON DELETE CASCADE,
	FOREIGN KEY (did) REFERENCES Departments(did)
		ON DELETE CASCADE,
	PRIMARY KEY (pid, did)
);

CREATE TABLE deptReq(
	did	INTEGER NOT NULL,
	reqid	INTEGER NOT NULL,
	-- 0: SBC Req
	-- 1: Major Req
	-- 2: Minor Req
	rtype	INTEGER NOT NULL,
	FOREIGN KEY (did) REFERENCES Departments(did)
		ON DELETE CASCADE,
	FOREIGN KEY (reqid) REFERENCES Reqs(reqid)
		ON DELETE CASCADE,
	PRIMARY KEY (did, reqid, rtype)
);

CREATE TABLE requireReq(
	reqid	INTEGER NOT NULL,
	subrid	INTEGER NOT NULL,
	FOREIGN KEY (reqid) REFERENCES Reqs(reqid)
		ON DELETE CASCADE,
	FOREIGN KEY (subrid) REFERENCES Reqs(reqid)
		ON DELETE CASCADE,
	PRIMARY KEY (reqid, subrid)
);

CREATE TABLE requireCourse(
	reqid	INTEGER NOT NULL,
	cid	INTEGER NOT NULL,
	FOREIGN KEY (reqid) REFERENCES Reqs(reqid)
		ON DELETE CASCADE,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	PRIMARY KEY (reqid, cid)
);

CREATE TABLE requireSBC(
	reqid	INTEGER NOT NULL,
	sbcid	INTEGER NOT NULL,
	FOREIGN KEY (reqid) REFERENCES Reqs(reqid)
		ON DELETE CASCADE,
	FOREIGN KEY (sbcid) REFERENCES SBCReq(sbcid)
		ON DELETE CASCADE,
	PRIMARY KEY (reqid, sbcid)
);

-- User Management
CREATE TABLE AdminAccounts(
	aid	INTEGER NOT NULL AUTO_INCREMENT,
	pswd	VARCHAR(10),
	PRIMARY KEY(aid)
);

CREATE TABLE StudentAccounts(
	sid	INTEGER NOT NULL,
	pswd	VARCHAR(10),
	PRIMARY KEY(sid),

	FOREIGN KEY (sid) REFERENCES Students(sid)
		ON DELETE CASCADE
);


-- SBC setup
INSERT INTO SBCReq(name) VALUES ("ARTS"),("GLO"),("HUM"),("LANG"),
	("QPS"),("SBS"),("SNW"),("TECH"),("USA"),("WRT"),("STAS"),
	("EXP+"),("HFA+"),("SBS+"),("STEM+"),("CER"),("DIV"),
	("ESI"),("SPK"),("WRTD");
	
-- Dept setup
INSERT INTO Departments(name, dcode) VALUES ("Applied Mathematics & Statistics", "AMS"),
	("Business", "BUS"),("Computer Science", "CSE"),("Technological Systems Management", "TSM"),
	("Mechanical Engineering", "MEC"),("Accounting", "ACC"),("Engineering Management", "EMP"),
	("Atmospheric Sciences", "ATM"),("Economics", "ECO"),("Engineering Science", "ESG"),
	("Biology", "BIO"),("History", "HIS"),("Korean", "KOR"),("Mathematics", "MAT"),
	("Music", "MUS"),("Oral Academic English", "OAE"),("Physics", "PHY"),
	("Political Science", "POL"),("Writing Academic English", "WAE"),("Writing", "WRT"), 
	("Chinese", "CHI");
