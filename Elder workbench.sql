use semicolon;

create table Elders (
EmployeeID			integer			not null,
EmployeeName		char(30)		not null,
DateOfBirth			date			not null,
Department			char(15)		not null,
EmploymentStatus	char(20)		not null,
DateOfEmployment	date		not null,
PhoneNumber			numeric(15,0)	not null,
Email 				varchar(40)		not null,
constraint		 	elders_pk		primary key(EmployeeID)
);

select * 	from elders;


insert into Elders values ( 001, 'seyi makinde', '1990-10-01' , 'Account' , 'Full Staff' , '1990-10-01', 09010020030, 'seyimakinde@semicolon.africa');
insert into elders values ( 003, 'Sam Immanuel' ,'1900-01-01', 'CEO' , 'CHAIRMAN', '2018-01-01', 08020001000, 'samImmanuel@semicolon.africa');
insert into elders values ( 002, 'Patience Tommy', '1901-01-02', 'Operations', 'Full Staff', '2019-08-01', 09010020031, 'patience@semicolon.africa');


create table Native (
StudentID					varchar(10)			not null,
StudentName					char(30)			not null,
Cohort						integer				not null,
PhoneNumber					numeric(15,0)		not null,
Email						Varchar(35)			not null,
Programming_Lang			varchar(45)			null,
Educational_Background		char(15)			not null,
constraint					native_pk		primary key(studentID)

);

select*	from native;	

insert into native value(
002, 'Akin Odeku', 2, 08025752281, 'odekuakinlolu@gmail.com', 'Database', 'Education'
);

create table Department(
	EmployeeID				integer				not null,
    EmployeeName			char(30)			not null,
	Accounts				char(30)			null,
    Admins					char(30)			null,
    Operations				char(30)			null,
    Marketing				char(30)			null,
    Faclitators				char(30)			null,
    CommunityManager		char(30)			null,
    DesignTeam				char(30)			null,
   /* constraint		elders_pk	primary key(EmployeeID),*/
	constraint				elders_fk	foreign key(EmployeeID) 
	references elders(EmployeeID)
    
    
);
/*alter table Department
add EmployeeName 	char(30) 	not null;*/

insert into department values ( 001, 'Sam Immanuel', 'Head Account', 'Head Admins', 'Head Operations','  ' , 'Java,UML,SOFTWARE ENGINEERING',' ' ,' '); 
insert into department values ( 002, 'Patience Tommy', '  ', '  ', 'Operations Manager', 'Yes', ' null', '   ', '  ');
insert into department values ( 003, 'Gbemi', '  ', ' Admin Personel', '  ' , '  ' , '  ', '   ' , '  ');


select * from Department;