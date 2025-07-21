create database mybank;
use mybank;
select * from customers;
select * from accounts;
select * from transactions;
select * from loans;
select * from creditcards;
select * from branches;
select * from atms;

-- Calculate total number of customers 
select count(*) as totalcustomers from customers;

-- Calculate total number of accounts 
select count(*) as totalaccounts from accounts;

-- Calculate total loan amounts 
select sum(amount) as totalloansamount from loans;

-- Calculate total credit limit across all credit cards
select sum(creditlimit) as totalcreditlimit from creditcards;

-- Find all active accounts
select * from accounts
where status='active';

-- Final all accounts made on 15th jan 2023 
select * from transactions 
where transactiondate>'2023-01-15';

-- Find loans with interest rates above 5.0 
select * from loans
where interestrate>5.0;

-- Find credit cards with balances exceeding the credit limit 
select * from creditcards
where balance>creditlimit;

-- Retrive customer details along with their accounts
select c.customerid,c.name,c.age,a.accountnumber,a.accounttype,a.balance
from customers c
join accounts a on c.customerid=a.customerid;

-- Retrive transaction details along with associated account and customer information
select t.transactionid,t.transactiondate,t.amount,t.type,t.description,a.accountnumber,a.accounttype,c.name as customername
from transactions t
join accounts a on t.accountnumber=a.accountnumber
join customers c on a.customerid=c.customerid;

-- Top 10 Customers with highest loan amount 
select c.name,l.amount as loanamount
from customers c
join loans l on c.customerid=l.customerid
order by l.amount desc
limit 10;

-- Delete inactive accounts 
set sql_safe_updates=0;
delete from accounts
where status='inactive';

-- Find customers with multiple accounts
select c.customerid,c.name,count(a.accountnumber) as numaccounts
from customers c
join accounts a on c.customerid=a.customerid
group by c.customerid,c.name
having count(a.accountnumber) >1;

-- Print the first 3 characters of Name from Customers table 
select substring(name,1,3) as firstthreecharactersofname
from customers;

-- Print the Name from Customers table into two columns Firstname and Lastname 
select 
substring_index(name, ' ',1) as firstname,
substring_index(name, ' ',-1) as lastname
from customers;

-- SQL query to show only rows from Customers Table 
select * from customers
where mod(customerid,2)<>0;

-- SQL query to determine the 5th highest loan Amount without using limit keyword
select distinct amount
from loans l1
where 5=(
select count(distinct Amount)
from loans l2
where l2.Amount>=l1.Amount
);

-- SQL query to show the second highest loan from the loans table using sub_query
select max(Amount) as secondhighestloan
from loans
where Amount<(
select max(Amount)
from loans
);

-- SQL query to list CustomerID whose account is Inactive 
select customerid
from accounts
where status='inactive';

-- SQL query to fetch the first row of the Customers table
select * from customers
limit 1;

-- SQL query to show the current date and time 
select now() as currentdatetime;

-- SQL query to create a new table which consists of data and structure copied from the Customers 
create table customersclone like customers;
insert into customersclone select * from customers;

-- SQL query to calculate how many days are remaining for customers to pay off the loans 
select customerid,datediff(enddate,curdate()) as daysremaining
from loans
where enddate>curdate();

-- Query to find the latest transaction date for each account 
select accountnumber,max(transactiondate) as latesttransactiondate
from transactions
group by accountnumber;

-- Find the average age of customers 
select avg(age) as averageage
from customers;

-- Find accounts with less than minimum amount for accounts opened before 1st jan 2022
select accountnumber,balance
from accounts
where balance<25000
and opendate<='2022-01-01';

-- Finds loans that are currently active
select * from loans
where enddate>=curdate()
and status='active';

-- find the total amount of transaction for each account for a specific month 
select accountnumber,sum(amount) as totalamount
from transactions
where month(transactiondate)=6
and year(transactiondate)=2023
group by accountnumber;

-- Find the average credit card balance for each customer
select CustomerID,avg(balance) as averagecreditcardbalance
from creditcards
group by customerid; 

-- Find the number of inactive atms per loaction 
select location,count(*) as numberofactiveatms
from atms
where status="out of service"
group by location;

-- Categorize customers into three agr groups
select name,age,
case
when age<30 then 'below 30'
when age between 30 and 60 then '30 to 60'
else 'above 60'
end as age_group
from customers;








