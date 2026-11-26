use student_details


create table course_details(

courseID INT AUTO_INCREMENT PRIMARY KEY,
courseName varchar(50),
courseDuration varchar(50),
courseFees int,
courseMode varchar(50)

)

alter table course_details modify column courseMode boolean
alter table course_details modify column courseMode varchar(25)
alter table course_details drop column courseMode


create table institute(

instituteID  INT AUTO_INCREMENT PRIMARY KEY, 
instituteName varchar(50),
branch varchar(50),
address varchar(50)

)


create table joinstudents(

studentID int primary key,
courseID int,
instituteID int,
studentName varchar(50),
payment varchar(20),

foreign key (courseID) references course_details(courseID),
foreign key (instituteID) references institute(instituteID)

)

insert into course_details values (001,"Data analytisc","6 months",20000),
(002,"Data science","8 months",30000),
(003,"Full stack development","6 months",25000),
(004,"Digital Marketing","4 months",20000),
(005,"python development","6 months",30000),
(006,"web develpment","5 months",28000),
(007,"Java development","6 months",30000),
(008,"powerBI","3 months",15000),
(009,"SQL development","4 months",25000),
(010,"Ai & Machinelearing","7 months",40000)

insert into course_details values (011,"GenAI","10 months",50000),
(012,"Machinelearing","8 months",35000),
(013,"Ai promote","6 months",40000)


insert into institute values (1,"Besant Technologies","OMR","sri sowdeswari Nagar rajiv gandhi salai (OMR)")
insert into institute values (2,"SLA institute","Navalur","Rts food street rajiv gandhi salai(OMR) navalur"),
(3,"Besant Technologies","velachery","11 th main road Vijaya nagar velachery")
insert into institute values (4,"Tech panda","Tambaram","Naru Nagar main road Tambaram"),
(5,"Besant tachnologies","Porur"," vivek Nagar 11 th main road porur"),
(6,"Green technologies","OMR","Balamurugan garden rajiv gandhi salai"),
(7,"Login360","Velachery","5th main road vijaya nagar velachery")


insert into institute values (8,"Besant Technologies","Anna nagar","15th main road ajith fans culb anna nagar"),
(9,"besant technologies","thiruvanmiyur","5th main road vijaya nagar velachery"),
(10,"uniq technologies","T.Nagar","Bharathi nagar 1st street usman road t.Nagar")



insert into joinstudents values (101,001,1,"Kavinesh","cash")
insert into joinstudents values (102,005,7,"Ramachandran","online"),
(103,004,6,"Rehaa","cash"),
(104,009,2,"priya","cash"),
(105,003,2,"Kavin","online"),
(106,008,7,"vignesh","cash"),
(107,006,1,"gowtham","online"),
(108,005,1,"muthu kumaran","cash"),
(109,002,1,"Meenashi","cash"),
(110,004,1,"Abi","online"),
(111,002,1,"Lingesh","cash"),
 insert into joinstudents values (113,011,9,"Manikandan","cash")
 



select * from course_details
select * from institute
select * from joinstudents


   join-- 

select * from joinstudents j join course_details c on j.courseID = c.courseID
join institute i on j.instituteID = i.instituteID


select j.studentID,j.studentName,c.courseName,c.courseDuration,c.courseFees,i.instituteName,i.branch,i.address from joinstudents j
join course_details c on j.courseID = c.courseID
join institute i on j.instituteID = i.instituteID 
where instituteName = ("besant technologies")

select j.studentName,c.courseName,c.courseFees,i.branch from joinstudents j
join course_details c on j.courseID = c.courseID
join institute i on j.instituteID = i.instituteID 
select count(*) as num  from course_details where = "courseFees" 


select j.studentID,j.studentName,c.courseName,c.courseDuration,c.courseFees,i.instituteName,i.branch,i.address from course_details c
left join joinstudents j on c.courseID = j.courseID
left join institute i on j.instituteID = i.instituteID

select j.studentID,j.studentName,c.courseName,c.courseDuration,c.courseFees,i.instituteName,i.branch,i.address from course_details c
right join joinstudents j on c.courseID = j.courseID
right join institute i on j.instituteID = i.instituteID



select j.studentID,j.studentName,c.courseName,c.courseDuration,c.courseFees,i.instituteName,i.branch,i.address from course_details c
left join joinstudents j on c.courseID = j.courseID
left join institute i on j.instituteID = i.instituteID
union
select j.studentID,j.studentName,c.courseName,c.courseDuration,c.courseFees,i.instituteName,i.branch,i.address from course_details c
right join joinstudents j on c.courseID = j.courseID
right join institute i on j.instituteID = i.instituteID

select j.studentName, c.courseName,i.instituteName from joinstudents j
join course_details c on j.courseID = c.courseID
join institute i on j.instituteID = i.instituteID group by j.studentName, c.courseName,i.instituteName

















