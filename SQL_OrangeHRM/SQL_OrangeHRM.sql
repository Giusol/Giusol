
/* DDL */
-- create database
create database Candidates;
drop database Candidates;
-- use database
use Candidates;

-- Create Table
create table JobTitleList (
JobTitleID int primary key auto_increment,
Vacancy varchar(100) not null,
JobTitle varchar(100) not null,
HiringManager varchar(100) not null,
NumberOfPosition int,
Status varchar(100) not null
);


create table CandidatesApplication (
CandidateID int not null auto_increment,
FullName varchar(100) not null, 
Email varchar(100) not null,
ContactNo varchar(100) not null, 
JobVacancy varchar(100) not null, 
Status varchar(100) not null,
Resume varchar(100) not null,
Keywords varchar(100) not null,
DateOfApplication date not null,
JobTitleID int not null,
primary key (CandidateID),
constraint fk_CandidateApplication_JobTitleList
foreign key (JobTitleID)
references JobTitleList (JobTitleID)
); 

create table CandidatesList (
CandidatesListID int not null auto_increment,
Vacancy varchar(100) not null, 
Candidate varchar(100) not null, 
HiringManager varchar(100) not null, 
DateOfApplication date not null,  
Status varchar(100) not null,
JobTitleID int not null,
primary key (CandidatesListID),
constraint fk_CandidatesList_JobTitleList
foreign key (JobTitleID)
references JobTitleList (JobTitleID)
); 

-- Select Table
select * from CandidatesList;
select * from CandidatesApplication;
select * from JobTitleList;

/* DML */

-- Insert into table
insert into JobTitleList (JobTitleID,Vacancy,JobTitle,HiringManager,NumberOfPosition,Status)
values ('1','Vacancy for Controller','Controller','Russel Hamilton','12','active'),
       ('2','Vacancy for Manager IT','It Manager','Anthony Nolan','8','active'),
       ('3','Vacancy for Finance Manager','Finance Manager','Russel Hamilton','6','active'),
       ('4','Vacancy for Accountant','Accountant','Jennifer Brown','5','inactive');


insert into CandidatesApplication (CandidateID,FullName,Email,ContactNo,JobVacancy,Status,Resume,Keywords,DateOfApplication,JobTitleID)
values ('1','Maria Antoneta','maria2@ymail.com','0-800-800-311','Vacancy for Controller','Select Action','CV','Controller','2012-10-14',1),
	   ('2','Angelina Jolie','angela@ymmail.com','0-800-800-281','Vacancy for Finance Manager','Reject','CV','Finance','2012-11-08',3),
       ('3','Soldan Mihaela','sol.mih@ymail.com','0-800-800-314','Vacancy for Accountant','Select Action','CV','Accountant','2012-11-10',4),
	   ('4','Jenny Mathews','jen.jen@ymail.com','0-800-800-315','Vacancy for Controller','Reject','CV','Finance','2012-12-18',1),
       ('5','Anne Clinton','anne202@ymail.com','0-800-808-286','Vacancy for Controller','Select Action','CV','Controller','2013-03-14',1),
       ('6','Daniel Pigera','dany5@ymail.com','0-800-808-287','Vacancy for Finance Manager','Select Action','CV','Finance','2013-03-20',3),
       ('7','Harsha Silva','silva@ymail.com','0-800-808-287','Vacancy for Accountant','Shortlist','CV','Accountant','2013-03-21',4),
       ('8','Ryan Parker','ryan@ymail.com','0-800-818-287','Vacancy for Controller','Shortlist','CV','Controller','2013-03-17',1),
       ('9','Lucas Nolan','lucas@ymail.com','0-800-808-487','Vacancy for Manager IT','Select Action','CV','iT','2013-03-29',2),
       ('10','Madhushanka Perera','perera@ymail.com','0-800-809-287','Vacancy for Manager IT','Shortlist','CV','iT','2013-04-02',2);

insert into CandidatesList (CandidatesListID,Vacancy,Candidate,HiringManager,DateOfApplication,Status,JobTitleID)
values ('1','Vacancy for Manager IT','Madhushanka Perera','Peter Anderson (Past Employee)','2013-04-02','Shortlisted','2'),
       ('2','Vacancy for Manager IT','Lucas Nolan','Anthony Nolan','2013-03-29','Interview Scheduled','2'),
       ('3','Vacancy for Controller','Ryan Parker','Russel Hamilton','2013-03-21','Hired','1'),
       ('4','Vacancy for Accountant','Harsha Silva','Jennifer Brown','2013-03-21','Hired','4'),
       ('5','Vacancy for Finance Manager','Daniel Pigera','Russel Hamilton','2013-03-20','Interview Scheduled','3'),
       ('6','Vacancy for Controller','Anne Clinton','Russel Hamilton','2013-03-14','Interview Scheduled','1'),
       ('7','Vacancy for Controller','Jenny Mathews','Russel Hamilton','2012-12-18','Interview Failed','1'),
       ('8','Vacancy for Accountant','Soldan Mihaela','Jennifer Brown','2012-11-10','Interview Scheduled','4');
      
  
-- Add
insert into CandidatesList (CandidatesListID,Vacancy,Candidate,HiringManager,DateOfApplication,Status,JobTitleID)
 values  ('9', 'Vacancy for Finance Manager','Angelina Jolie','Russel Hamilton','2012-11-10','Hired','3'),
	     ('10','Vacancy for Controller','Maria Antoneta','Russel Hamilton','2012-11-05','Interview Failed','1');
  
  
-- Update 
update CandidatesApplication set DateOfApplication = "2013-03-21" WHERE FullName = "Ryan Parker";
update CandidatesList set status = "Hired" where Candidate = "Daniel Pigera";

-- Select 
select * from CandidatesList;
select * from CandidatesApplication;
select * from JobTitleList;

/* DQL */
-- Data Query Language 

-- Select columns
select JobTitle, NumberOfPosition from  JobTitleList;
select FullName, JobVacancy, ContactNo from CandidatesApplication;

-- Select Where
select * from JobTitleList where Status = 'active';
select * from CandidatesList WHERE JobTitleID=1;
select * from CandidatesList where (DateOfApplication) > '2013-03-14';
select * from CandidatesApplication where (DateOfApplication) < '2012-12-18';
select * from CandidatesApplication where (CandidateID) <= 5;
select * from JobTitleList where (HiringManager) = 'Russel Hamilton';

-- Select OR
select * from CandidatesApplication where Status='Select Action' OR Status='Shortlist';
select * from CandidatesList where HiringManager like 'Russel%' and Vacancy like '%IT' or JobTitleID = "1";

-- SELECT AND
select * from CandidatesList where (Vacancy)='Vacancy for Controller' AND Status='Hired';
select * from CandidatesApplication where (DateOfApplication) >= 2013-03-14 and JobVacancy = 'Vacancy for Manager IT';

-- SELECT NOT 
select * from JobTitleList where not Status='active';
select * from CandidatesApplication where not Keywords='Finance' and not Status='Reject';

-- SELECT ORDER BY
select * from JobTitleList order by NumberOfPosition;
select * from CandidatesApplication order by DateOfApplication;
select * from CandidatesList order by JobTitleID;
select * from CandidatesList order by DateOfApplication limit 4;

-- SELECT MIN AND MAX
select max(NumberOfPosition) from JobTitleList;
select min(NumberOfPosition) from JobTitleList;

-- SELECT NULL
select * from JobTitleList where NumberOfPosition is null;
select * from CandidatesApplication where Email is not null;

-- SELECT COUNT
select count(CandidateID) from CandidatesApplication;

-- SELECT AVG
select avg(NumberOfPosition) from JobTitleList;

-- SELECT SUM
select SUM(NumberOfPosition) from JobTitleList;

-- SELECT IN
select * from JobTitleList where Status in ('active');
select * from CandidatesApplication where Keywords in ('Accountant', 'iT', 'Finance');
select * from CandidatesList where JobTitleID not in ('3');

-- SELECT LIKE
select * from CandidatesApplication where ContactNo like ('%808%');
select * from CandidatesApplication  where DateOfApplication like ('2012%');
select * from CandidatesList where HiringManager like ('%Brown');
select * from CandidatesList where DateOfApplication like ('%-03-%');

-- SELECT BETWEEN
select * from JobTitleList where NumberOfPosition between 2 and 6;


-- SELECT GROUP BY
select count(CandidateID), Keywords from CandidatesApplication group by Keywords;
select count(CandidatesListID), HiringManager from CandidatesList group by HiringManager order by COUNT(CandidatesListID) desc;

-- SELECT HAVING
select COUNT(CandidateID), JobVacancy from CandidatesApplication group by JobVacancy having COUNT(CandidateID) >= 2;
select COUNT(CandidatesListID), Status from CandidatesList group by Status having COUNT(CandidatesListID) < 5 order by COUNT(CandidatesListID) desc;


/* JOINS*/

-- CROSS JOIN
select  CandidatesApplication.FullName, CandidatesApplication.ContactNo, JobTitleList.JobTitle, JobTitleList.Status 
from JobTitleList cross join CandidatesApplication;

-- INNER JOIN
SELECT CandidatesApplication.CandidateID, JobTitleList.Vacancy
FROM CandidatesApplication
INNER JOIN JobTitleList ON CandidatesApplication.JobTitleID = JobTitleList.JobTitleID;

--  INNER JOIN Three Tables
select  JobTitleList.JobTitle, JobTitleList.HiringManager, CandidatesList.Candidate, CandidatesApplication.JobVacancy
from JobTitleList inner join CandidatesList on JobTitleList.JobTitleID = CandidatesList.JobTitleID 
inner join CandidatesApplication on JobTitleList.JobTitleID = CandidatesApplication.JobTitleID;

-- LEFT JOIN
select JobTitleList.Vacancy, CandidatesList.Candidate, CandidatesApplication.Email
from JobTitleList 
left join CandidatesList on JobTitleList.JobTitleID = CandidatesList.JobTitleID
left join CandidatesApplication on JobTitleList.JobTitleID = CandidatesApplication.JobTitleID;

SELECT CandidatesList.Status, CandidatesList.Candidate, CandidatesApplication.JobTitleID, CandidatesApplication.ContactNo
FROM CandidatesList
LEFT JOIN CandidatesApplication ON CandidatesList.JobTitleID = CandidatesApplication.JobTitleID
ORDER BY CandidatesList.CandidatesListID;


-- RIGHT JOIN
select * from JobTitleList right join CandidatesList on JobTitleList.JobTitleID = CandidatesList.JobTitleID;

SELECT JobTitleList.NumberOfPosition, CandidatesList.Candidate, CandidatesList.HiringManager
FROM JobTitleList
RIGHT JOIN CandidatesList ON JobTitleList.JobTitleID = CandidatesList.JobTitleID
ORDER BY JobTitleList.JobTitleID;

