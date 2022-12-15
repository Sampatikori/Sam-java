
CREATE DATABASE SEP_08;
SHOW DATABASES;
USE SEP_08;





CREATE TABLE bank_transaction(id int,cust_name varchar(30),acc_no bigint,balance bigint);
DESC bank_transaction;
CREATE TABLE pen(price int,colour varchar(10),name varchar(10),type varchar(10),size int);
DESC pen;
CREATE TABLE car(price bigint,colour varchar(10),company varchar(10),brand varchar(15),average int);
DESC car;

ALTER TABLE pen DROP COLUMN size;
ALTER TABLE pen ADD COLUMN size int;
ALTER TABLE pen RENAME COLUMN name TO pen_name;
ALTER TABLE pen MODIFY COLUMN TYPE int;
DESC pen;

INSERT INTO bank_transaction VALUES(1,'SAM',235648971,50000);
INSERT INTO bank_transaction VALUES(2,'SOM',879512652,450000);
SELECT * FROM bank_transaction;
INSERT INTO bank_transaction VALUES(3,'SMI',879888222,400000);
INSERT INTO bank_transaction VALUES(4,'VEENA',324856852,1000000);
INSERT INTO bank_transaction VALUES(5,'VISHU',135846288,3500000);
INSERT INTO bank_transaction VALUES(6,'MANU',2587941110,80000);
SELECT * FROM bank_transaction;
INSERT INTO pen VALUES(5,'BLACK','BRITE','BALL_PEN',5);
INSERT INTO pen VALUES(5,'RED','BRITE','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','BRITE','BALLPEN',5);
INSERT INTO pen VALUES(10,'BLUE','BUTTERFLOW','BALLPEN',5);
INSERT INTO pen VALUES(10,'BLACK','BUTTERFLOW','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','FLAIR','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLACK','CELLO','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','PENTEK','BALLPEN',5);




SELECT * FROM bank_transaction WHERE cust_name='sam';
SELECT cust_name FROM bank_transaction where id=1;



UPDATE bank_transaction SET cust_name= 'SAMV' WHERE id=1;
SELECT * FROM bank_transaction;
UPDATE bank_transaction SET cust_name = 'SOM' WHERE id=2;



DELETE FROM bank_transaction where id=1;

Select * FROM PEN;









UPDATE bank_transaction SET cust_name = 'SOM' WHERE id=2;