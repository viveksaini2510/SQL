Create database School;
Create database school2;
Drop database school2;
Use  School;
Create table students(
id INT PRIMARY KEY,
name Varchar (50),
age INT NOT null
);

Show tables;

Insert into students
(id, name, age)
values
(101, "Anshika",30),
(102, "Akshita",28);

Select * from students;
Select id, name from students;
Use school;
Create table scholars;
Create table bache
(
rollno INT PRIMARY KEY,
name VARCHAR(30),
marks INT NOT NULL,
grade VARCHAR(1),
city Varchar(30)
);
Insert INTO bache
(rollno, name, marks, grade, city)
values
(101, "Anshika", 100, "A", "Meerut"),
(102, "Anshi", 90, "B", "Delhi"),
(103, "ritika", 80, "B", "Meerut"),
(104, "Ani", 70, "C", "Punjab");
Select * from bache;

Select * from bache where marks+10 >= 80;
Select * from bache where marks-10 >=60;
Select *from bache where marks * 10 >= 100;
Select * from bache where grade<"B";
Select id from bache where id=101;
Select * from bache where marks > 80;
Select * from bache where marks < 100;
Select * from bache where marks != 80;
Select * from bache where marks > 80 AND grade="B";
Select * from bache where marks > 80 OR grade="B";


SELECT name
FROM bache
WHERE city NOT IN ('Meerut', 'Delhi');

Select name , marks from bache where grade BETWEEN "A" AND "B";

SELECT name
FROM bache
WHERE marks > ALL(
 SELECT marks
    FROM bache
where grade="A"
    );
    
Select name from bache where grade like "B";

SELECT name, city
FROM bache
WHERE grade= ANY ("A", "B");

SELECT * 
FROM bache 
WHERE marks > ANY (
    SELECT marks 
    FROM bache 
    WHERE city = 'Meerut'
);

Select * from bache limit 2;

Select max(marks) from bache;
Select min(marks) from bache;

Select count(city) from bache;
Select avg(marks) from bache;
SELECT city, AVG(marks) AS average_marks
FROM bache
GROUP BY city;
Select count(name) , city
from bache
group by city
having max(marks) > 90;

SET SQL_SAFE_UPDATES = 0;

UPDATE bache
SET marks = 95
WHERE name = "Anshika";

UPDATE bache
SET grade = "O" where  name = "Anshika";


Select * from bache;

Delete from bache where marks<80;

Alter table bache
Add column age INT NOT NULL;
SELECT * from bache;

Alter table bache 
Rename to studs;

Describe studs;

Select * from studs;

Alter table studs 
Modify age INT (2);
select * from studs;
Use school;
Alter table studs
Drop column age;
Select * from studs;

Alter table studs
Add column age INT
default 20;
Select age from studs;

Alter table studs 
Modify age Varchar(2);

Alter table studs Rename to stu;
Alter table stu Rename to studs;

Alter table studs
Change age stu_age INT;
Alter table studs
Change stu_age age INT;

SET SQL_SAFE_UPDATES = 0;

Update studs
Set grade ="O"
Where grade ="A";
Select * from studs;

Create database college2;
USE college2;
Create table details(
name VARCHAR(10),
id INT NOT NULL);
use college2;
Create table detail2(
name varchar(30),
id INT NOT NULL);
Select *
from details
INNER JOIN detail2
ON details.id = detail2.id;
truncate table details;
truncate table detail2;
USE college2;
Create table student(
stuid INT NOT NULL,
name varchar(20)
);

Insert into student
(stuid, name)
values
(101,"Adam"),
(102,"Bob"),
(103,"Casey");
Select * from student;
Create table course (
stu_id int not null,
course varchar(30)
);

Insert into course
(stu_id, course)
values
(102,"English"),
(105,"Math"),
(103,"Science"),
(107,"SST");

Select * from student
Inner join course
ON student.stu_id= course.stu_id;

Alter table student
Change stuid stu_id INT;

SELECT * 
From student as s
left join course as c
ON s.stu_id = c.stu_id;


SELECT name, course
From student as s
right join course as c
ON s.stu_id = c.stu_id;

SELECT *
From student as s
right join course as c
ON s.stu_id = c.stu_id;


Select * from student 
LEFT JOIN course 
ON student.id =course.id
UNION
Select * from student 
RIGHT JOIN course 
ON student.id = course.id;
Truncate table student;
truncate table course;
drop table student;
drop table course;



-- Perform full outer join
SELECT
    s.stuid AS student_id,
    s.name AS student_name,
    c.course AS course_name
FROM
    student s
LEFT JOIN
    course c
ON
    s.stuid = c.stu_id

UNION

SELECT
    s.stuid AS student_id,
    s.name AS student_name,
    c.course AS course_name
FROM
    course c
LEFT JOIN
    student s
ON
    c.stu_id = s.stuid;


-- Perform LEFT JOIN between student and course tables
SELECT
    s.stuid AS student_id,
    s.name AS student_name,
    c.course AS course_name
FROM
    student s
LEFT JOIN
    course c
ON
    s.stuid = c.stu_id;
    
-- Perform RIGHT JOIN between course and student tables
SELECT
    s.stuid AS student_id,
    s.name AS student_name,
    c.course AS course_name
FROM
    course c
RIGHT JOIN
    student s
ON
    c.stu_id = s.stuid;



