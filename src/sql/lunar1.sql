/* HanBin Baik hanbin.baik@stonybrook.edu */

DROP DATABASE IF EXISTS lunar;

CREATE DATABASE lunar;
/* Grant privileges here */

USE lunar;

/* entities */

CREATE TABLE Professors(
	pid	INTEGER NOT NULL,
	pfname	VARCHAR(255) NOT NULL,
	plname	VARCHAR(255) NOT NULL,
	-- need relationships with courses
	-- in the future, maybe implement office and office hours
	PRIMARY KEY (pid)
);

CREATE TABLE Rooms(
	rmid	INTEGER NOT NULL,
	rnumber	VARCHAR(10),	-- room number
	bname	VARCHAR(255),	-- building name
	PRIMARY KEY (rmid)
);

CREATE TABLE Courses (
	cid	INTEGER NOT NULL, -- course id
	semester VARCHAR(9) NOT NULL,
	subject	VARCHAR(3) NOT NULL,
	crs	INTEGER NOT NULL,
	title	VARCHAR(255) NOT NULL,
	cmp	VARCHAR(3) NOT NULL,
	section	VARCHAR(4),
	credits	INTEGER,
	days	VARCHAR(4),
	sthr	INTEGER, -- start hour
	stmin	INTEGER, -- start minute
	enhr	INTEGER, -- end hour
	enmin	INTEGER, -- end minute
	rmid	INTEGER, -- room id
	profid	INTEGER, -- professor id
	cap	INTEGER, -- capacity
	-- need relationships with requisites
	-- need relationships with students
	PRIMARY KEY (cid),
	FOREIGN KEY (profid) REFERENCES Professors(pid)
		ON DELETE SET NULL,
	FOREIGN KEY (rmid) REFERENCES Rooms(rmid)
		ON DELETE SET NULL
);

CREATE TABLE Students(
	sid	INTEGER NOT NULL, -- studentid
	sfname	VARCHAR(255) NOT NULL,
	slname	VARCHAR(255) NOT NULL,
	credits	INTEGER,
	type	VARCHAR(9) NOT NULL,
	PRIMARY KEY (sid)
);

CREATE TABLE Departments(
	did	INTEGER NOT NULL,
	name	VARCHAR(50) NOT NULL,
	-- has offers course relationships
	-- students majors and minors in dept
	-- professors works in a dept
	-- dept requires courses or credits
	PRIMARY KEY (did)
);

CREATE TABLE Record(
	rid	INTEGER NOT NULL,
	semester VARCHAR(9) NOT NULL,
	sid	INTEGER NOT NULL,
	climit	INTEGER NOT NULL, -- credit limit
	gpa	DOUBLE,
	PRIMARY KEY(rid),
	FOREIGN KEY(sid) REFERENCES Students(sid)
		ON DELETE CASCADE
);

CREATE TABLE SBCReq(
	sbcid	INTEGER NOT NULL,
	name	VARCHAR(10) NOT NULL,
	PRIMARY KEY (sbcid)
);

/* Relations */
CREATE TABLE Fullfils(
	cid	INTEGER NOT NULL,
	sbcid	INTEGER NOT NULL,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	FOREIGN KEY (sbcid) REFERENCES SBCReq(sbcid)
		ON DELETE CASCADE,
	PRIMARY KEY (cid, sbcid)
); 

CREATE TABLE Teaches(
	pid	INTEGER NOT NULL,
	cid	INTEGER NOT NULL,
	FOREIGN KEY (pid) REFERENCES Professors(pid)
		ON DELETE CASCADE,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	PRIMARY KEY (pid, cid)
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
	cid	INTEGER NOT NULL,
	grade	VARCHAR(3),
	FOREIGN KEY (rid) REFERENCES Record(rid)
		ON DELETE CASCADE,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	PRIMARY KEY (rid, cid)
);

CREATE TABLE Offers(
	did	INTEGER NOT NULL,
	cid	INTEGER NOT NULL,
	FOREIGN KEY (did) REFERENCES Departments(did)
		ON DELETE CASCADE,
	FOREIGN KEY (cid) REFERENCES Courses(cid)
		ON DELETE CASCADE,
	PRIMARY KEY (did, cid)
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

#AMS
INSERT INTO Professors (pid, pfname, plname) VALUES (1, "Suil", "O");
INSERT INTO Professors (pid, pfname, plname) VALUES (2, "Tan", "Cao");
INSERT INTO Professors (pid, pfname, plname) VALUES (3, "Myoungshic", "Jhun");
INSERT INTO Professors (pid, pfname, plname) VALUES (4, "Changsoon", "Park");
INSERT INTO Professors (pid, pfname, plname) VALUES (5, "Ky", "Tran");

#BUS
INSERT INTO Professors (pid, pfname, plname) VALUES (6, "Jaeyeong", "Lee");
INSERT INTO Professors (pid, pfname, plname) VALUES (7, "Abroon", "Qazi");
INSERT INTO Professors (pid, pfname, plname) VALUES (8, "Chih-mao", "Hsieh");
INSERT INTO Professors (pid, pfname, plname) VALUES (9, "Sungjoon", "Nam");
INSERT INTO Professors (pid, pfname, plname) VALUES (10, "Kyungkyu", "Kim");

#CSE
INSERT INTO Professors (pid, pfname, plname) VALUES (11, "Pravin", "Pawar");
INSERT INTO Professors (pid, pfname, plname) VALUES (12, "Antonino", "Mione");
INSERT INTO Professors (pid, pfname, plname) VALUES (13, "YoungMin", "Kwon");
INSERT INTO Professors (pid, pfname, plname) VALUES (14, "Chi Him", "Wong");
INSERT INTO Professors (pid, pfname, plname) VALUES (15, "Arthur", "Lee");
INSERT INTO Professors (pid, pfname, plname) VALUES (16, "Amos", "Omondi");
INSERT INTO Professors (pid, pfname, plname) VALUES (17, "Jihoon", "Ryoo");
INSERT INTO Professors (pid, pfname, plname) VALUES (18, "SeungSoo", "Park");

#???????? BUS Kyungkyu Kim & TSM Kyungkyu Kim??? 

#TS
INSERT INTO Professors (pid, pfname, plname) VALUES (19, "Joseph", "Cabuay");
INSERT INTO Professors (pid, pfname, plname) VALUES (20, "Anthony", "Pennings");
INSERT INTO Professors (pid, pfname, plname) VALUES (21, "James", "Larson");
INSERT INTO Professors (pid, pfname, plname) VALUES (22, "Chang", "Shin");
INSERT INTO Professors (pid, pfname, plname) VALUES (23, "Micah", "Modell");
INSERT INTO Professors (pid, pfname, plname) VALUES (24, "Jang", "Lee");
INSERT INTO Professors (pid, pfname, plname) VALUES (25, "Suzana", "Brown");
INSERT INTO Professors (pid, pfname, plname) VALUES (26, "Mark", "Whitaker");
INSERT INTO Professors (pid, pfname, plname) VALUES (27, "Jin-sang", "Lee");
INSERT INTO Professors (pid, pfname, plname) VALUES (28, "Soogil", "Young");
INSERT INTO Professors (pid, pfname, plname) VALUES (29, "Johng-Ihl", "Lee");
INSERT INTO Professors (pid, pfname, plname) VALUES (30, "Gerald", "Stokes");

#MEC
INSERT INTO Professors (pid, pfname, plname) VALUES (31, "Eugene", "Pak");
INSERT INTO Professors (pid, pfname, plname) VALUES (32, "Mahdi", "Mohebbi");
INSERT INTO Professors (pid, pfname, plname) VALUES (33, "Si Won", "Hwang");
INSERT INTO Professors (pid, pfname, plname) VALUES (34, "GunWoong", "Bahng");
INSERT INTO Professors (pid, pfname, plname) VALUES (35, "Changwoon", "Han");
INSERT INTO Professors (pid, pfname, plname) VALUES (36, "Min Yang", "Yang");
INSERT INTO Professors (pid, pfname, plname) VALUES (37, "Hamid", "Hefazi");

#---------------------------------------------------------------------------------------
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (1, “A114”, “Academic A”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (2, “A116”, “Academic A”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (3, “A117”, “Academic A”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (4, “A312”, “Academic A”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (5, “B103”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (6, “B104”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (7, “B105”, “Academic B”);

####### INSERT INTO Rooms (rmid, rnumber, bname) VALUES (12, “B1093???????”, “Academic B”);
####### 이거 95813 MEC 226 Modern Machining Practices LAB L90 1 F 9:00 AM 10:20 AM B1093 Si Won Hwang인데 B103인듯요. 맞겠지

INSERT INTO Rooms (rmid, rnumber, bname) VALUES (8, “B203”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (9, “B204”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (10, “B205”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (11, “B206”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (12, “B207”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (13, “B313”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (14, “B314”, “Academic B”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (15, “C103”, “Academic C”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (16, “C105”, “Academic C”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (17, “C107”, “Academic C”);
INSERT INTO Rooms (rmid, rnumber, bname) VALUES (18, “C303”, “Academic C”);
#--------------------------------------------------------------------------------------------------------
INSERT INTO Students (sid, sfname, slname, credits, type) VALUES (1, “Hanna”, “Jung”, 107, “undergraduate”); 
INSERT INTO Students (sid, sfname, slname, credits, type) VALUES (2, “Hyejun”, “Jeong”, 108, “undergraduate”);
INSERT INTO Students (sid, sfname, slname, credits, type) VALUES (3, “Hanbin”, “Baek”, 109, “undergraduate”);
#----------------------------------------------------------------------------------------------------------
INSERT INTO Departments (did, name) VALUES (1, “AMS”);
INSERT INTO Departments (did, name) VALUES (2, “BUS”);
INSERT INTO Departments (did, name) VALUES (3, “CSE”);
INSERT INTO Departments (did, name) VALUES (4, “TS”);
INSERT INTO Departments (did, name) VALUES (5, “MEC”);

