-- What SBC a course fullfils

-- SBCInfo for fast query
CREATE OR REPLACE VIEW ARTS AS SELECT sbcid FROM SBCReq WHERE name="ARTS";
CREATE OR REPLACE VIEW GLO AS SELECT sbcid FROM SBCReq WHERE name="GLO";
CREATE OR REPLACE VIEW HUM AS SELECT sbcid FROM SBCReq WHERE name="HUM";
CREATE OR REPLACE VIEW LANG AS SELECT sbcid FROM SBCReq WHERE name="LANG";
CREATE OR REPLACE VIEW QPS AS SELECT sbcid FROM SBCReq WHERE name="QPS";
CREATE OR REPLACE VIEW SBS AS SELECT sbcid FROM SBCReq WHERE name="SBS";
CREATE OR REPLACE VIEW SNW AS SELECT sbcid FROM SBCReq WHERE name="SNW";
CREATE OR REPLACE VIEW TECH AS SELECT sbcid FROM SBCReq WHERE name="TECH";
CREATE OR REPLACE VIEW USA AS SELECT sbcid FROM SBCReq WHERE name="USA";
CREATE OR REPLACE VIEW WRT AS SELECT sbcid FROM SBCReq WHERE name="WRT";
CREATE OR REPLACE VIEW STAS AS SELECT sbcid FROM SBCReq WHERE name="STAS";
CREATE OR REPLACE VIEW EXPP AS SELECT sbcid FROM SBCReq WHERE name="EXP+";
CREATE OR REPLACE VIEW HFAP AS SELECT sbcid FROM SBCReq WHERE name="HFA+";
CREATE OR REPLACE VIEW SBSP AS SELECT sbcid FROM SBCReq WHERE name="SBS+";
CREATE OR REPLACE VIEW STEMP AS SELECT sbcid FROM SBCReq WHERE name="STEM+";
CREATE OR REPLACE VIEW CER AS SELECT sbcid FROM SBCReq WHERE name="CER";
CREATE OR REPLACE VIEW DIVI AS SELECT sbcid FROM SBCReq WHERE name="DIV";
CREATE OR REPLACE VIEW ESI AS SELECT sbcid FROM SBCReq WHERE name="ESI";
CREATE OR REPLACE VIEW SPK AS SELECT sbcid FROM SBCReq WHERE name="SPK";
CREATE OR REPLACE VIEW WRTD AS SELECT sbcid FROM SBCReq WHERE name="WRTD";

-- AMS SBC fullfill
INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, QPS 
	WHERE (subject="AMS" AND (crs=102 || crs=151 || crs=161))
	   OR (subject="MAT" AND (crs=122 || crs=123 || crs=125 || crs=126 || crs=127 ||
				crs=131 || crs=132 || crs=141 || crs=142 || crs=171))
	   OR (subject="EST" AND crs=194);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, STEMP 
	WHERE (subject="AMS" AND (crs=210 || crs=216 || crs=301 || crs=310 || crs=361))
	   OR (subject="MAT" AND (crs=200 || crs=211))
	   OR (subject="BUS" AND crs=220)
	   OR (subject="CSE" AND (crs=305 || crs=306 || crs=308 || crs=316))
	   OR (subject="EST" AND (crs=440 || crs=441))
	   OR (subject="MEC" AND (crs=440 || crs=441))
	   OR (subject="ATM" AND crs=205)
	   OR (subject="AST" AND (crs=203 || crs=205))
	   OR (subject="BIO" AND (crs=202 || crs=203))
	   OR (subject="CHE" AND (crs=321 || crs=331))
	   OR (subject="PHY" AND crs=251);
	
	
INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, SPK
	WHERE (subject="AMS" AND (crs=300 || crs=475 || crs=476))
	   OR (subject="BUS" AND crs=301)
	   OR (subject="CSE" AND crs=300)
	   OR (subject="EST" AND (crs=440 || crs=441))
	   OR (subject="MEC" AND (crs=440 || crs=441));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, WRTD 
	WHERE (subject="AMS" AND (crs=300 || crs=487))
	   OR (subject="BUS" AND crs=301)
	   OR (subject="CSE" AND crs=300)
	   OR (subject="EST" AND (crs=440 || crs=441))
	   OR (subject="MEC" AND (crs=440 || crs=441));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, CER
	WHERE (subject="AMS" AND (crs=315 || crs=394 || crs=412))
	   OR (subject="CSE" AND crs=312)
	   OR (subject="EST" AND (crs=440 || crs=441))
	   OR (subject="MEC" AND (crs=440 || crs=441))
	   OR (subject="PSY" AND crs=103);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, ESI
	WHERE (subject="AMS" AND (crs=315 || crs=394 || crs=412))
	   OR (subject="BUS" AND (crs=358 || crs=365))
	   OR (subject="CSE" AND (crs=305 || crs=306 || crs=308 || crs=312 || crs=316))
	   OR (subject="EST" AND (crs=440 || crs=441))
	   OR (subject="MEC" AND (crs=440 || crs=441));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, EXPP
	WHERE (subject="AMS" AND (crs=394 || crs=412 || crs=475 || crs=476 || crs=487))
	   OR (subject="BUS" AND (crs=449 || crs=475 || crs=488))
	   OR (subject="CSE" AND (crs=305 || crs=306 || crs=308 || crs=316 || crs=475))
	   OR (subject="EST" AND (crs=364 || crs=440 || crs=441 || crs=488 || crs=499))
	   OR (subject="MEC" AND (crs=440 || crs=441));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, TECH 
	WHERE (subject="BUS" AND crs=340)
	   OR (subject="CSE" AND (crs=101 || crs=102 || crs=114))
	   OR (subject="EST" AND (crs=202 || crs=204 || crs=205 || crs=207 || crs=208 ||
				  crs=230 || crs=240 || crs=310))
	   OR (subject="MEC" AND (crs=316 || crs=317));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, SBSP 
	WHERE (subject="CSE" AND (crs=305 || crs=306 || crs=308 || crs=316))
	   OR (subject="EST" AND (crs=440 || crs=441))
	   OR (subject="MEC" AND (crs=440 || crs=441))
	   OR (subject="ECO" AND (crs=303 || crs=305 || crs=355))
	   OR (subject="SUS" AND crs=206);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, STAS 
	WHERE (subject="CSE" AND crs=312)
	   OR (subject="EST" AND (crs=200 || crs=320 || crs=330 || crs=331 || crs=391))
	   OR (subject="GEO" AND (crs=304 || crs=311));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, SNW 
	WHERE (subject="EST" AND crs=102)
	   OR (subject="ATM" AND crs=102)
	   OR (subject="BIO" AND crs=201)
	   OR (subject="CHE" AND (crs=131 || crs=132 || crs=152))
	   OR (subject="ENS" AND crs=101)
	   OR (subject="GEO" AND (crs=101 || crs=102 || crs=103))
	   OR (subject="MAR" AND (crs=104))
	   OR (subject="PHY" AND (crs=125 || crs=126 || crs=127 || crs=131 || crs=132));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, SBS 
	WHERE (subject="EST" AND crs=392)
	   OR (subject="ECO" AND crs=108)
	   OR (subject="POL" AND (crs=101 || crs=102))
	   OR (subject="SOC" AND crs=105)
	   OR (subject="PSY" AND crs=103);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, LANG 
	WHERE (subject="CHI" AND (crs=111 || crs=112))
	   OR (subject="KOR" AND (crs=111 || crs=112 || crs=220));

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, GLO 
	WHERE (subject="KOR" AND crs=220)
	   OR (subject="POL" AND crs=101);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, HUM 
	WHERE (subject="KOR" AND crs=220);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, ARTS
	WHERE (subject="MUS" AND crs=105);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, USA 
	WHERE (subject="POL" AND crs=102);

INSERT INTO Fulfills(cid, sbcid) SELECT cid, sbcid FROM Courses, WRT 
	WHERE subject="WRT" AND (crs=101 || crs=102);

DROP VIEW ARTS, GLO, HUM, LANG, QPS, SBS, SNW, TECH, USA, WRT, STAS,
	EXPP, HFAP, SBSP, STEMP, CER, DIVI, ESI, SPK, WRTD;
