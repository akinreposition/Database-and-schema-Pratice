USE HR_SCHEMA;


insert into jobs values ('IT_PROG', 'ACCOUNTING', 4800.00, 5000.00 );
insert into jobs values ('FI_MGR', 'ADMINSTRATION', 4200.00, 5200.00 );
insert into jobs values ('FI_ACCOUNT', 'FICNANCE ACCOUNT', 6900.00, 9000.00 );
insert into jobs values ('PU_MAN', 'PURCHASE', 9000.00, 11000.00 );
insert into jobs values ('PU_CLERK', 'ADMIN-CLERK', 2900.00, 3100.00 );
insert into jobs values ('ST_MAN', 'CLERK', 5800.00, 8200.00 );
insert into jobs values ('ST_CLERK', 'ADMIN', 2700.00, 3200.00 );
insert into jobs values ('SA_REP', 'MARKETING', 6100.00, 11500.00 );


insert into job_grades values ('A+', 4800.00, 5000.00 );
insert into job_grades values ('D', 4200.00, 5200.00 );
insert into job_grades values ('D', 6900.00, 9000.00 );
insert into job_grades values ('B', 9000.00, 11000.00 );
insert into job_grades values ('B', 2900.00, 3100.00 );
insert into job_grades values ('C', 5800.00, 8200.00 );
insert into job_grades values ('A', 2700.00, 3200.00 );
insert into job_grades values ('C', 6100.00, 11500.00 );

insert into regions values (101, 'ABUJA');
insert into regions values (102, 'ABUJA');
insert into regions values (103, 'ABIA');
insert into regions values (104, 'KEBBI');
insert into regions values (105, 'LAGOS');
insert into regions values (106, 'EBONYI');
insert into regions values (107, 'ENUGU');
insert into regions values (108, 'BENUE');
insert into regions values (109, 'OGUN');
insert into regions values (110, 'KANO');
insert into regions values (111, 'SOKOTO');
insert into regions values (112, 'KADUNA');
insert into regions values (113, 'GOMBE');
insert into regions values (114, 'NIGER');
insert into regions values (115, 'PORT HARCOURT');
insert into regions values (116, 'JOS');


insert into countries values (01, 'NIGERIA', 101);
insert into countries values (02, 'NIGERIA', 102);
insert into countries values (03, 'LONDON', 103);
insert into countries values (04, 'NIGERIA', 104);
insert into countries values (05, 'NIGERIA', 105);
insert into countries values (06, 'NIGERIA', 106);
insert into countries values (07, 'NIGERIA', 107);
insert into countries values (08, 'FRANCE', 108);
insert into countries values (09, 'FRANCE', 109);
insert into countries values (10, 'NIGERIA', 110);
insert into countries values (11, 'GHANA', 111);
insert into countries values (12, 'NIGERIA', 112);
insert into countries values (13, 'MOROCO', 113);
insert into countries values (14, 'NIGERIA', 114);
insert into countries values (15, 'NIGERIA', 115);
insert into countries values (16, 'NIGER', 116);
/*insert into countries values (17, 'NIGERIA', 117);*/


insert into location values (211,'Lagos-Nigeria','ACB100', 'LAGOS','001', 01);
insert into location values (212,'OGUN-Nigeria','ACB200', 'ABEOKUTE','001', 02);
insert into location values (213,'ED0-Nigeria','ACB300', 'BENIN','003', 03);
insert into location values (214,'KANO-Nigeria','ACB400', 'KANO','004', 04);
insert into location values (215,'KASTINA-Nigeria','KAT100', 'KASTINA','005', 05);
insert into location values (216,'ABUJA-Nigeria','ABJ100', 'FCT','006', 06);
insert into location values (217,'BORNO-Nigeria','BRN100', 'MADUGURI','007', 07);
insert into location values (218,'ENUGU-Nigeria','EUG100', 'ENUGU','008', 08);
insert into location values (218,'TARABA-Nigeria','TRB100', 'JALINGO','009', 09);
insert into location values (219,'OYO-Nigeria','OYO100', 'IBADAN','009', 09);
insert into location values (220,'KWARA-Nigeria','KWR100', 'ILORIN','010', 10);
insert into location values (221,'RIVERS-Nigeria','RIV100', 'PORT_HARCOURT','011', 11);
insert into location values (222,'DELTA-Nigeria','DEL100', 'ASABA','012', 12);
insert into location values (223,'BENUE-Nigeria','BEN100', 'MAKURDI','013', 13);
insert into location values (224,'JOS-Nigeria','JOS100', 'PLATUE','014', 14);
insert into location values (225,'KOGI-Nigeria','KOG100', 'LOKOJA','015', 15);
insert into location values (226,'CROSS-Nigeria','CRO100', 'RIVER','016', 16);



insert into departments values (60, 'ADMIN', 300, 211);
insert into departments values (30, 'ADMIN', 301, 212);
insert into departments values (40, 'MARKETING', 302, 213);
insert into departments values (50, 'PURCHASE', 303, 214);
insert into departments values (70, 'PURCHASE', 304, 215);
insert into departments values (80, 'CLERK', 305, 216);
insert into departments values (90, 'MARKETING', 306, 217);
insert into departments values (10, 'PURCHASE', 307, 218);
insert into departments values (20, 'PURCHASE', 308, 219);
insert into departments values (100, 'OPERATIONS', 309, 220);
insert into departments values (110, 'OPERATIONS', 310, 221);
insert into departments values (115, 'LOGISTIC', 311, 222);
insert into departments values (120, 'CLERK', 312, 223);
insert into departments values (125, 'MAINTENANCE', 313, 224);
insert into departments values (130, 'LOGISTIC', 314, 225);
insert into departments values (135, 'MAINTENANCE', 315, 226);
/*insert into departments values (140, 'ADMIN', 316, 227);*/



insert into job_history values (106,'2006-02-05','2020-12-31', 'IT_PROG', 10);
insert into job_history values (107,'2007-02-07','2019-11-12', 'IT_PROG', 20);
insert into job_history values (108,'2002-08-17','2020-09-01', 'FI_MGR', 30);
insert into job_history values (109,'2002-08-16','2020-01-13', 'FI_ACCOUNT', 40);
insert into job_history values (110,'2005-09-28','2018-12-31', 'FI_ACCOUNT', 50);
insert into job_history values (111,'2005-09-30','2020-02-14', 'FI_ACCOUNT', 60);
insert into job_history values (112,'2006-03-07','2020-05-23', 'FI_ACCOUNT', 70);
insert into job_history values (113,'2006-03-07','2019-07-21', 'FI_ACCOUNT', 80);
insert into job_history values (114,'2002-12-07','2017-08-25', 'PU_MAN', 90);
insert into job_history values (115,'2003-05-18','2020-10-03', 'PU_CLERK', 100);
insert into job_history values (116,'2005-12-24','2019-09-04', 'PU_CLERK', 110);
insert into job_history values (121,'2005-04-10','2020-04-29', 'ST_MAN', 115);
insert into job_history values (122,'2003-05-01','2017-04-12', 'ST_MAN', 120);
insert into job_history values (123,'2005-10-10','2018-07-02', 'ST_MAN', 125);
insert into job_history values (124,'2007-11-16','2018-08-18', 'ST_MAN', 130);
insert into job_history values (125,'2005-07-16','2020-03-11', 'ST_CLERK', 135);
/*insert into job_history values (126,'2006-09-28','2018-06-22', 'ST_CLERK', 140);*/


insert into employees values ( 106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560' , '2006-02-05', 'IT_PROG', 4800.00, 0.00 , 103 , 60);
insert into employees values ( 107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567' , '2007-02-07', 'IT_PROG', 4200.00, 0.00 , 103 , 60);
insert into employees values ( 108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569' , '2002-08-17', 'FI_MGR', 12008.00, 0.00 , 101 , 100);
insert into employees values ( 109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169' , '2002-08-16', 'FI_ACCOUNT', 9000.00, 0.00 , 108 , 100);


