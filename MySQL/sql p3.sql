CREATE TABLE freedom_fighters(id int, name varchar(30), birth_place varchar(30), birth_date Date, region varchar(40));

SELECT * FROM freedom_fighters;
DESC freedom_fighters;

/*Syntax for adding the constrint to existing column
ALTER TABLE table_name ADD CONSTRAINT constraint_name CONSTRAINT_TYPE(COLUMN_NAME);*/
ALTER TABLE freedom_fighters ADD CONSTRAINT freedom_figh_uk UNIQUE (name);


SELECT * FROM freedom_fighters;

DESC freedom_fighters;
/*Adding the constarints for existing table*/
ALTER TABLE freedom_fighters ADD CONSTRAINT freedom_figh UNIQUE(name);

ALTER TABLE freedom_fighters ADD COLUMN age int not null;

ALTER TABLE freedom_fighters ADD CONSTRAINT age_chck CHECK (age>=20);

ALTER TABLE freedom_fighters ADD CONSTRAINT freedom_pk PRIMARY KEY(id);

/*Dropping the constraints from Existing tables*/

ALTER TABLE freedom_fighters DROP CONSTRAINT freedom_figh_uk;

ALTER TABLE freedom_fighters DROP CONSTRAINT age_chck;

ALTER TABLE freedom_fighters DROP PRIMARY KEY;

SELECT * FROM freedom_fighters;
INSERT INTO freedom_fighters values(1,'SubhasChandraBose','Gujarath','1898-06-29','North',60);
INSERT INTO freedom_fighters values(2,'BhagathSingh','Odisha','1885-05-10','North',56);
INSERT INTO freedom_fighters values(3,'Sangollirayanna','Karnataka','1878-07-19','West',51);
INSERT INTO freedom_fighters values(4,'Ranichenamma','Karnataka','1867-02-20','West',49);
INSERT INTO freedom_fighters values(5,'Rangappa','Andhra','1890-01-08','East',64);
INSERT INTO freedom_fighters values(6,'Gandhi','Tamilnadu','1834-10-15','East',70);
INSERT INTO freedom_fighters values(7,'OnikeObavva','Kerala','1847-04-13','South',47);
INSERT INTO freedom_fighters values(8,'JhasiRani','Tamilnadu','1876-08-17','South',43);

CREATE TABLE british_officers(id int, name varchar(30), country varchar(40));

SELECT * FROM british_officers;

ALTER TABLE british_officers ADD CONSTRAINT british_fk FOREIGN KEY(id) REFERENCES freedom_fighters(id);

INSERT INTO british_officers values(1,'William','England');
INSERT INTO british_officers values(2,'JimmyNeesham','NewZealand');
INSERT INTO british_officers values(3,'Willjacks','Australia');


ALTER TABLE british_officers DROP constraint british_fk;




LPAD:

PADDING

LPAD:
RPAD:

'xworkz'
SELECT LPAD(originalstring,finallengthofstring,valuetobeadded);
SELECT LPAD('XWORKZ',39,'aaaaa');
SELECT LPAD('Bengaluru',4,'sss');

SELECT RPAD('XWORKZ',3,'aaaaa');

SELECT LPAD(name,20,'Bengaluru') from british_officers;
SELECT RPAD(Country,20,'British') from british_officers;

Group by:

SELECT COUNT(*),region FROM freedom_fighters group by region;

CREATE TABLE bank_data(id int,name varchar(30), acc_type varchar(40),balance bigint);

INSERT INTO bank_data values(1,'Sachin','Current',535435);
INSERT INTO bank_data values(2,'Dravid','Current',8957738);
INSERT INTO bank_data values(3,'Kohli','Current',4268833);
INSERT INTO bank_data values(4,'Gambhir','JointAccount',7378483);
INSERT INTO bank_data values(5,'Shewag','JointAccount',9762344);
INSERT INTO bank_data values(6,'Ganguly','JointAccount',3226784);
INSERT INTO bank_data values(7,'Rohit','JointAccount',86725656);
INSERT INTO bank_data values(8,'VVslaxman','JointAccount',3527884);
INSERT INTO bank_data values(9,'Yuvraj','JointAccount',9843434);
INSERT INTO bank_data values(10,'Kaif','JointAccount',8345675);
INSERT INTO bank_data values(11,'Zaheer','JointAccount',2345678);
INSERT INTO bank_data values(12,'Dhoni','savings',8745678);
INSERT INTO bank_data values(13,'Raina','savings',38763567);
INSERT INTO bank_data values(14,'Kapildev','savings',76534567);
INSERT INTO bank_data values(15,'Warner','Current',843568987);
INSERT INTO bank_data values(16,'Smith','Current',87356734);
INSERT INTO bank_data values(17,'Strac','Current',92546784);
INSERT INTO bank_data values(18,'AbDevilliers','Current',4537855);
INSERT INTO bank_data values(19,'Gayle','Current',9873573);
INSERT INTO bank_data values(20,'Duplessis','Current',46378955);
INSERT INTO bank_data values(21,'Maxwell','savings',82656444);
INSERT INTO bank_data values(22,'Root','savings',3469693);
INSERT INTO bank_data values(23,'Stokes','savings',86256779);
commit;
SELECT * FROM bank_data;

SELECT COUNT(*),acc_type FROM bank_data group by acc_type;
SELECT max(balance) as max_amt,acc_type from bank_data group by acc_type;
SELECT min(balance),acc_type from bank_data group by acc_type;
SELECT avg(balance),acc_type from bank_data group by acc_type;

having:

SELECT COUNT(*) as total,acc_type FROM bank_data group by acc_type 
 having total >6;

SELECT max(balance) as max_amt,acc_type from bank_data group by 
acc_type having max_amt < 86725656;

Views:

CREATE view viewname as select * from table_name;

CREATE view bank_view1 as SELECT id,name from bank_data;

SELECT * FROM bank_view1;
SELECT * FROM bank_data;
UPDATE bank_data SET name = 'ViratKohli' where id = 1;

CREATE TABLE Bank_info(id int not null, b_name varchar(40) unique not null, b_id int not null, no_of_customers int not null, 
loan_status varchar(30) default 'ACTIVE',location varchar(30) not null);

insert into bank_info values(1,'SBI',501,100,'ACTIVE','kalaburagi');
insert into bank_info values(2,'ICICI',502,150,'ACTIVE','Banglore');
insert into bank_info values(3,'CANARA',503,100,'ACTIVE','Mysore');
insert into bank_info values(4,'KARNATAKA',504,200,'ACTIVE','Bidar');
insert into bank_info values(5,'KRUSHNA',505,400,'ACTIVE','Hasan');
insert into bank_info values(6,'KOTAK',506,350,'ACTIVE','Hubbli');
insert into bank_info values(7,'AXIS',507,250,'ACTIVE','Shivamogga');
insert into bank_info values(8,'SYNDICATE',508,100,'ACTIVE','Manglore');
insert into bank_info values(9,'YES',509,100,'ACTIVE','Ballari');
insert into bank_info values(10,'RBS',510,100,'ACTIVE','Belgaum');

select*from bank_info;

CREATE TABLE cust_info(id int not null, c_name varchar(30) not null, balance bigint not null,c_id int not null, b_id int not null, 
c_location varchar(30));

insert into cust_info values(1,'saraswati',5065245,701,505,'Hasan');
insert into cust_info values(2,'vani',10245630,702,501,'Kalaburagi');
insert into cust_info values(3,'mahesh',84563221,703,504,'Bidar');
insert into cust_info values(4,'pooja',2000000,704,516,'Koppal');
insert into cust_info values(5,'raj',8000000,705,509,'Ballari');
insert into cust_info values(6,'spoorthi',7000000,706,506,'Hubbli');
insert into cust_info values(7,'kavya',8400000,707,610,'Bidar');
insert into cust_info values(8,'megha',4000000,708,502,'Banglore');
insert into cust_info values(9,'vishal',23600000,709,350,'Hasan');
insert into cust_info values(10,'divya',100000,710,507,'Sivamogga');

select*from cust_info;


CREATE TABLE loan_info(id int not null, loan_type varchar(40), loan_amount bigint not null, c_id int not null);
insert into loan_info values(1,'goldloan',500000,705);
insert into loan_info values(2,'vehicleloan',2000000,701);
insert into loan_info values(3,'homeloan',2200000,710);
insert into loan_info values(4,'educationloan',500000,703);
insert into loan_info values(5,'personalloan',100000,702);
insert into loan_info values(6,'businesloan',1000000,810);
insert into loan_info values(7,'agricultural',800000,708);
insert into loan_info values(8,'consumerloan',200000,570);
insert into loan_info values(9,'cashcreditloan',100000,706);
insert into loan_info values(10,'festivalloan',150000,690);

select*from loan_info;

select * from bank_info inner join cust_info on bank_info.b_id=cust_info.b_id;
select * from bank_info inner join cust_info on bank_info.b_id=cust_info.b_id inner join loan_info on cust_info.c_id=loan_info.c_id;

select * from bank_info left join cust_info on bank_info.b_id=cust_info.b_id;
select * from bank_info right join cust_info on bank_info.b_id=cust_info.b_id;

select * from cust_info left join loan_info on cust_info.c_id=loan_info.c_id;
select * from cust_info right join loan_info on cust_info.c_id=loan_info.c_id;



