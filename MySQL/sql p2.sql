create database SEP_08;
DESC SEP_08;
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
select * from pen where colour = 'BLACK';
select * from bank_details where cust_name='Vishu';
select * from bank_details where cust_name='Sam';
select * from bank_details;
update bank_details set cust_name ='Samv' where id=5;

/*CONSTRAINTS:used to limit the type of data while inserting the data into table:
column level constraints:
1.NOT NULL:should not accept null value but accept duplicate value;
creat table cricket(id int not null,type varchar(20) not null)
2.UNIQ: not accept duplicate value but accept null value.
creat table cricate(id int not null,type varchar(30) not null,over varchar(30) unique not null)
3.check table: limit the range of value for that column.alter
creat table cricket(id int not null unique, type varchar(30) not null unique, ballsize varchar(30),check(ballsize>=30)
*/
desc CRICKET;
truncate cricate;
create table CRICKET(id int not null, type varchar(20),overs int);
select*from cricket;
insert into cricket values(null,'odi',20);
insert into cricket values(2,'ipl',20);
insert into cricket values(1,'worldcup',50);
insert into cricket values(1,'t20',20);

create table mall(id int not null,name varchar(20) unique,location varchar(30) not null unique,no_of_flors int unique not null,noOfShops int
unique,hasParking boolean,noOfSecurities int not null,noOfCashCounters int unique,noOfEmployees int,profit bigint,check(noOfShops>=100));
insert into mall values(null,'Asian Mall','kalburagi',6,100,true,25,60,500,3000000);
insert into mall values(2,'City Mall','Mysore',8,150,true,50,100,600,5000000);
insert into mall values(3,'Asian Mall','Bidar',5,100,false,30,40,100,500000);
insert into mall values(4,'Orian Mall','Benglore',5,100,true,25,60,500,3000000);
insert into mall values(5,'VegaCity Mall','Benglore',4,150,true,25,40,400,350000);
insert into mall values(6,'Mantri Mall','kalburagi',4,100,true,22,50,450,1000000);
insert into mall values(7,'LULU Mall','Benglore',4,50,true,50,150,600,6000000);
insert into mall values(8,'V2 Mall','kalburagi',4,50,true,25,50,300,3000000);

create table appartments(id int primary key,a_name varchar(20) not null, location varchar(20) not null,no_of_rooms int not null);
insert into appartments values(1,'Gokula','RRNagar',50);
insert into appartments values(2,'ShreeKrishna','JPNagar',100);
insert into appartments values(3,'Vasudeva','JPNagar',50);

select*from appartments;

create table hotel(id int,h_name varchar(30),location varchar(40) not null,no_of_workers int not null,ratings int not null,
primary key(id,h_name));

insert into hotel values(1,'Udupi','MBnagar',15,1);
insert into hotel values(1,'Gokula','MBnagar',15,2);

select*from hotel;

create table bank(id int not null,b_name varchar(30),b_id int primary key,b_location varchar(30),no_of_customer int not null);
insert into bank values(1,'SBI',100,'Shaktinagar',500);
insert into bank values(1,'SBI',200,'Jaynagar',450);

create table cust_details(id int not null,c_name varchar(30),b_id int,balance bigint not null,c_loction varchar(30),
foreign key(b_id) references bank(b_id));
insert into cust_details values(1,'sara',200,5000000,'Shivacolony');
insert into cust_details values(1,'sara',null,5000000,'Shivacolony');
insert into cust_details values(2,'sara',null,5000000,'Shivacolony');
insert into cust_details values(1,'sara',200,null,'Shivacolony');

select*from cricket;

alter table cricket add column type varchar(20) default 'international';
alter table cricket drop column type; 

insert into cricket values(2,20,'national');
insert into cricket (id,overs) values(4,20);

CREATE TABLE credit_card(id int not null, c_id int primary key, balanace bigint not null);

CREATE TABLE customer_info(id int not null, cust_name varchar(30), credit_id int, foreign key (credit_id) references credit_card(c_id));

SELECT * FROM credit_card;
SELECT * FROM customer_info;

INSERT INTO credit_card values(1,5001,747834);
INSERT INTO credit_card values(2,5002,325673);
INSERT INTO credit_card values(3,5003,857745);
INSERT INTO credit_card values(4,5004,937745);
INSERT INTO credit_card values(5,5005,928774);

INSERT INTO customer_info values(1,'Someshwari', 5002);
INSERT INTO customer_info values(2,'Vinay', 5002);
INSERT INTO customer_info values(3,'Akshar', 5003);




/*date functions:

dayofyear,dayofmonth,datediff,quarter,adddate,dayofweek

/*date('yyyy'-mm-dd');*/
SELECT dayofyear('2022-05-23') as dayyear;

SELECT dayofmonth('2022-04-13') as day;

SELECT dayname('2000-06-10');

SELECT datediff('2022-12-23','2022-05-13');

SELECT quarter('2022-08-23');

SELECT adddate('2022-12-23', INTERVAL -5 DAY);
SELECT adddate('2022-12-23 08:30:35', INTERVAL -5 MINUTE);
SELECT adddate('2022-12-23', INTERVAL -3 WEEK);

SELECT adddate('2021-10-20', INTERVAL 4 MONTH);
SELECT adddate('2021-10-20', INTERVAL 6 QUARTER);
SELECT adddate('2020-05-16', INTERVAL -30 YEAR);

CREATE TABLE movies(id int not null, m_name varchar(30), release_date DATE, created_by varchar(40) default'sunil', created_at timestamp);
SELECT * FROM movies;
INSERT INTO movies (id,m_name,release_date,created_at) values(1,'Kantara','2022-09-14',now());
INSERT INTO movies (id,m_name,release_date,created_at) values(2,'Kgf2','2020-10-06',now());
INSERT INTO movies (id,m_name,release_date,created_at) values(3,'salaga','2021-05-26',now());
INSERT INTO movies (id,m_name,release_date,created_at) values(4,'ps1',current_date(),now());

Create Table District_information(name varchar(30) unique, No_of_talukas varchar(30) not null, id int not null unique, population int not null, Total_area int primary key, District_code varchar(30), Availability_of_metro varchar(20) not null, Speaciality varchar(30), DC_name varchar(30), pincode int); 
INSERT INTO  District_information values('Belgavi', '14', 1, 4779661, 13415,'BG', 'no', 'kunda', 'Nitesh patil','590001');
INSERT INTO  District_information values('Bagalkot', '17', 2, 1889752, 6575,'BK', 'no', 'Badami', 'SunilKumar','587101');   
INSERT INTO  District_information values('Bidar', '8', 3, 134563, 7685,'BDR', 'no', 'Gurunanak', 'Govind reddy','594101');   
INSERT INTO  District_information values('Gulbarga', '7', 4, 188952, 56432,'GLB', 'no', 'malpuri', 'Yashwant','585101');   
INSERT INTO  District_information values('Bellari', '11', 5, 2566326, 10951,'BL', 'no', 'Badami', 'PavanKumar','565102');   
INSERT INTO  District_information values('Davanagere', '12', 6, 134555, 76543,'DG', 'no', 'Benne Dose', 'Shivanand','576210');   
INSERT INTO  District_information values('Yadagiri', '13', 7, 176822, 8765,'YG', 'no', 'YadgiriGudda', 'Snehal','565102');   
INSERT INTO  District_information values('Mysore', '11', 8, 167543, 6563,'MSR', 'no', 'Dasara festival', 'Rajendra','345567');   
INSERT INTO  District_information values('Bengaluru', '09', 9, 165436, 9876,'BLR', 'yes', 'VidhanSoidha', 'Shrinivas','569876');   
INSERT INTO  District_information values('Raichur', '12', 10, 165779, 4563,'Rai', 'no', 'Mantralaya', 'Chandrashekar',589701);   

select*from District_information;

commit;

Create Table Taluka_information(name varchar(30) unique, No_of_hobalis varchar(30) not null, id int not null unique, population int not null, Total_area int primary key,  Taluk_code varchar(30), Availability_of_Multispeciality_hospital varchar(20) not null,  pincode int, check(Total_area>=300), foreign key (Total_area) references District_information(Total_area));

INSERT INTO  Taluka_information values('Athani', '05', 01, 35678, 13415,'AT', 'no', 59086);   
INSERT INTO  Taluka_information values('Chikkodi', '09', 02, 76353, 6575,'CK', 'yes', 58765);
INSERT INTO  Taluka_information values('Chitapur', '06', 03, 87365, 7685,'CT', 'yes', 3478);   
INSERT INTO  Taluka_information values('Raibhag', '07', 04, 93844, 56432,'rb', 'no', 585104);   
INSERT INTO  Taluka_information values('Gokak', '08', 05, 87346, 10951,'GK', 'no', 654352);   
INSERT INTO  Taluka_information values('ramdurga', '06', 06, 34635, 76543,'RD', 'yes', 987623);   
INSERT INTO  Taluka_information values('saoudatti', '08', 07, 83473, 8765,'SD', 'no', 37363);   
INSERT INTO  Taluka_information values('basavkalyan', '04', 08, 2733673, 6563,'BK', 'yes', 27734);   
INSERT INTO  Taluka_information values('sedam', '09', 09, 76353, 9876,'SD', 'yes', 09876);   
INSERT INTO  Taluka_information values('mudhol', '09', 10, 76353, 4563,'mud', 'no', 47736);   
select*from taluka_information;
commit;
alter table taluka_information drop column id ;
alter table taluka_information add column id int;
alter table taluka_information rename column population to toatl_population;
alter table taluka_information rename column toatl_population to total_population;
alter table taluka_information modify column No_of_hobalis int;

select*from taluka_information where name='chitapur';
select name from taluka_information where id=3;

update taluka_information set name ='chittapura' where total_population=87365;
delete from taluka_information where total_population=76353;

rollback;

commit;

select * from taluka_information where name='chitapur' and No_of_hobalis=06;
select * from taluka_information where name='chitapur' and No_of_hobalis=09;

update taluka_information set name='soudatti' where name='saoudatti' and no_of_hobalis ='08'; 
update taluka_information set name='soudatti' where name='mudhol' and no_of_hobalis ='11'; 

select * from taluka_information where name='sedam' or total_population=87365;
select * from taluka_information where name='chitapur' or total_population=87365;

select*from taluka_information order by name;
select*from taluka_information order by No_of_hobalis;
select*from taluka_information order by Total_area;

select* from taluka_information name where Total_area in(7685);
select no_of_hobalis from taluka_information where name in('sedam');

select*from taluka_information total_population where name not in('sedam');
select taluk_code from taluka_information where name not in ('mudhol');
select name from taluka_information where name not in ('mudhol');

select*from taluka_information name where name between 'chikkodi' and 'sedam';
select*from taluka_information name where Total_area between 4563 and 6575;

select upper(name) as converted from taluka_information;
select upper(name) from taluka_information;

select lower(taluk_code) as converted from taluka_information;

select concat(name,taluk_code) as combined from taluka_information;

select length(name) as length from taluka_information;
select length(name) as length from taluka_information order by name desc;

select instr('chikkodi','o') name from taluka_information;
select instr('chikkodi','o') as str from taluka_information;

select instr(name,'o') name from taluka_information;

select substr('basavkalyan',1,5) from taluka_information;
select substr('basavkalyan',1,5) as str;

select ltrim('           samv')as vishu;
select rtrim('samv        ')as vishu;
select rtrim(ltrim('           samv         '))as vishu;

select count(*) from taluka_information;
select count(name) from taluka_information;

select sum(Total_area) from taluka_information;
select sum(No_of_hobalis) from taluka_information;

select max(Total_area) from taluka_information;
select min(no_of_hobalis) from taluka_information; 

select avg(total_area) from taluka_information;



CREATE TABLE freedom_fighters(id int, name varchar(30), birth_place varchar(30), birth_date Date, region varchar(40));

SELECT * FROM freedom_fighters;
DESC freedom_fighters;

/*Syntax for adding the constrint to existing column
ALTER TABLE table_name ADD CONSTRAINT constraint_name CONSTRAINT_TYPE(COLUMN_NAME);*/
ALTER TABLE freedom_fighters ADD CONSTRAINT freedom_figh_uk UNIQUE (name);





SELECT * FROM taluka_information;
select * from district_information;




SELECT * FROM bank_data;

SELECT * FROM freedom_fighters;
SELECT * FROM british_officers;


Joins:

1)Inner join:
/*Syntax for Inner join
SELECT * FROM table_name inner join table_name on condition;*/


CREATE TABLE c(id int,name varchar(30));
INSERT INTO c values(1,'Laptop'),(5,'Charger'),(2,'UPS'),(6,'Lamp'),(8,'Mobile');
SELECT * FROM a; 
SELECT * FROM b; 
SELECT * FROM C; 

SELECT * FROM a inner join b on a.id = b.id  INNER JOIN C ON b.id = c.id inner join freedom_fighters f on f.id = c.id;
SELECT * FROM a inner join freedom_fighters f on a.name = f.name;


SELECT * FROM freedom_fighters;
SELECT * FROM british_officers;

SELECT f.id,f.name,b.id,b.name FROM freedom_fighters f inner join british_officers b ON f.id = b.id;

CREATE TABLE e(id INT);
insert into e values(1),(2),(4),(5),(7);
create table d(id int);
insert into d values(3),(2),(6),(5),(8);
SELECT * FROM d; 3,2,6,5,8
SELECT * FROM e; 1,2,4,5,7,

LEFT JOIN:

SELECT * FROM d LEFT JOIN e ON d.id = e.id LEFT JOIN c on c.id = e.id;
SELECT * FROM a LEFT JOIN b ON a.name = b.name;

RIGHT JOIN:

SELECT * FROM d RIGHT JOIN e ON d.id = e.id;
SELECT * FROM b RIGHT JOIN a ON a.name = b.name;

CREATE TABLE bank_information(id int not null, b_name varchar(40) unique not null, b_id int not null, no_of_customers int not null, 
loan_status varchar(30) default 'ACTIVE',location varchar(30) not null);
CREATE TABLE cust_information(id int not null, c_name varchar(30) not null, balance bigint not null,c_id int not null, b_id int not null, 
c_location varchar(30));
CREATE TABLE loan_information(id int not null, loan_type varchar(40), loan_amount bigint not null, c_id int not null);

SELECT * FROM bank_information; -- no duplicates, b_id 501
SELECT * FROM cust_information;  b_id 5-6 values same from b_id of bank_information table , c-id 701
select * from loan_information; c_id 5-6 values same from c_id of cust_information table.





SELECT * FROM cust_details;





