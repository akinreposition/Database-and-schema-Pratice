USE hr_schema;



create table jobs (
JOB_ID					varchar(10)			not null,
JOB_TITLE				varchar(30)			not null,
MIN_SALARY				integer				not null,
MAX_SALARY				integer				not null,
constraint				jobs_pk			primary key(JOB_ID)
);

create table job_grades (
GRADE_LEVEL					varchar(2)			not null,
LOWEST_SALARY				integer				not null,
HIGHEST_SALARY				integer				not null,
constraint				job_grades_pk			primary key(GRADE_LEVEL)
);


create table countries (
COUNTRY_ID			char(2)				not null,
COUNTRY_NAME		varchar(40)			not null,
REGION_ID			integer				not null,
constraint			countries_pk		primary key( COUNTRY_ID),
constraint			countries_regions_fk		foreign key(REGION_ID)
										references regions(REGION_ID)
);

create table regions (
REGION_ID			integer			not null,
REGION_NAME			varchar(25)		not null,
constraint			regions_pk		primary key(REGION_ID)
);

create table Location (
LOCATION_ID					integer				not null,
STREET_ADDRESS				varchar(25)			not null,
POSTAL_CODE					varchar(12)			null,
CITY						varchar(30)			not null,
STATE_PROVINCE				varchar(12)			not null,
COUNTRY_ID					char(2)				not null,
constraint					Location_pk			primary key(LOCATION_ID),
constraint					Location_fk		foreign key(COUNTRY_ID)
											references countries(COUNTRY_ID)
);



create table departments (
DEPARTMENT_ID					integer				not null,
DEPARTMENT_NAME					varchar(30)			not null,
MANAGER_ID						integer				not null,
LOCATION_ID						integer				not null,
constraint				department_pk			primary key(DEPARTMENT_ID),
constraint				department_fk		foreign key(LOCATION_ID)
											references Location(LOCATION_ID)
);

create table job_history (
EMPLOYEE_ID					integer				not null,
START_DATE					date				not null,
END_DATE					date				not null,
JOB_ID						varchar(10)			not null,
DEPARTMENT_ID				integer				not null,
constraint				job_history_pk			primary key(DEPARTMENT_ID, START_DATE),
constraint				job_history1_fk		foreign key(DEPARTMENT_ID)
											references departments(DEPARTMENT_ID),
constraint				job_history2_fk		foreign key(JOB_ID)
											references jobs(JOB_ID)
);

create table employees (
  Employee_ID				integer				not null,
  First_Name				varchar(20)			not null,
  Last_Name					varchar(25)			not null,
  Email						varchar(25)			not null,
  Phone_Number				varchar(25)			not null,
  Hire_Date					date				not null,
  Job_ID					varchar(10)			not null,
  Salary					integer				not null,
  Commission_PCT			integer				not null,
  Manager_ID				integer				not null,
  Department_ID				integer				not null,
  constraint			employees_pk		primary key(Employee_ID),
  constraint			employees1_fk		foreign key(JOB_ID)
											references jobs(JOB_ID),
  constraint			employees2_fk		foreign key(DEPARTMENT_ID)
											references departments(DEPARTMENT_ID)
  /*constraint			employees_fk		foreign key(EMPLOYEE_ID)
											references job_history(EMPLOYEE_ID)*/
);


