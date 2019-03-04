drop database Customers;
create database Customers;
use Customers;
SELECT * FROM customer;
SELECT count(*) as 'Customer Count' from Customer;
select count(distinct company)as 'Distinct Companies' from Customer;
ALTER table Customer ADD CustomerID int NOT NULL primary key auto_increment;
ALTER table Customer ADD CompanyID int;
select CompanyID, company from Customer;

create table Company (
companyID int NOT NULL AUTO_INCREMENT,
Company varchar(255),
primary key (companyID)
);
select * from Company;


select distinct Company from Customer where length(company)>0 and company is not null order by company;
insert into Company (company) select distinct company from Customer where length(company)>0 and company is not null order by company;
select * from Company;
update Customer c set c.companyID = (select t.companyID from Company t where t.company=c.company);

select c.companyID,c.company,t.companyID,t.Company from Customer c inner join Company t on c.CompanyId=t.CompanyID;
Alter table Customer drop column company;
ALTER table Customer drop column fullname;
use Customers;
use customers;
select CONCAT(FirstName,' ',LastName) as 'Full Name' from Customer;
select * from Customer;
select * from Company;
select CONCAT(FirstName,' ',LastName) as 'Full Name', company from Customer 
inner join Company on customer.companyid=Company.companyid;
select * from Company;

select * from Customer where LastName='Smith';
select CONCAT(FirstName,' ',LastName) as 'Full Name', Position, Customer.companyID, company from Customer inner join Company on customer.companyid=Company.companyid where City='Virginia Beach';
SELECT 
  customer.companyID, 
  COUNT(customer.companyID) AS popularity,
company from Customer inner join Company on customer.companyid=Company.companyid
GROUP BY companyID
ORDER BY popularity DESC;

SELECT State, COUNT(State) AS Popularity from Customer GROUP BY State ORDER BY popularity DESC;
Select * from customer where FirstName ='Paula' and state='CA';
update customer set LastName='Smith' where FirstName ='Paula' and state='CA';
Select * from customer where FirstNAme ='Vanessa';
update customer set LastName='Smith' where FirstName ='Vanessa' and LastName='Brown';
select * from customer where FirstName='Vanessa';

SELECT LastName, COUNT(LastName) AS Popularity from Customer GROUP BY LastName ORDER BY popularity DESC;
