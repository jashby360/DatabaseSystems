/*Query 1- HW2*/
select code, bname
from bank
where code in (select bcode from branch group by bcode having count(bcode) > 3);

/*Query 2 - HW2*/
select name
from person
where name like '%s';

/*Query 3 - HW2*/
select count(*) as total_customer
from customer;

/*Query 4 - HW2*/
select name, pcust_id
from person
where pcust_id in (select lcust_id from loan group by lcust_id having lcust_id > 19)
and not pcust_id in (select cust_id from owns );

/*Works but hard coded in for my data*/
/*Query 5 - HW2*/
select address,branchNo
from branch
where branchNo in (1,2)
order by branchNo desc;

/*Works*/
/*Query 6 - HW2*/
(select name
from person
where pcust_id in(select cust_id from owns where acct_no in(select acct_no from saving where rate > 2)))
union
(select cname
from company
where ccust_id in (select cust_id from owns where acct_no in(select acct_no from saving where rate > 2)));

/*Works*/
/*Query 7 - HW2*/
select name
from person
where pcust_id in (select cust_id from owns where acct_no in (select acct_no from saving where balance > 10000));

/*Works but hard coded in for my data*/
/*Query 8 - HW2*/
select cname,ccust_id
from company
where ccust_id in (select cust_id from owns where cust_id = 10);

/*Works*/
/*Query 9 - HW2*/
select name, pcust_id
from person
where pcust_id in(select lcust_id from loan);

/*Works*/
/*Query 10 - HW2*/
select avg(balance)
from saving
where acct_no in (select acct_no from owns where cust_id in (select pcust_id from person));

/*WORKS couldnt find out how to join two separate queries though.*/
/*Query 11 - HW2*/
(select cname as maxMFeeCustomer
from company
where ccust_id in(select cust_id from owns where acct_no in(select acct_no from checking where mfee = (select max(mfee) from checking) group by acct_no)))
UNION
(select acct_no
from checking
where mfee = (select max(mfee) from checking) group by acct_no);

