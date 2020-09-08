-- Populate Classes fall19

SELECT f_insert_class(95061, 'fall19', "CSE", 101, 'LEC', '91', NULL, "B103", "Pravin", "Pawar", 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 3, '17:00:00', '18:20:00'); -- TUESDAY
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 5,'17:00:00', '18:20:00¡¯); -- THURSDAY

-- AMS
SELECT f_insert_class(94843, 'fall19', 'AMS', 151, 'LEC', '90', 3, 'B105', 'Suil', 'O', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94843, 2, '15:30:00', '16:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94843, 4, '15:30:00', '16:50:00'); -- W

SELECT f_insert_class(94844, 'fall19', 'AMS', 161, 'LEC', '90', 3, 'C105', 'Tan', 'Cao', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94844, 2, '17:00:00', '18:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94844, 4, '17:00:00', '18:20:00'); -- W

SELECT f_insert_class(94845, 'fall19', 'AMS', 210, 'LEC', '90', 3, 'C103', 'Tan', 'Cao', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94845, 2, '17:00:00', '18:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94845, 4, '17:00:00', '18:20:00'); -- W

SELECT f_insert_class(94846, 'fall19', 'AMS', 261, 'LEC', '90', 3, 'B203', 'Kazem',  'Mahdavi', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94846, 2, '15:30:00', '16:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94846, 4, '15:30:00', '16:50:00'); -- W

SELECT f_insert_class(94847, 'fall19', 'AMS', 261, 'REC', 'R90', 3, 'B203', 'Kazem', 'Mahdavi', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94847, 6, '13:30:00', '14:23:00'); -- F

SELECT f_insert_class(94848, 'fall19', 'AMS', 301, 'LEC', '90', 3, 'B105', 'Suil', 'O', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94848, 2, '17:00:00', '18:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94848, 4, '17:00:00', '18:20:00'); -- W

SELECT f_insert_class(94849, 'fall19', 'AMS', 310, 'LEC', '90', 3, 'C103', 'Myoungshic', 'Jhun', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94849, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94849, 4, '10:30:00', '11:50:00'); -- W

SELECT f_insert_class(95784, 'fall19', 'AMS', 317, 'LEC', '90', 3, 'B313', 'Changsoon', 'Park', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95784, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95784, 5, '10:30:00', '11:50:00'); -- TH

SELECT f_insert_class(95842, 'fall19', 'AMS', 318, 'LEC', '90', 3, 'B105', 'Ky', 'Tran', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95842, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95842, 4, '10:30:00', '11:50:00'); -- W

SELECT f_insert_class(95850, 'fall19', 'AMS', 361, 'LEC', '90', 3, 'B313', 'Kazem', 'Mahdavi', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95850, 2, '14:00:00', '15:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95850, 4, '14:00:00', '15:20:00'); -- W

SELECT f_insert_class(95851, 'fall19', 'AMS', 361, 'REC', '90', 3, 'B313', 'Kazem', 'Mahdavi', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95851, 6, '14:30:00', '15:23:00'); -- F

SELECT f_insert_class(95843, 'fall19', 'AMS', 394, 'REC', '90', 3, 'B104', 'Changsoon', 'Park', 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95843, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95843, 5, '14:00:00', '15:20:00'); -- TH

SELECT f_insert_class(94997, 'fall19', 'AMS', 475, 'TUT', 'T90', 3,  NULL, 'Myoungshic', 'Jhun', 20);
SELECT f_insert_class(95007, 'fall19', 'AMS', 475, 'TUT', 'T90', 3,  NULL, 'Myoungshic', 'Jhun', 20);
SELECT f_insert_class(95008, 'fall19', 'AMS', 487, 'TUT', 'T90', 3,  NULL, 'Myoungshic', 'Jhun', 20);
SELECT f_insert_class(95785, 'fall19', 'AMS', 487, 'TUT', 'T90', 3,  NULL, 'Kazem', 'Mahdavi', 20);
SELECT f_insert_class(95786, 'fall19', 'AMS', 487, 'TUT', 'T90', 3,  NULL, 'Tan', 'Cao', 20);


-- CSE
SELECT f_insert_class(94852, 'fall19', ¡®CSE¡¯, 101, 'LEC', '90', 3, ¡®B105¡¯, NULL, NULL, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94852, 3, '17:00:00', '18:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94852, 5, '17:00:00', '18:20:00'); -- TH

SELECT f_insert_class(94853, 'fall19', ¡®CSE¡¯, 101, 'LAB', 'L90', 0, ¡®B105¡¯, NULL, NULL, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94853, 2, '12:30:00', '13:50:00'); -- M


SELECT f_insert_class(95061, 'fall19', ¡®CSE¡¯, 101, 'LEC', '91', 3, ¡®B103¡¯, ¡®Pravin¡¯, ¡®Pawar¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 3, '17:00:00', '18:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95061, 5, '17:00:00', '18:20:00'); -- TH




SELECT f_insert_class(95060, 'fall19', ¡®CSE¡¯, 101, 'LAB', 'L90', 0, ¡®B103¡¯, ¡®Pravin¡¯, ¡®Pawar¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95060, 2, '12:30:00', '13:50:00'); -- M


SELECT f_insert_class(94854, 'fall19', ¡®CSE¡¯, 102, 'LEC', '90', 3, ¡®B203¡¯, NULL, NULL, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94854, 2, '17:00:00', '18:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94854, 4, '17:00:00', '18:20:00'); -- W


SELECT f_insert_class(94855, 'fall19', ¡®CSE¡¯, 114, 'LEC', '90', 4, ¡®B103¡¯, ¡®Antonino¡¯, ¡®Mione¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94855, 2, '14:00:00', '15:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94855, 4, '14:00:00', '15:20:00'); -- W

SELECT f_insert_class(94856, 'fall19', ¡®CSE¡¯, 114, 'LAB', 'L90', 0, ¡®B103¡¯, ¡®Antonino¡¯, ¡®Mione¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94856, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94856, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(95063, 'fall19', ¡®CSE¡¯, 114, 'LEC', '90', 4, ¡®B105¡¯,NULL ,NULL, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95063, 2, '14:00:00', '15:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95063, 4, '14:00:00', '15:20:00'); -- W

SELECT f_insert_class(95062, 'fall19', ¡®CSE¡¯, 114, 'LAB', 'L90', 0, ¡®B103¡¯,NULL , NULL, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95062, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95062, 5, '14:00:00', '15:20:00'); -- TH

SELECT f_insert_class(94857, 'fall19', ¡®CSE¡¯, 214, 'LEC', '90', 3, ¡®B203¡¯, ¡®YoungMin¡¯, ¡®Kwon¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94857, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94857, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(94858, 'fall19', ¡®CSE¡¯, 214, 'REC', 'R90', 0, ¡®B203¡¯, ¡®YoungMin¡¯, ¡®Kwon¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94858, 4, '14:00:00', '14:53:00'); -- W


SELECT f_insert_class(94859, 'fall19', ¡®CSE¡¯, 215, 'LEC', '90', 3, ¡®B207¡¯, ¡®ChiHim¡¯, ¡®Wong¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94859, 3, '12:30:00', '13:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94859, 5, '12:30:00', '13:50:00'); -- TH


SELECT f_insert_class(94860, 'fall19', ¡®CSE¡¯, 215, 'REC', 'R90', 0, ¡®B207¡¯, ¡®ChiHim¡¯, ¡®Wong¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94860, 5, '09:00:00', '09:53:00'); -- TH




SELECT f_insert_class(95798, 'fall19', ¡®CSE¡¯, ¡®216¡¯, 'LEC', '90', 4, ¡®B207¡¯, ¡®Arthur¡¯, ¡®Lee¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95798, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95798, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(95799, 'fall19', ¡®CSE¡¯, 216, 'REC', 'R90', 0, ¡®B207¡¯, ¡®Arthur¡¯, ¡®Lee¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95799, 4, '14:00:00', '14:53:00'); -- W


SELECT f_insert_class(94863, 'fall19', ¡®CSE¡¯, 220, 'LEC', '90', 3, ¡®B204¡¯, ¡®Amos¡¯, ¡®Omondi¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94863, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94863, 5, '10:30:00', '11:50:00'); -- TH

 
SELECT f_insert_class(94864, 'fall19', ¡®CSE¡¯, 220, 'REC', 'R90', 0, ¡®B204¡¯, ¡®Amos¡¯, ¡®Omondi¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94864, 2, '12:30:00', '13:23:00'); -- M


SELECT f_insert_class(94981, 'fall19', ¡®CSE¡¯, 300, 'LEC', '90', 3, ¡®B204¡¯, ¡®Amos¡¯, ¡®Omondi¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94981, 2, '15:30:00', '16:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94981, 4, '15:30:00', '16:50:00'); -- W


SELECT f_insert_class(95064, 'fall19', ¡®CSE¡¯, 303, 'LEC', '90', 3, ¡®B207¡¯, ¡®ChiHim¡¯, ¡®Wong¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95064, 3, '15:30:00', '16:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95064, 5, '15:30:00', '16:50:00'); -- TH


SELECT f_insert_class(94982, 'fall19', ¡®CSE¡¯, 307, 'LEC', '90', 0, ¡®B313¡¯, ¡®Antonino¡¯, ¡®Mione¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94982, 3, '12:30:00', '13:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94982, 5, '12:30:00', '13:50:00'); -- TH


SELECT f_insert_class(95800, 'fall19', ¡®CSE¡¯ ,308, 'LEC', '90', 3, ¡®B206¡¯, ¡®Pravin¡¯, ¡®Pawar¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95800, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95800, 5, '10:30:00', '11:50:00'); -- TH


SELECT f_insert_class(94910, 'fall19', ¡®CSE¡¯, 310, 'LEC', '90', 3, ¡®B103¡¯, ¡®Jihoon¡¯, ¡®Ryoo¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94910, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94910, 4, '10:30:00', '11:50:00'); -- W


SELECT f_insert_class(95801, 'fall19', ¡®CSE¡¯, 316, 'LEC', '90', 3, ¡®B204¡¯, ¡®Antonino¡¯, ¡®Mione¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95801, 3, '17:00:00', '18:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95801, 5, '17:00:00', '18:20:00'); -- TH


SELECT f_insert_class(95055, 'fall19', ¡®CSE¡¯, 320, 'LEC', '90', 3, ¡®A312¡¯, ¡®YoungMin¡¯, ¡®Kwon¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95055, 3, '12:30:00', '13:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95055, 5, '12:30:00', '13:50:00'); -- TH



SELECT f_insert_class(94943, 'fall19', ¡®CSE¡¯, 352, 'LEC', '90', 3, ¡®B207¡¯, ¡®SeungSoo¡¯, ¡®Park¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94943, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94943, 4, '10:30:00', '11:50:00'); -- @


SELECT f_insert_class(95802, 'fall19', ¡®CSE¡¯, 353, 'LEC', '90', 3, ¡®A312¡¯, ¡®Pravin¡¯, ¡®Pawar¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95802, 2, '14:00:00', '15:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95802, 4, '14:00:00', '15:20:00'); -- W



SELECT f_insert_class(94865, 'fall19', ¡®CSE¡¯ , 373, 'LEC', '90', 3, ¡®B205¡¯, ¡®Jihoon¡¯, ¡®Ryoo¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94865, 2, '15:30:00', '16:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94865, 4, '15:30:00', '16:50:00'); -- W

SELECT f_insert_class(94911, 'fall19', ¡®CSE¡¯, 475, 'TUT', 'T90', 3,  NULL, ¡®Arthur¡¯, ¡®Lee¡¯, 20);
	

SELECT f_insert_class(94899, 'fall19', ¡®CSE¡¯, 487, 'TUT', 'T90', 3,  NULL, ¡®Arthur¡¯, ¡®Lee¡¯, 20);
	
-- Assumes already using the lunar database
-- CS Major Req

-- Dept setup

SELECT f_insert_class(95058, 'fall19', ¡®ATM¡¯, 102, 'LEC', '90', 3, ¡®B105¡¯, ¡®SeonKi¡¯, ¡®Park¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95058, 6, '12:30:00', '15:20:00'); -- F


SELECT f_insert_class(94918, 'fall19', ¡®BIO¡¯, 201, 'LEC', '90', 3, ¡®C105¡¯, ¡®John¡¯, ¡®Eimes¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94918, 2, '17:00:00', '19:50:00'); -- M

SELECT f_insert_class(95052, 'fall19', ¡®CHI¡¯, 111, 'LEC', '90', 4, ¡®A312¡¯, ¡®Mengyang¡¯, ¡®Jia¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95052, 2, '17:00:00', '18:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95052, 4, '17:00:00', '18:20:00'); -- W

SELECT f_insert_class(95051, 'fall19', ¡®CHI¡¯, 111, 'REC', 'R90', 0, ¡®A312¡¯, ¡®Mengyang¡¯, ¡®Jia¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95051, 2, '18:30:00', '19:23:00'); -- M


SELECT f_insert_class(95794, 'fall19', ¡®CHI¡¯, 111, 'LEC', '90', 4, ¡®A312¡¯, ¡®Mengyang¡¯, ¡®Jia¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95794, 3, '15:30:00', '16:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95794, 5, '15:30:00', '16:50:00'); -- TH


SELECT f_insert_class(95795, 'fall19', ¡®CHI¡¯, ¡®111¡¯, 'REC', 'R90', 0, ¡®A312¡¯, ¡®Mengyang¡¯, ¡®Jia¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95795, 3, '17:00:00', '17:53:00'); -- T


SELECT f_insert_class(95796, 'fall19', ¡®CHI¡¯, 112, 'LEC', '90', 4, ¡®A312¡¯, ¡®Mengyang¡¯, ¡®Jia¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95796, 2, '09:00:00', '10:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95796, 4, '09:00:00', '10:20:00'); -- W



SELECT f_insert_class(95797, 'fall19', ¡®CHI¡¯, 112, 'REC', 'R90', 0, ¡®A312¡¯, ¡®Mengyang¡¯, ¡®Jia¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95797, 2, '10:30:00', '11:23:00'); -- M



SELECT f_insert_class(94958, 'fall19', ¡®ECO¡¯, 108, 'LEC', '90', 4, ¡®B103¡¯, NULL, NULL, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94958, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94958, 5, '10:30:00', '11:50:00'); -- TH



SELECT f_insert_class(94959, 'fall19', ¡®ECO¡¯, 108, 'REC', 'R90', 0, ¡®B103¡¯, NULL, NULL, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94959, 5, '12:00:00', '12:53:00'); -- TH




SELECT f_insert_class(95045, 'fall19', ¡®ESG¡¯, 281, 'LEC', '90', 3, ¡®B104¡¯, ¡®WoongMoo¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95045, 2, '09:00:00', '10:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95045, 4, '09:00:00', '10:20:00'); -- W




SELECT f_insert_class(95044, 'fall19', ¡®ESG¡¯, 281, 'REC', 'R90', 0, ¡®B104¡¯, ¡®WoongMoo¡¯, ¡®Lee¡¯,  20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95044, 2, '12:30:00', '13:23:00'); -- M


SELECT f_insert_class(95047, 'fall19', ¡®ESG¡¯, 332, 'LEC', '90', 3, ¡®B104¡¯, ¡®Oh-yang¡¯, ¡®Kwon¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95047, 3, '09:00:00', '10:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95047, 5, '09:00:00', '10:20:00'); -- TH


SELECT f_insert_class(95046, 'fall19', ¡®ESG¡¯, 332, 'REC', 'R90', 0, ¡®B104¡¯, ¡®Oh-Yang¡¯, ¡®Kwon¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95046, 3, '12:30:00', '13:23:00'); -- T



SELECT f_insert_class(95971, 'fall19', ¡®HIS¡¯, 103, 'LEC', '90', 3, ¡®C107¡¯, NULL ,NULL, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95971, 3, '15:30:00', '16:23:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95971, 5, '15:30:00', '16:23:00'); -- TH



SELECT f_insert_class(95970, 'fall19', ¡®HIS¡¯, 103, 'REC', 'R90', 0, ¡®C107¡¯, NULL ,NULL, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95970, 5, '12:30:00', '13:23:00'); -- TH


SELECT f_insert_class(95972, 'fall19', ¡®HIS¡¯, 237, 'LEC', '90', 4, '09:00:00', '10:20:00', ¡®C107¡¯,NULL,  NULL, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95972, 2); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95972, 4); -- W



SELECT f_insert_class(94987, 'fall19', ¡®KOR¡¯, 111, 'LEC', '90', 4, ¡®B314¡¯, ¡®Haeran¡¯, ¡®Hur¡¯, 20);	
INSERT INTO ClassOfferedOn(classid, day) VALUES (94987, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94987, 5, '14:00:00', '15:20:00'); -- TH





SELECT f_insert_class(94988, 'fall19', ¡®KOR¡¯, 111, 'REC', 'R90', 0, ¡®B314¡¯, ¡®Haeran¡¯, ¡®Hur¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94988, 3, '17:00:00', '17:53:00'); -- T



SELECT f_insert_class(95811, 'fall19', ¡®KOR¡¯, 112, 'LEC', '90', 4, ¡®B314¡¯, ¡®Haeran¡¯, ¡®Hur¡¯, 20); 
	

INSERT INTO ClassOfferedOn(classid, day) VALUES (95811, 3, '15:30:00', '16:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95811, 5, '15:30:00', '16:50:00'); -- TH



SELECT f_insert_class(95812, 'fall19', ¡®KOR¡¯, 112, 'REC', 'R90', 0, ¡®B314¡¯, ¡®Haeran¡¯, ¡®Hur¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95812, 5, '17:00:00', '17:53:00'); -- TH


SELECT f_insert_class(94971, 'fall19', ¡®KOR¡¯, 220, 'LEC', '90', 4, ¡®C105¡¯, ¡®Koksuk¡¯, ¡®Seo¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94971, 2, '09:00:00', '11:50:00'); -- M

SELECT f_insert_class(95017, 'fall19', ¡®MAT¡¯, 123, 'LEC', '90', 3, NULL, NULL, NULL, 20); 
	


SELECT f_insert_class(95019, 'fall19', ¡®MAT¡¯, 122, 'LEC', '90', 3, ¡®B205¡¯, ¡®Jaeyeong¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95019, 3, '12:30:00', '13:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95019, 5, '12:30:00', '13:50:00'); -- TH


SELECT f_insert_class(95018, 'fall19', ¡®MAT¡¯, 122, 'REC', 'R90', 0, ¡®B205¡¯, ¡®Jaeyeong¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95018, 6, '12:30:00', '13:23:00'); -- F

SELECT f_insert_class(94969, 'fall19', ¡®MAT¡¯, 123, 'LEC', '90', 3, ¡®B103¡¯, ¡®Ky¡¯, ¡®Tran¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94969, 2, '15:30:00', '16:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94969, 4, '15:30:00', '16:50:00'); -- W





SELECT f_insert_class(94970, 'fall19', ¡®MAT¡¯, 123, 'REC', 'R90', 0, ¡®B103¡¯, ¡®Ky¡¯, ¡®Tran¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94970, 6, '12:30:00', '13:23:00'); -- T


SELECT f_insert_class(95856, 'fall19', ¡®MAT¡¯, 200, 'LEC', '90', 3, ¡®B104¡¯, ¡®Kazem¡¯, ¡®Mahdavi¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95856, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95856, 4, '10:30:00', '11:50:00'); -- W



SELECT f_insert_class(95059, 'fall19', ¡®MUS¡¯, 105, 'LEC', '90', 3, ¡®C107¡¯, ¡®Soojin¡¯, ¡®Kim¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95059, 3, '09:30:00', '12:20:00'); -- T






SELECT f_insert_class(94960, 'fall19', ¡®PHY¡¯, 131, 'LEC', '90', 3, ¡®B205¡¯, ¡®Alexander¡¯, ¡®Krejci¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94960, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94960, 5, '10:30:00', '11:50:00'); -- TH

94960 FROM deptInfo;
94960 FROM profInfo;


SELECT f_insert_class(94961, 'fall19', ¡®EST¡¯, 104, 'REC', 'R90', 0, rmid, pid, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94961, 4, '09:30:00', '10:23:00'); -- W


SELECT f_insert_class(94956, 'fall19', ¡®PHY¡¯, 132, 'LEC', '90', 3, ¡®B205¡¯, ¡®Alexander¡¯, ¡®Krejci¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94956, 3, '09:00:00', '10:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94956, 5, '09:00:00', '10:20:00'); -- TH



SELECT f_insert_class(94957, 'fall19', ¡®PHY¡¯, 132, 'REC', 'R90', 0, ¡®B205¡¯, ¡®Alexander¡¯, ¡®Krejci¡¯, 20); 
	

INSERT INTO ClassOfferedOn(classid, day) VALUES (94957, 4, '10:30:00', '11:23:00'); -- W

SELECT f_insert_class(94954, 'fall19', ¡®PHY¡¯, 133, 'LAB', 'L90', 1, ¡®C303¡¯, ¡®Aaron¡¯, ¡®Park¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94954, 6, '10:00:00', '11:50:00'); -- F




SELECT f_insert_class(94955, 'fall19', ¡®PHY¡¯, 133, 'LAB', 'L91', 1, ¡®C303¡¯, ¡®Aaron¡¯, ¡®Park¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94955, 6, '12:30:00', '14:20:00'); -- F



SELECT f_insert_class(94953, 'fall19', ¡®PHY¡¯, 134, 'LAB', 'L91', 1, ¡®C303¡¯, ¡®Aaron¡¯, ¡®Park¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94953, 6, '14:30:00', '16:20:00'); -- F




SELECT f_insert_class(95031, 'fall19', ¡®POL¡¯, 101, 'LEC', '90', 3, ¡®C105¡¯, ¡®JaiKun¡¯, ¡®Yoo¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95031, 4, '09:00:00', '11:50:00'); -- W




SELECT f_insert_class(94952, 'fall19', ¡®POL¡¯, 102, 'LEC', '90', 3, ¡®C103¡¯, ¡®Jung-Min¡¯, ¡®Hong¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94952, 6, '09:00:00', '11:50:00'); -- F



SELECT f_insert_class(95826, 'fall19', ¡®SUS¡¯ , 206, 'LEC', '90', 3, ¡®A114¡¯, ¡®YoungJune¡¯, ¡®Kwon¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95826, 3, '12:30:00', '13:23:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95826, 5, '12:30:00', '13:23:00'); -- TH


CREATE OR REPLACE VIEW courseInfo AS SELECT ¡®EST¡¯, 104 FROM Courses WHERE 


SELECT f_insert_class(95827, 'fall19', ¡®SUS¡¯, 206, 'REC', 'R90', 0, ¡®A114¡¯, ¡®YoungJune¡¯, ¡®Kwon¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (95827, 5, '15:30:00', '16:23:00'); -- TH




SELECT f_insert_class(95828, 'fall19', ¡®WAE¡¯, 190, 'LEC', '90', 3, ¡®A116¡¯, ¡®Hyunju¡¯, ¡®Kim¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95828, 2, '09:00:00', '10:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95828, 4, '09:00:00', '10:20:00'); -- W


SELECT f_insert_class(94950, 'fall19', ¡®WAE¡¯, 192, 'LEC', '91', 3, ¡®A116¡¯, ¡®Kim¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94950, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94950, 4, '10:30:00', '11:50:00'); -- W




SELECT f_insert_class(94951, 'fall19', ¡®WAE¡¯, 192, 'LEC', '92', 3, ¡®A116¡¯, ¡®Hynnju¡¯, ¡®Kim¡¯, 20);
INSERT INTO ClassOfferedOn(classid, day) VALUES (94951, 2, '14:00:00', '15:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94951, 4, '14:00:00', '15:20:00'); -- W


SELECT f_insert_class(94947, 'fall19', ¡®WAE¡¯, 194, 'LEC', '90', 3, ¡®A117¡¯, ¡®Katherine¡¯, ¡®Stewart¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94947, 2, '09:00:00', '10:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94947, 4, '09:00:00', '10:20:00'); -- W



SELECT f_insert_class(94948, 'fall19', ¡®WAE¡¯, 194, 'LEC', '91', 3, ¡®A117¡¯, ¡®Katherine¡¯, ¡®Stewart¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94948, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94948, 4, '10:30:00', '11:50:00'); -- W


SELECT f_insert_class(94949, 'fall19', ¡®WAE¡¯, 194, 'LEC', '92', 3, ¡®A117¡¯, ¡®Katherine¡¯, ¡®Stewart¡¯ , 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94949, 2, '14:00:00', '15:20:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94949, 4, '14:00:00', '15:20:00'); -- W



SELECT f_insert_class(95000, 'fall19', ¡®WAE¡¯, 194, 'LEC', '93', 3, ¡®A117¡¯, ¡®Katherine¡¯, ¡®Stewart¡¯, 20); 

INSERT INTO ClassOfferedOn(classid, day) VALUES (95000, 2, '15:30:00', '16:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (95000, 4, '15:30:00', '16:50:00'); -- W


SELECT f_insert_class(94944, 'fall19', ¡®WRT¡¯, 101, 'LEC', '90', 3, ¡®A114¡¯, ¡®Timothy¡¯, ¡®Fletcher¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94944, 2, '10:30:00', '11:50:00'); -- M
INSERT INTO ClassOfferedOn(classid, day) VALUES (94944, 4, '10:30:00', '11:50:00'); -- W




SELECT f_insert_class(94945, 'fall19', ¡®WRT¡¯, 101, 'LEC', '91', 3, ¡®A117¡¯, ¡®Gary¡¯, ¡®Sasala¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94945, 3, '09:00:00', '10:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94945, 5, '09:00:00', '10:20:00'); -- TH


SELECT f_insert_class(94946, 'fall19', ¡®WRT¡¯, 101, 'LEC', '92', 3, ¡®A117¡¯, ¡®Gary¡¯, ¡®Sasala¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94946, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94946, 5, '10:30:00', '11:50:00'); -- TH

SELECT f_insert_class(95024, 'fall19', ¡®WRT¡¯, 101, 'LEC', '93', 3, ¡®A117¡¯, ¡®Gary¡¯, ¡®Sasala¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95024, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95024, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(95079, 'fall19', ¡®WRT¡¯, 101, 'LEC', '94', 3, ¡®A114¡¯, ¡®Timothy¡¯, ¡®Fletcher¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95079, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95079, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(95783, 'fall19', ¡®WRT¡¯, 101, 'LEC', '95', 3, ¡®A117¡¯, ¡®Gary¡¯, ¡®Sasala¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95783, 3, '15:30:00', '16:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95783, 5, '15:30:00', '16:50:00'); -- TH






SELECT f_insert_class(95858, 'fall19', ¡®WRT¡¯, 102, 'LEC', '90', 3, ¡®A116¡¯, ¡®Alexander¡¯, ¡®Grevett¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95858, 3, '09:00:00', '10:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95858, 5, '09:00:00', '10:20:00'); -- TH


SELECT f_insert_class(94940, 'fall19', ¡®WRT¡¯, 102, 'LEC', '91', 3, ¡®A312¡¯, ¡®Leanne¡¯, ¡®Patterson-Shin¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94940, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94940, 5, '10:30:00', '11:50:00'); -- TH


SELECT f_insert_class(94941, 'fall19', ¡®WRT¡¯, 102, 'LEC', '92', 3, ¡®A116¡¯, ¡®Alexander¡¯, ¡®Grevett¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94941, 3, '10:30:00', '11:50:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94941, 5, '10:30:00', '11:50:00'); -- TH



SELECT f_insert_class(95069, 'fall19', ¡®WRT¡¯, 102, 'LEC', '93', 3, ¡®A312¡¯, ¡®Leanne¡¯, ¡®Patterson-Shin¡¯, 20); 	
INSERT INTO ClassOfferedOn(classid, day) VALUES (95069, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95069, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(94942, 'fall19', ¡®WRT¡¯, 102, 'LEC', '94', 3, ¡®A116¡¯, ¡®Alexander¡¯, ¡®Grevett¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94942, 3, '14:00:00', '15:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94942, 5, '14:00:00', '15:20:00'); -- TH


SELECT f_insert_class(95793, 'fall19', ¡®CAR¡¯, 210, 'LEC', '90', 1, ¡®A312¡¯, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95793, 4, '11:00:00', '11:53:00'); -- W


SELECT f_insert_class(94870, 'fall19', ¡®EST¡¯, 104, 'LEC', '90', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94870, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94870, 5, '19:00:00', '20:20:00'); -- TH

SELECT f_insert_class(94905, 'fall19', ¡®EST¡¯, 104, 'LEC', '91', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94905, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94905, 5, '19:00:00', '20:20:00'); -- TH




SELECT f_insert_class(94906, 'fall19', ¡®EST¡¯, 104, 'LEC', '92', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94906, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94906, 5, '19:00:00', '20:20:00'); -- TH


SELECT f_insert_class(94907, 'fall19', ¡®EST¡¯, 104, 'LEC', '93', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (94907, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (94907, 5, '19:00:00', '20:20:00'); -- TH



SELECT f_insert_class(95905, 'fall19', ¡®EST¡¯, 104, 'LEC', '94', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 

INSERT INTO ClassOfferedOn(classid, day) VALUES (95905, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95905, 5, '19:00:00', '20:20:00'); -- TH


SELECT f_insert_class(95906, 'fall19', ¡®EST¡¯, 104, 'LEC', '95', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95906, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95906, 5, '19:00:00', '20:20:00'); -- TH



SELECT f_insert_class(95907, 'fall19', ¡®EST¡¯, 104, 'LEC', '96', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95907, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95907, 5, '19:00:00', '20:20:00'); -- TH





SELECT f_insert_class(95908, 'fall19', ¡®EST¡¯, 104, 'LEC', '97', NULL, NULL, ¡®Sunghyun¡¯ , ¡¯Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95908, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95908, 5, '19:00:00', '20:20:00'); -- TH


SELECT f_insert_class(95909, 'fall19', ¡®EST¡¯, 104, 'LEC', '98', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95909, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95909, 5, '19:00:00', '20:20:00'); -- TH

SELECT f_insert_class(95910, 'fall19', ¡®EST¡¯, 104, 'LEC', '99', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95910, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95910, 5, '19:00:00', '20:20:00'); -- TH


SELECT f_insert_class(95911, 'fall19', ¡®EST¡¯, 104, 'LEC', '100', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95911, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95911, 5, '19:00:00', '20:20:00'); -- TH



SELECT f_insert_class(95912, 'fall19', ¡®EST¡¯, 104, 'LEC', '101', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95912, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95912, 5, '19:00:00', '20:20:00'); -- TH

SELECT f_insert_class(95913, 'fall19', ¡®EST¡¯, 104, 'LEC', '102', NULL, NULL, ¡®Sunghyun¡¯, ¡®Lee¡¯, 20); 
INSERT INTO ClassOfferedOn(classid, day) VALUES (95913, 3, '19:00:00', '20:20:00'); -- T
INSERT INTO ClassOfferedOn(classid, day) VALUES (95913, 5, '19:00:00', '20:20:00'); -- TH





