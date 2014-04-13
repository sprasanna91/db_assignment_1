create table Student (
StuId varchar(20),
LastName varchar(20),
FirstName varchar(20),
Major varchar(10),
Credits int,
constraint Student_StuId_pk primary key (StuId));

insert into Student values('S1001','Smith','Tom','History','90');
insert into Student values('S1002','Chin','Ann','Math','36');
insert into Student values('S1005','Lee','Perry','History','3');
insert into Student values('S1010','Burns','Edward','Art','63');
insert into Student values('S1013','McCarthy','Owen','Math','0');
insert into Student values('S1015','Jones','Mary','Math','42');
insert into Student values('S1020','Rivera','Jane','CSC','15');

create table Faculty (
Facid varchar(20),
Name varchar(20),
Department varchar(20),
Rank varchar(20),
constraint Faculty_Facid_pk primary key (Facid));

insert into Faculty values('F101','Adams','Art','Professor');
insert into Faculty values('F105','Tanaka','CSC','Instructor');
insert into Faculty values('F110','Byrne','Math','Assistant');
insert into Faculty values('F115','Smith','History','Assistant');
insert into Faculty values('F221','Smith','CSC','Professor');

create table Class (
ClassNumber varchar(20),
Facid varchar(20),
Schedule varchar(20),
Room varchar(20),
primary key(ClassNumber),
foreign key(Facid) references Faculty(Facid));

insert into Class values('ART103A','F101','MWF9','H221');
insert into Class values('CSC201A','F105','TuThF10','M110');
insert into Class values('CSC203A','F105','MThF12','M110');
insert into Class values('HST205A','F115','MWF11','H221');
insert into Class values('MTH101B','F110','MTuTh9','H225');
insert into Class values('MTH103C','F110','MWF11','H225');


create table Enroll (
StuId varchar(20),
ClassNumber varchar(20),
Grade varchar(2),
primary key (StuId,ClassNumber),
foreign key (ClassNumber) references Class(ClassNumber),
foreign key (StuId) references Student(StuId)
);


insert into Enroll values 
('S1001','ART103A','A'),
('S1001','HST205A','C'),
('S1002','ART103A','D'),
('S1002','CSC201A','F'),
('S1002','MTH103C','B'),
('S1010','ART103A',''),
('S1010','MTH103C',''),
('S1020','CSC201A','B'),
('S1020','MTH101B','A');

