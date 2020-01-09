Create database HooplaAssignments

use HooplaAssignments
go

--create the jobs table, and populate it
create table Jobs (
	JobKey int PRIMARY KEY IDENTITY(1,1),
	JobName nvarchar(100) not null,
	active bit not null DEFAULT 1,
)

insert into jobs
values('Email/Voicemail', 1),
('Email Backup', 1),
('KB Review', 1),
('VM Backup', 1),
('FTP and Recap', 0),
('QA', 0),
('Break', 0)

--create the reps table and populate it
create table Reps (
	RepKey int PRIMARY KEY IDENTITY(1,1),
	RepName nvarchar(100) not null,
	active bit not null DEFAULT 1,
)

insert into Reps
values ('Andrew Ingram', 0),
('Sam Ames', 1),
('Isaac Ward', 1),
('Braden Reed', 1),
('Robert Brady', 1)

--create and populate table lunch
create table Lunch (
	LunchKey int PRIMARY KEY IDENTITY(1,1),
	LunchName nvarchar(100) not null,
	active bit not null DEFAULT 1,
)

insert into Lunch
values ('11:00', 1),
 ('12:00', 1),
 ('1:00', 1)

 Go

--create and populate joining table for reps, and their lunches
create table RepLunch (
	RepLunchKey int PRIMARY KEY IDENTITY(1,1),
	RepKey int FOREIGN KEY REFERENCES Reps(RepKey),
	LunchKey int FOREIGN KEY REFERENCES Lunch(LunchKey),
)

insert into RepLunch
values (1, 3),
(2, 2),
(3, 1),
(4, 3),
(5, 1)