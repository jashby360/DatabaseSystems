CREATE DATABASE Medical_Office;
USE Medical_Office;

CREATE TABLE employee(
	hire_date date not null,
	employee_ssn int(9) not null,
	manage_ssn int(9),
	AvgHrWork int(3),
	primary key(employee_ssn)	
);

CREATE TABLE headMA(
	head_ssn int(9) not null,
	h_location varchar(100),
	foreign key(head_ssn) references employee(employee_ssn)
);

CREATE TABLE frontdesk(
	front_ssn int(9) not null,
	f_location varchar(100),
	foreign key(front_ssn) references employee(employee_ssn)
);

CREATE TABLE biller(
	biller_ssn int(9) not null,
	b_location varchar(100),
	foreign key(biller_ssn) references employee(employee_ssn)
);

CREATE TABLE doctor(
	doctor_ssn int(9) not null,
	name varchar(40) not null,
	edu_hist varchar(40),
	doctor_license int(10) not null,
	primary key(doctor_ssn)
);

CREATE TABLE head_doctor(
	hdoctor_ssn int(9) not null,
	major varchar(40),
	working_year int(4),
	foreign key(hdoctor_ssn)references doctor(doctor_ssn)
);

CREATE TABLE sub_doctor(
	sdoctor_ssn int(9) not null,
	major varchar(40),
	working_year int(4),
	foreign key (sdoctor_ssn) references doctor(doctor_ssn)
);

CREATE TABLE patient(
	doctor_co int(9) not null,
	name varchar(40) not null,
	patient_ssn int(9) not null,
	age int(3),
	contact_code int(5),
	history varchar(100),
	insurance varchar(40),
	primary key(patient_ssn),
	foreign key(doctor_co) references doctor(doctor_ssn)
);

CREATE TABLE supplier(
	supplier_code varchar(5),
	name varchar(40),
	address varchar(40),
	product varchar(40),
	primary key(supplier_code)
);

CREATE TABLE owner(
	owner_ssn int(9) not null,
	owner_name varchar(40) not null,
	owner_contact varchar(40),
	primary key(owner_ssn)
);

CREATE TABLE medical_office(
	office_code varchar(5) not null,
	location_no int,
	address varchar(100) not null,
	phone_no int(10),
	company_name varchar(40) not null,
	office_owner int(9),
	primary key(office_code,office_owner),
	foreign key(office_owner) references owner(owner_ssn)
);

CREATE TABLE lab_project(
	l_code varchar(5) not null,
	l_ssn int(9)not null,
	results varchar(100),
	foreign key(l_code) references medical_office(office_code),
	foreign key(l_ssn) references patient(patient_ssn)
);

CREATE TABLE reservation(
	re_office varchar(5) not null,
	re_ssn int(9) not null,
	re_time date,
	primary key(re_office,re_ssn),
	foreign key(re_office) references medical_office(office_code),
	foreign key(re_ssn) references patient(patient_ssn)
);

CREATE TABLE medical_supply(
	su_code varchar(5) not null,
	su_companycode varchar(5),
	amount int, 
	contractdate date,
	foreign key(su_code) references supplier(supplier_code)
	
);

CREATE TABLE utility(
	utility_type varchar(40) not null,
	amount int,
	contractdate date,
	primary key(utility_type)
);

CREATE TABLE employee_pay(
	emp_ssn int(9) not null,
	own_ssn int(9) not null,
	hourly_wage decimal(9,2),
	foreign key(emp_ssn) references employee(employee_ssn),
	foreign key(own_ssn) references owner(owner_ssn)
);