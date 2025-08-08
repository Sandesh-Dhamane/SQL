create database Assignments;
use Assignments;

-- 1. Create table Employee_Details with following columns and insert below values in it. 
-- Note: Use appropriate data type for each column. 
Create table Employee_Details(
    E_id int primary key,
    F_name varchar(100),
    Dept_id varchar(20),
    Email_id varchar(100),
    salary int,
    Hire_date date
);

insert into Employee_Details(E_id, F_name, Dept_id, Email_id, salary, Hire_date) 
values
-- (101,'abigail','10_Prod','Abigail_Abraham@priory.com',99446,'1995-06-24');
(102,'Alexandra','10_Prod','Alexandra_Allan@priory.com',35106,'1995-06-25'),
(103,'Alison','10_Prod','Alison_Alsop@priory.com',60137,'1995-06-26'),
(104,'Amanda','10_Prod','Amanda_Anderson@priory.com',34888,'1995-06-27'),
(105,'Amelia','10_Prod','Amelia_Arnold@priory.com',22362,'1995-06-28'),
(106,'Amy','20_RD','Amy_Avery@priory.com',46237,'1995-06-29'),
(107,'Andrea','20_RD','Andrea_Bailey@priory.com',27937,'1995-06-30'),
(108,'Angela','20_RD','Angela_Baker@priory.com',27937,'1995-07-01'),
(109,'Anna','20_RD','Angela_Baker@priory.com',63958,'1995-07-02'),
(110, 'Anne', '20_RD', 'Anne_Bell@priory.com', 24070, '1995-07-03'),
(111, 'Audrey', '20_RD', 'Audrey_Berry@priory.com', 24070, '1995-07-04'),
(112, 'Ava', '20_RD', 'Ava_Black@priory.com', 58388, '1995-07-05'),
(113, 'Bernadett', NULL, 'Bernadette_Bond@priory.com', 68857, '2000-07-07'),
(114, 'Carol', NULL, 'Carol_Bower@priory.com', 35546, '2000-07-07'),
(115, 'Caroline', NULL, 'Caroline_Brown@priory.com', 80291, '2000-07-07');

select * from EMPLOYEE_DETAILS;

-- 2. Write a Query to Display the employee details whose salary is higher than 55900. 
select * from EMPLOYEE_DETAILS where salary>55900;

-- 3. Write a Query to Display the employee details whose salary is higher than 55900 and less than 85000.
-- Note: use BETWEEN Clauses.
select * from EMPLOYEE_DETAILS where salary between 55900 AND 85000;

-- 4. Write a Query to Display all employee details whose first Name starts with A from employee_details table. 
-- Note: Use Like Operator.
select * from EMPLOYEE_DETAILS where F_NAME like 'A%';

-- 5. What are the different types of SQL command/Statements that explain it briefly? 
-- Note: Prepared the notes for it. 

-- 6. What is meant by database, SQL and DBMS explain properly. 
-- Note: Prepared the notes for it. 

-- 7. What is Oracle and what are its different editions? 
-- Note: Prepared the notes for it. 

-- 8. What is the difference between CHAR and VARCHAR2? 
-- Note: Prepared the notes for it. 

-- 9. What is the difference between TRUNCATE, DELETE and DROP explained with the help of an example? 
-- Note: Prepared the notes for it as well as Queries. 

-- 10. What do you mean by MERGE in oracle and how we merge two tables? 
-- Note: Prepared the notes for it as well as write a query to explain with the help of example. 

-- 11. What are the different types of database objects? 
-- Note: Prepared the notes for it. 

-- 12. Write a query to display the current date and time? 
SELECT GETDATE() AS Current_Date_Time;

-- 13. Write a query to display all the employee details from employee_details whose department did not equal 20_RD. 
select * from EMPLOYEE_DETAILS where DEPT_ID != '20_RD';

-- 14. Write a query to get the employee details whose department_id is null?
select * from EMPLOYEE_DETAILS where DEPT_ID IS NULL;

-- 15. Write a query to display all the employee details from employee_details whose department is 20_RD and first_name starts with A. 
SELECT * FROM EMPLOYEE_DETAILS WHERE DEPT_ID = '20_RD' AND F_NAME LIKE 'A%';

-- 16. Write a query to display all the employee details from employee_details whose salary is between 125000 to 50000 and department_id is 20_RD.
SELECT * FROM EMPLOYEE_DETAILS WHERE SALARY BETWEEN 25000 AND 50000 AND DEPT_ID = '20_RD';

-- 17. Create an EMP_DETAILS table from the existing Employee_Details table with all data.
CREATE TABLE EMP_DETAILS AS SELECT * FROM EMPLOYEE_DETAILS;

-- 18. Create a EMP_DETAILS_20RD table from the existing Employee_Details table and the new table should contain the records whose department_id is 20_RD. 
CREATE TABLE EMP_DETAILS_20RD AS SELECT * FROM EMPLOYEE_DETAILS WHERE DEPT_ID='20_RD';
SELECT * FROM EMP_DETAILS_20RD;

-- 19. Write a query to insert all the records from EMP_DETAILS to EMP_DETAILS_20RD.
INSERT INTO EMP_DETAILS_20RD SELECT * FROM EMP_DETAILS;

-- 20. Rename table name from EMP_DETAILS_20RD to EMP_DETAILS_20. 
-- For Oracle -> RENAME TABLE EMP_DETAILS_20RD TO EMP_DETAILS_20;
ALTER TABLE EMP_DETAILS_20RD RENAME TO EMP_DETAILS_20;

-- 21. Write a query to add the GENDER column in the EMP_DETAILS table. 
ALTER TABLE EMP_DETAILS ADD COLUMN GENDER VARCHAR(10);

-- 22. Write a query to drop the GENDER column in the EMP_DETAILS table.
ALTER TABLE EMP_DETAILS DROP COLUMN GENDER;

-- 23. Write a query to change first name and email id from EMP_DETAILS table whose E_id 108. new f_name should be johnny and email_id should be Perterson@gmail.com 
-- Note: these changes should do with one query only. 
UPDATE EMP_DETAILS SET F_name = 'Johnny', EMAIL_ID = 'Perterson@gmail.com' WHERE E_ID = 108;
SELECT * FROM EMP_DETAILS;

-- 24. Write a query to delete employee details from employee_details whose salary is higher than 50000 or first_name should start with C.
DELETE FROM EMPLOYEE_DETAILS WHERE SALARY > 50000 OR F_NAME LIKE 'C%';

-- 25. List out the data types in oracle.

-- 26. Write a query to delete all the records from the EMP_DETAILS_20RD table. 
-- Note: Use delete statement.
DELETE FROM EMP_DETAILS_20;
SELECT * FROM EMP_DETAILS_20;

-- 27. Write a query to create a new user as infa with infa password. 
CREATE USER infa
PASSWORD = 'infa'
DEFAULT_ROLE = PUBLIC
DEFAULT_WAREHOUSE = MY_WH
DEFAULT_NAMESPACE = MY_DB.SCHEMA_NAME;

-- 28. Write a query to give select, insert, update permission to infa user from system user. (GRANT)
-- GRANT SELECT, INSERT, UPDATE ON EMPLOYEE_DETAILS TO infa;

-- 29. Explain COMMIT, ROLLBACK and SAVEPOINT with help of example. 

-- 30. What is the max length of the identifier? 

-- 31. Which is the latest version of Oracle database? 

-- 32. What all versions are there of the Oracle database? 

-- 33. Write a query to change the column name First_Name to F_Name?
ALTER TABLE EMP_DETAILS RENAME COLUMN F_Name TO First_Name;
