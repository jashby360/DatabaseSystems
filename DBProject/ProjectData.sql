/*EMPLOYEE(hire_date, employee_ssn, manager_ssn(just put null if no manager), AVGHOURSAYEAR)*/
/*Office 1*/
INSERT into employee values(date '2018-12-17',123456789,null,342);
INSERT into employee values(date '2017-08-24',345215678,123456789,243);
INSERT into employee values(date '2014-07-06',435215667,123456789,156);
INSERT into employee values(date '2012-08-22',771234567,123456789,221);
INSERT into employee values(date '2017-01-05',653421343,123456789,123);

/*Office 2*/
INSERT into employee values(date '2011-11-07',111222333,null,436);
INSERT into employee values(date '2013-09-24',222314556,111222333,324);
INSERT into employee values(date '2010-08-08',777444362,111222333,356);
INSERT into employee values(date '2017-05-06',884455933,111222333,444);
INSERT into employee values(date '2017-02-14',911223344,111222333,213);

/*HEADMA(EMPLOYEE SSN, LOCATION)*/
/*Office 1*/
INSERT into headMA values(123456789,'242 Stoic Rd.');

/*Office 2*/
INSERT into headMA values(222314556,'567 Naud Rd.');

/*FRONTDESK(EMPLOYEE SSN, LOCATION)*/
/*Office 1*/
INSERT into frontdesk values(345215678,'242 Stoic Rd.');
INSERT into frontdesk values(435215667,'242 Stoic Rd.');
INSERT into frontdesk values(653421343,'242 Stoic Rd.');

/*Office 2*/
INSERT into frontdesk values(777444362,'567 Naud Rd.');
INSERT into frontdesk values(884455933,'567 Naud Rd.');
INSERT into frontdesk values(911223344,'567 Naud Rd.');

/*BILLER(EMPLOYEE SSN,LOCATION)*/
/*Office 1*/
INSERT into biller values(771234567,'242 Stoic Rd.');

/*Office 2*/
INSERT into biller values(111222333,'567 Naud Rd.');

/*Only need these doctor values only*/
INSERT into doctor values(332211551,'Dubois Smith','Ph.D',9283765600);
INSERT into doctor values(221177445,'Frank Zane','Ph.D',8812234556);
INSERT into doctor values(665577889,'Clarisa Clark','Ph.D',0022004431);

/*Only need these doctor values only*/
INSERT into head_doctor values(332211551,'Pre-Med',1996);
INSERT into sub_doctor values(221177445,'Pharmaceutical',2014);
INSERT into sub_doctor values(665577889,'Psychology',2017);

/*PATIENT(DOCTOR_SSN, NAME, PATIENT_SSN,AGE,CONTACT_CODE(just put null),HEALTH HISTORY,INSURANCE)*/
INSERT into patient values(221177445,'Leroy Jenkins',123412345,26,null,'Scoliosis','Life Haven');
INSERT into patient values(332211551,'Eric Macoye',111111111,41,null,'Obesity','Anthem');
INSERT into patient values(221177445,'Lenin Spike',222222222,33,null,'High Blood Pressure','Humana');
INSERT into patient values(665577889,'Jamal Ashby',333333333,43,null,'Stroke','Aetna');
INSERT into patient values(332211551,'Ashan Michael',444444444,18,null,'Asthma','Cigna');
INSERT into patient values(221177445,'Latonda Williams',555555555,22,null,'Depression','Highmark');
INSERT into patient values(665577889,'Lisa Tran',666666666,32,null,'Arthritis','Molina Healthcare');
INSERT into patient values(221177445,'Matthew Tran',777777777,67,null,'Heart Disease','Kaiser Permanente');
INSERT into patient values(221177445,'Hoang Nguyen',888888888,34,null,'Osteoporosis','Anthem');
INSERT into patient values(332211551,'Lance Pappilion',999999999,45,null,'Epilepsy','Life Haven');

/*Only one owner is needed*/
INSERT into owner values(332211551,'Dubois Smith','345-657-2213');

/*MEDICAL_OFFICE(office_code, location_number,address,phone_number, company_name, owner_ssn)*/
/*Office 1*/
INSERT into medical_office values('8uy6y',1,'242 Stoic Rd.',2134335678,'Mic&Pat Clinic',332211551);

/*Office 2*/
INSERT into medical_office values('o9uyt',2,'567 Naud Rd.',4047556789,'Mic&Pat Clinic',332211551);

/*RESERVATION(office_code, patient_ssn, reservation_date)*/
INSERT into reservation values('8uy6y',123412345,date '2019-04-03');
INSERT into reservation values('o9uyt',111111111,date '2019-07-13');
INSERT into reservation values('8uy6y',222222222,date '2019-08-01');
INSERT into reservation values('o9uyt',333333333,date '2019-12-13');
INSERT into reservation values('8uy6y',444444444,date '2019-02-24');
INSERT into reservation values('o9uyt',555555555,date '2019-11-27');
INSERT into reservation values('8uy6y',666666666,date '2019-10-08');
INSERT into reservation values('o9uyt',777777777,date '2019-11-11');
INSERT into reservation values('8uy6y',888888888,date '2019-09-03');
INSERT into reservation values('8uy6y',999999999,date '2019-01-23');

/*lab_project(office_code, patient_ssn,health status)*/
INSERT into lab_project values('8uy6y',123412345,'Healthy');
INSERT into lab_project values('o9uyt',111111111,'Sickly');
INSERT into lab_project values('8uy6y',222222222,'Healthy');
INSERT into lab_project values('o9uyt',333333333,'Sickly');
INSERT into lab_project values('8uy6y',444444444,'Healthy');
INSERT into lab_project values('o9uyt',555555555,'Sickly');
INSERT into lab_project values('8uy6y',666666666,'Healthy');
INSERT into lab_project values('o9uyt',777777777,'Sickly');
INSERT into lab_project values('8uy6y',888888888,'Healthy');
INSERT into lab_project values('8uy6y',999999999,'Sickly');

/*SUPPLIER(supplier_code, company_name, address, product_name)*/
INSERT into supplier values('a0r43','McNeil Consumer Healthcare','Fort Washington, Pennsylvania','Tylenol');
INSERT into supplier values('xo945','Merck & Co., Inc.','Rome, Georgia','Belsomra');
INSERT into supplier values('44re3','Novo Nordisk','Los Angeles, California','Victoza');
INSERT into supplier values('l4rr5','Janssen','New York, New York','Invokana');
INSERT into supplier values('1wwq3','Daiichi Sankyo, Inc.','Chicago, Illinois','Tribenzor');
INSERT into supplier values('z9u8e','AstraZeneca','Houston, Texas','Symbicort');
INSERT into supplier values('p3er4','AstraZeneca','Phoenix, Arizona','Bydureon BCISE');

/*Medical_Supply(SUPPLIER CODE,null,AMOUNT, CONTRACT DATE)*/
INSERT into medical_supply values('a0r43',null,300,date '2019-08-09');
INSERT into medical_supply values('xo945',null,250,date '2019-07-19');
INSERT into medical_supply values('44re3',null,400,date '2019-11-14');
INSERT into medical_supply values('l4rr5',null,225,date '2019-10-12');
INSERT into medical_supply values('1wwq3',null,556,date '2019-01-01');
INSERT into medical_supply values('z9u8e',null,245,date '2019-09-17');
INSERT into medical_supply values('p3er4',null,100,date '2019-05-10');


/*UTILITY(Utility Type, Amount, Contract Date)*/
INSERT into utility values('Electricity',1,date '2019-11-11');
INSERT into utility values('Water',1,date '2019-11-13');
INSERT into utility values('Waste',1,date '2019-11-12');
INSERT into utility values('Internet',1,date '2019-11-14');
INSERT into utility values('IT',1,date '2019-11-15');

/*EMPLOYEE_PAY(employee_ssn,owner_ssn,hourly_wage)*/
INSERT into employee_pay values(123456789,332211551,20.75);
INSERT into employee_pay values(345215678,332211551,14.65);
INSERT into employee_pay values(435215667,332211551,15.50);
INSERT into employee_pay values(771234567,332211551,16.55);
INSERT into employee_pay values(653421343,332211551,17.70);
INSERT into employee_pay values(111222333,332211551,21.75);
INSERT into employee_pay values(222314556,332211551,19.56);
INSERT into employee_pay values(777444362,332211551,18.45);
INSERT into employee_pay values(884455933,332211551,17.30);
INSERT into employee_pay values(911223344,332211551,17.50);