create table s(id int,name varchar(30));
insert into s values(1,'tv'),(2,'laptop'),(3,'mobile'),(5,'fan');
create table t(id int,name varchar(30));
insert into t values(1,'lamp'),(2,'laptop'),(3,'projecter'),(5,'fan');
select*from s;
select*from t;
select*from s inner join t on s.id=t.id;
SELECT * FROM s LEFT JOIN t ON s.id = t.id; 
SELECT * FROM s right JOIN t ON s.id = t.id; 

