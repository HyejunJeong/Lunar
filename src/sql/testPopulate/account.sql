-- populate account data
-- user set up

INSERT INTO AdminAccounts(pswd) VALUES ('lovealee305');

SELECT f_create_student_account('HanBin', 'Baik', 'hanbin96', 'UG');
SELECT f_create_student_account('Hanna', 'Jung', 'hanna95', 'UG');
SELECT f_create_student_account('Hyejun', 'Jeong', 'hyejun96', 'UG');
SELECT f_create_student_account('Arthur', 'Lee', 'alee', 'G');

-- hanbin is 1
-- add classes
SELECT f_register_class(1,56550);
SELECT f_register_class(1,56551);
SELECT f_register_class(1,56553);
SELECT f_register_class(1,56554);
SELECT f_register_class(1,56555);
SELECT f_register_class(1,56556);
SELECT f_register_class(1,56557);
SELECT f_register_class(1,56558);
SELECT f_register_class(1,56834);
SELECT f_register_class(1,56835); 
