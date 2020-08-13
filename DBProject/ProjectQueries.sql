/*1-Owner name and contact information of the medical practice.*/
	select owner_name, owner_contact
	from owner;
	
/*2-Total number of patients at the medical practice.*/
	select count(*) as total_patients
	from patient;
	
/*3-Total of healthy lab results.*/
	select *
	from lab_project
	where results = 'Healthy';

/*4-Employee with the highest hourly wage.*/
	select emp_ssn, hourly_wage
	from employee_pay
	where hourly_wage = (select max(hourly_wage) from employee_pay);

/*5-Doctor with the most patients.*/
	select doctor_co, count(doctor_co) as doctor_patients
	from patient
	group by doctor_co order by count(doctor_co)
	desc limit 1;

/*6-Office that has the most reservations.*/
	select re_office, count(re_office) as reservation_count
	from reservation
	group by re_office
	order by count(re_office) desc
	limit 1;

/*7- Supplier who supplies the most medicine.*/
	select name from supplier
	where supplier_code in (select su_code 
							from medical_supply 
							where amount = (select max(amount) from medical_supply));

/*8-Find all managers.*/
	select *
	from employee
	where manage_ssn is NULL;

/*9-Shows all employees and their working location.*/
	(select head_ssn as emp_ssn,h_location as location from headMA)union(select * from frontdesk)union(select * from biller);

/*10-Total # of employees of the whole medical practice.*/
	select count(*) as total_employees
	from employee;
	
/*11-List all medical office locations.*/
	select address
	from medical_office;
	
/*12-List the amount of employees for each office.*/
	select tem.location, count(*) as employee_amount 
	from (select h_location as location from headMA
	union ALL
	select f_location as location from frontdesk union ALL
	select b_location as location from biller) as tem
	group by location
	order by location;