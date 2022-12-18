create database SEP_08;
create table Bank_details(id int,cust_name varchar(30),acc_no bigint,balance bigint,mobile_no bigint);
desc Bank_details;
insert into Bank_details values(1,'SAM',235648971,50000,6842513975);
INSERT INTO Bank_details VALUES(2,'SOM',879512652,450000,8756841239);
INSERT INTO Bank_details VALUES(3,'SMI',879888222,400000,3321456887);
INSERT INTO Bank_details VALUES(4,'VEENA',324856852,1000000,5587764219);
INSERT INTO Bank_details VALUES(5,'VISHU',135846288,3500000,9900587612);
INSERT INTO Bank_details VALUES(6,'MANU',2587941110,80000,9741886452);
select * FROM Bank_details;
CREATE TABLE pen(price int,colour varchar(10),name varchar(10),type varchar(10),size int);
select*from pen;
INSERT INTO pen VALUES(5,'BLACK','BRITE','BALL_PEN',5);
INSERT INTO pen VALUES(5,'RED','BRITE','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','BRITE','BALLPEN',5);
INSERT INTO pen VALUES(10,'BLUE','BUTTERFLOW','BALLPEN',5);
INSERT INTO pen VALUES(10,'BLACK','BUTTERFLOW','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','FLAIR','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLACK','CELLO','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','PENTEK','BALLPEN',5);
commit;
CREATE TABLE car(price bigint,colour varchar(10),company varchar(10),brand varchar(15),average int);
alter table pen drop column size;
alter table pen add column size int;
alter table pen rename column name to pen_name;
select * from pen;
INSERT INTO pen VALUES(5,'BLACK','BRITE','BALL_PEN',5);
INSERT INTO pen VALUES(5,'RED','BRITE','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','BRITE','BALLPEN',5);
INSERT INTO pen VALUES(10,'BLUE','BUTTERFLOW','BALLPEN',5);
INSERT INTO pen VALUES(10,'BLACK','BUTTERFLOW','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','FLAIR','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLACK','CELLO','BALLPEN',5);
INSERT INTO pen VALUES(5,'BLUE','PENTEK','BALLPEN',5);
truncate table pen;
rollback;
commit;
rollback;
alter table pen modify column size bigint;
create table Bank_details(id int,cust_name varchar(30),acc_no bigint,balance bigint,mobile_no bigint);
insert into Bank_details values(1,'SAM',235648971,50000,6842513975);
INSERT INTO Bank_details VALUES(2,'SOM',879512652,450000,8756841239);
INSERT INTO Bank_details VALUES(3,'SMI',879888222,400000,3321456887);
INSERT INTO Bank_details VALUES(4,'VEENA',324856852,1000000,5587764219);
INSERT INTO Bank_details VALUES(5,'VISHU',135846288,3500000,9900587612);
INSERT INTO Bank_details VALUES(6,'MANU',2587941110,80000,9741886452);
select * FROM Bank_details;
alter table bank_details add column location varchar(30);
alter table bank_details drop column location;
alter table bank_details modify column id varchar(10);
alter table bank_details rename column balance to bal;

select cust_name from bank_details where id =3;
select * from bank_details where id =3;

delete from bank_details where bal =450000;
update bank_details set cust_name ='som' where cust_name='veena';

CREATE TABLE Student_list(SI_No int,ClassRoll_no int,First_name varchar(10),Middle_name varchar(10),Last_name varchar(10),
School_name varchar(20),Standard varchar(10),language_type varchar(10),Syllabus_type varchar(20),city varchar(10));
INSERT INTO Student_list values(1,11,'Sanu','Ravi','Kori','St.Josephs School','5th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(2,15,'Megha','Manjunath','tilakar','St.Josephs School','4th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(3,18,'Lavanya','Jagannath','more','St.Josephs School','6th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(4,16,'Siri','Shekhar','vali','St.Josephs School','5th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(5,19,'Tanu','Raghu','Motagi','St.Josephs School','9th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(6,12,'Deepthi','Shivaputra','Agre','St.Josephs School','6th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(7,20,'Aishwarya','Praveen','kora','St.Josephs School','5th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(8,25,'Anjali','Sharan','sagoli','St.Josephs School','5th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(9,27,'Megha','Dharma','gavik','St.Josephs School','5th','english','CBSE','Kalburgi');
INSERT INTO Student_list values(10,21,'Trupti','Sangam','kumbar','St.Josephs School','5th','english','CBSE','Kalburgi');
 
 DESC Student_list;
 SELECT * FROM Student_list;
 

alter table Student_list modify column School_name varchar(40);

update student_list set standard='std' where First_name='sanu' and  standard='5th';
select  First_name from student_list where First_name='Trupti' or Last_name ='kora';
select*from student_list where Middle_name in ('praveen');
select First_name from student_list where Middle_name in ('praveen');
select Standard from student_list where Middle_name in ('praveen');

select First_name from student_list where Middle_name not in ('praveen');


select* from student_list order by First_name;
select* from student_list order by ClassRoll_no;

select* from student_list order by First_name desc;
select* from student_list order by ClassRoll_no desc;

select upper(First_name) as converted from student_list;
select lower(First_name) as converted from student_list;

select concat('sam','vishu') as merged;

select instr('samvishu','v') as weds;
select substr('samvishu',1,4) as weds;

select ltrim('           samv')as vishu;
select ltrim('samv           ')as vishu;

select length('samvish') as size;
select rtrim(ltrim('        samvi        ')) as remo;

select count(*) from Student_list;
 select sum(SI_No) from Student_list;
 select min(ClassRoll_no) from Student_list;
 select max(SI_No) from Student_list;








