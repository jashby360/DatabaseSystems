drop table if exists bank;
CREATE TABLE bank (
	code INT(4),
	bname varchar(15) not null,
	hq_address varchar(50) not null,
	primary key(code)
);

drop table if exists branch;
CREATE TABLE branch (
	bcode INT(4) not null,
	address varchar(50),
	branchNo INT(4) not null,
	foreign key(bcode) references bank(code)
);

drop table if exists loan;
CREATE TABLE loan(
	insurance varchar(24),
	loan_id INT(3) not null,
	lcust_id INT(4),
	lbcode INT(4) not null,
	primary key(loan_id),
	foreign key(lbcode) references bank(code)
);

drop table if exists checking;
CREATE TABLE checking(
	acct_no INT(4) not null,
	balance INT(6),
	mfee DECIMAL(9,2),
	cbcode INT(4)not null,
	primary key(acct_no),
	unique(mfee),
	foreign key(cbcode) references bank(code)
);

drop table if exists saving;
CREATE TABLE saving(
	acct_no INT(4) not null,
	balance INT(6),
	rate INT(2),
	sbcode INT(4) not null,
	primary key(acct_no),
	unique(rate),
	foreign key(sbcode) references bank(code)
);

drop table if exists customer;
CREATE TABLE customer(
	cust_id INT(4),
	cust_since INT(4) not null,
	primary key(cust_id)
);

drop table if exists company;
CREATE TABLE company(
	cname varchar(50) not null,
	address varchar(50),
	ccust_id INT(4),
	primary key(cname)
);

drop table if exists person;
CREATE TABLE person(
	ssn char(9),
	name varchar(50) not null,
	pcust_id INT(4),
	primary key(ssn)
);

ALTER TABLE customer ADD(
	foreign key(cust_id) references company(ccust_id),
	foreign key(cust_id) references person(pcust_id)
);

drop table if exists p_address;
CREATE TABLE p_address(
	pssn char(9),
	paddress varchar(50),
	primary key(paddress)
);

ALTER TABLE p_address ADD(
	foreign key(pssn) references person(ssn)
);

drop table if exists owns;
CREATE TABLE owns(
	cust_id INT(4),
	acct_no INT(4),
	primary key(cust_id,acct_no)
);