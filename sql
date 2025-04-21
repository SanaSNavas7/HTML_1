create database test1;
use test1;
create table countries(
 country_id int primary key,country_name varchar(50) not null,region_id int not null);
 
 create table regions(region_id int,region_name varchar(50) not null,primary key(region_id));
 insert into countries values(2,'China',23);
 select * from countries;
 create table countries(
 country_id int primary key,country_name varchar(50) not null,region_id int not null,foreign key(region_id) references regions(region_id));
 
 desc regions;
 desc countries;
 
 create table jobs(job_id int primary key,job_title varchar(50) not null,min_salary int not null,max_salary int not null);
 create table locations(location_id int primary key,street_address varchar(50) not null,postal_code int not null,city varchar(50) not null,state_province varchar(30) not null,country_id int not null,foreign key(country_id) references countries(country_id));
 create table departments(department_id int primary key,department_name varchar(50),location_id int not null,foreign  key(location_id) references locations(location_id));
 create table employees(employee_id int primary key,first_name varchar(50),last_name varchar(50),email varchar(20),phone_no int not null,hire_date date,job_id int not null,salary varchar(50),manager_id int not null,department_id int not null,foreign key(department_id) references departments(department_id),foreign key(job_id) references jobs(job_id));
 create table dependents(dependent_id int primary key,first_name varchar(50),last_name varchar(50),relationship varchar(50),employee_id int not null,foreign key(employee_id) references employees(employee_id));
 alter table employees add constraint foreign key(manager_id) references employees(employee_id);

 use test1;
  alter table employees rename to emp;
  alter table regions add column clm_name int;
  desc regions;
  alter table regions rename COLUMN clm_name to new_column;
  desc regions;
  alter table regions modify new_column varchar(10);
  desc regions;
  alter table regions drop new_column;
  desc regions;
  alter table regions drop region_id;
  insert into regions(region_id,region_name) values ("101","Region 1"),("102","Region 2");
  select * from regions;
  desc regions;
  select region_id from regions;
  select * from regions where region_id="101";
  
  use test1;
INSERT INTO regions(region_id,region_name) VALUES ('1','Europe'), ('2','Americans'), ('3','Asia'),('4','Middle East and Africa');
INSERT INTO countries (country_id,country_name,region_id) VALUES
('1','Argentina','2'), ('2','Australia','3'), ('3','Belgium','1'), ('4','Brazil','2'),
('5','Canada','2'), ('6','Switzerland','1'), ('7','China','3'), ('8','Germany','1'),
('9','Denmark','1'), ('10','Egypt','4'), ('11','France','1'), ('12','HongKong','3'),
('13','Israel','4'), ('14','India','3'), ('15','Italy','1'), ('16','Japan','3'), ('17','Kuwait','4'),
('18','Mexico','2'), ('19','Nigeria','4'), ('20','Netherlands','1'), ('21','Singapore','3'),
('22','United Kingdom','1'), ('23','United States of America','2'), ('24','Zambia','4'),
('25','Zimbabwe','4');



INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ('1','Public Accountant',
4200.00,9000.00), ('2','Accounting Manager',8200.00,16000.00), ('3','Administration Assistant',
3000.00,6000.00), ('4','President',20000.00,40000.00), ('5','Administration Vice President',
15000.00,30000.00), ('6','Accountant',4200.00,9000.00), ('7','Finance Manager',8200.00,16000.00),
('8','Human Resources Representative',4000.00,9000.00), ('9','Programmer',4000.00,10000.00),
('10','Marketing Manager',9000.00,15000.00), ('11','Marketing Representative',4000.00,9000.00),
('12','Public Relations Representative',4500.00,10500.00), ('13','Purchasing Clerk',2500.00,5500.00),
('14','Purchasing Manager',8000.00,15000.00), ('15','Sales Manager',10000.00,20000.00), ('16','Sales
Representative',6000.00,12000.00), ('17','Shipping Clerk',2500.00,5500.00), ('18','Stock Clerk',
2000.00,5000.00), ('19','Stock Manager',5500.00,8500.00);
  
  
  
  select * from locations;
  
  INSERT INTO departments(department_id,department_name,location_id) VALUES
('1','Administration','1700'), ('2','Marketing','1800'), ('3','Purchasing','1700'), ('4','Human Resources',
'2400'), ('5','Shipping','1500'), ('6','IT','1400'), ('7','Public Relations','2700'), ('8','Sales','2500'),
('9','Executive','1700'), ('10','Finance','1700'), (11,'Accounting',1700);

INSERT INTO emp(employee_id,first_name,last_name,email,phone_no,hire_date,
job_id, salary,manager_id,department_id) VALUES (100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21', 5,17000.00,100,9),
 (102,'Lex','DeHaan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9),
 (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6), 
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6),
 (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6), 
 (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6), 
 (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6),
 (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10),
 (109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10),
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,
108,10), (112,'Jose Manuel','Urman','josemanuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10), 
(113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10), 
(114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3),
 (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3),
 (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,3),
 (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,2800.00,114,3), 
 (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,2600.00,114,3),
 (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566',' 1999-08-10',13,2500.00,114,3),
 (120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5),
 (121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5),
 (122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5),
(123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5),
 (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5), 
 (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8),
 (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8), 
 (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8),
 (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8), 
 (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8), 
 (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8),
 (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5), 
 (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5), 
 (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,4400.00,101,1),
 (201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2),
(202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2),
(203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4),
(204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,101,7), 
(205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11),
 (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11);
use test1;

  
  INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES
(1,'Penelope','Gietz','Child',206), (2,'Nick','Higgins','Child',205), (3,'Ed','Whalen','Child',200),
(4,'Jennifer','King','Child',100), (5,'Johnny','Kochhar','Child',101), (6,'Bette','De Haan','Child',102),
(7,'Grace','Faviet','Child',109), (8,'Matthew','Chen','Child',110), (9,'Joe','Sciarra','Child',111),
(10,'Christian','Urman','Child',112), (11,'Zero','Popp','Child',113), (12,'Karl','Greenberg','Child',108),
(13,'Uma','Mavris','Child',203), (14,'Vivien','Hunold','Child',103), (15,'Cuba','Ernst','Child',104),
(16,'Fred','Austin','Child',105), (17,'Helen','Pataballa','Child',106), (18,'Dan','Lorentz','Child',107),
(19,'Bob','Hartstein','Child',201), (20,'Lucille','Fay','Child',202), (21,'Kirsten','Baer','Child',204),
(22,'Elvis','Khoo','Child',115), (23,'Sandra','Baida','Child',116), (24,'Cameron','Tobias','Child',117),
(25,'Kevin','Himuro','Child',118), (26,'Rip','Colmenares','Child',119), (27,'Julia','Raphaely',
'Child',114), (28,'Woody','Russell','Child',145), (29,'Alec','Partners','Child',146), (30,'Sandra','Taylor'
,'Child',176);
 alter table locations modify postal_code varchar(10);
 INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
 VALUES ('1400','2014 Jabberwocky Rd','26192','Southlake','Texas','US'), ('1500','2011 Interiors
 Blvd','99236','South San Francisco','California','US'), ('1700','2004 Charade Rd', '98199',' Seattle',
 'Washington','US'), ('1800','147 Spadina Ave','M5V 2L7', 'Toronto', 'Ontario', 'CA'), ('2400','8204
 Arthur St',NULL,'London',NULL,'UK'), ('2500','Magdalen Centre, The Oxford Science Park',
 'OX99ZB','Oxford','Oxford','UK'), ('2700','Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
 select *from locations;
 select * from countries;
 select * from regions;
  select * from jobs;
  select *from departments;
  select *from emp;
   select * from dependents;
    alter table emp modify email varchar(100);
    DESCRIBE emp;
      alter table emp modify phone_no varchar(100);
      select country_name from countries;
      select email,phone_no from emp;
  select* from emp where last_name='fay';
  select hire_date from emp where last_name='Grant' or 'Whalen';
  select *from emp where department_id='8';
  select * from departments order by department_name desc;
  
  select first_name,last_name from emp where hire_date between 1995-01-01 and 1997-12-31;
  select job_title from jobs where max_salary < 5000;
  select first_name,last_name from emp where hire_date between 1995-01-01 and 1995-12-31;
  use test1;
  select country_name from countries;
  select email,phone_no from emp;
  select * from emp where last_name="Fay";
  
  select hire_date from emp where last_name ="Grant" or "Whalen";
  select * from emp where department_id="8";
  select * from departments order by department_name desc;
  select * from emp where last_name like 'K%';
  select first_name,last_name from emp where hire_date between '1995-01-01' and '1997-12-31';
  select * from jobs where max_salary<5000;
  select lower(email) from emp;
  select first_name,last_name from emp where year(hire_date)='1995';
  insert into emp(employee_id,first_name,last_name,department_id) values("30","Paul","Newton","11");
  delete from departments where department_name='Shipping';
  desc departments;
  select * from emp where dayname(hire_date)='Thursday';
  create database test2;
  create table student(name varchar(50),student_no varchar(50),class varchar(50),major varchar(50));
  insert into student(name,student_no,class,major) values('Smith',17,1,'CS');
  create table course(course_name varchar(50),course_number varchar(50),department varchar(50));
  alter table course add column credit_hours varchar(50);
  desc course;
  insert into course(course_name,course_number,department,credit_hours)values("Intro to Computer Science","CS1310","4","CS"),("Data Structures","CS3320","4","CS"),("Discrete Mathematics","MATH2410","3","MATH"),("Database","CS3380","3","CS");
  create table prerequisite(course_number varchar(50),prerequisite_number varchar(50));
  insert into prerequisite(course_number,prerequisite_number)values(("CS3380","CS3320"),("CS3380","MATH2410"),("CS3320","CS1310"));
  use test2;
  create table grade_report(student_number varchar(50),section_identifier varchar(50),grade varchar(50));
  insert into grade_report(student_number,section_identifier,grade) values("17","112","B"),("17","119","C"),("8","85","A"),("8","92","A"),("8","102","B"),("8","135","A");

create table section(section_identifier varchar(50),course_number varchar(50),semester varchar(50),year varchar(50),instructor varchar(50));
insert into section(section_identifier,course_number,semester,year,instructor) values("85","MATH2410","Fall","07","king"),("92","CS1310","Fall","07","Anderson"),("102","CS3320","Spring","08","Knuth"),("112","MATH2410","Fall","08","Chang"),("119","CS1310","Fall","08","Anderson"),("135","CS3380","Fall","08","Stone");
ALTER TABLE prerequisite
ADD CONSTRAINT
FOREIGN KEY (course_number) 
REFERENCES course(course_number);
 alter table section add constraint foreign key(course_number) references course(course_number);
 alter table grade_report add constraint foreign key(section_identifier) references section(section_identifier);
 alter table grade_report add constraint foreign key(student_number) references student(student_number);
 alter table student rename COLUMN student_no to student_number;
 select *from student;
 insert into student(name,student_number,class,major) values('Brown',18,2,'CS');
 select *from course;
 select *from section;
 select *from grade_report;
 select *from prerequisite;
 use test1;
 create database new;
 use new;
  create table customer(custid varchar(50) primary key,name varchar(50));
  insert into customer(custid,name) values('1','ABC'),('2','DEF'),('3','GHI');
  create table sales(custid varchar(50),foreign key (custid) references customer(custid)  ,product varchar(50));
  insert into sales(custid,product) values ('1','pen'),('1','pencil'),('2','pen');
  select customer.name,sales.product from customer join sales on customer.custid=sales.custid;
  drop table sales;
  create table product (pid varchar(50) primary key,product varchar(50));
  insert into product(pid,product)values('101','pencil'),('102','pen'),('103','eraser');
  select * from product;
  create table sales(custid varchar(50),pid varchar(50),foreign key (custid) references customer(custid)  ,productid varchar(50),foreign key (pid) references product(pid));
  insert into sales(custid,productid) values('1','101'),('1','102'),('2','101');
  select customer.name,product.product  from customer join sales on customer.custid=sales.custid 
join product on sales.productid=product.pid; 
select product.product,count(customer.custid)  from customer join sales on customer.custid=sales.custid 
join product on sales.productid=product.pid group by product.pid having count(customer.custid)>=2; 
select course,gradecoursecoursegrade_reportcoursecourse;
use test2;
select * from course;
select * from grade_report;
select * from student;
select course.course_name,grade_report.grade,student.name from
student join grade_report on student.student_number=grade_report.student_number 
join section on grade_report.section_identifier=section.section_identifier join course on 
section.course_number=course.course_number where student.name="Smith";


select student.name,grade_report.grade from student join grade_report on student.student_number=grade_report.student_number join section on section.section_identifier join course on section.course_number=course.course_number where course.course_name="Database" and section.semester="Fall"  and section.year=08;
select prerequisite.prerequisite_number from course join prerequisite on course.course_number=prerequisite.course_number where course_name="database";

select distinct course.course_name   from course join section on course.course_number=section.course_number where instructor='King' and (year='07' or year='08');
select distinct  course.course_number,section.semester,section.year,count(student.name) as student_count from student join grade_report on student.student_number=grade_report.student_number join section on section.section_identifier=grade_report.section_identifier join course on section.course_number=course.course_number where section.instructor="King" GROUP BY course.course_number, section.semester, section.year;
SELECT
    student.name,
    course.course_name,
    course.course_number,
    course.credit_hours,
    section.semester,
    section.year,
    grade_report.grade
FROM student
JOIN grade_report ON student.student_number = grade_report.student_number
JOIN section ON grade_report.section_identifier = section.section_identifier
JOIN course ON section.course_number = course.course_number
WHERE student.class = 2 AND student.Major = 'CS'
ORDER BY student.name, section.year, section.semester;
INSERT INTO student (name, student_number, class, Major)
VALUES ('Johnson', 25, 1, 'Math');
update student set class=2 where student_number='17';
insert into Course(course_name,course_number,credit_hours,department) values('knowledge enngineering','CS4390',3,'CS');
delete  from student where name='Smith' and student_number='17';
select * from student;



  
  
  
