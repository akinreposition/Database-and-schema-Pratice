use [Semicolon elders and native];

create table Employee (

EmployeeId				integer			not null,
EmployeeName			char(30)		not null,
DateOfBirth				integer			not null,
Department				char(15)		not null,
DateOfEmployement		varchar(15)		not null,
PhoneNumber				numeric(15,0)	not null,
Email					varchar(40)		not null
);

insert into Employee  value( 001,'Seyi Makinde', 01/01/1000, 10th_Sept_2019, 09010002001,'seyimakinde@semicolon.africa' );

select *	from Employee;