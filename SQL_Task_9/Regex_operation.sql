-->Task 9: 6 regex operation example

SELECT * FROM employees
SELECT * FROM departments

-->1. Find Employees with Names Containing Exactly 4 Characters Followed by a Number
SELECT 
    employeeid, 
    employeename, 
    departmentid, 
    position, 
    salary
FROM 
    employees
WHERE 
    employeename ~ '^[a-zA-Z]{4}[0-9]$'

-->2. Find Departments Located in Cities with Names Ending in 'ville'
SELECT 
    departmentid, 
    departmentname, 
    location, 
    managerid
FROM 
    departments
WHERE 
    location LIKE '%LORE'

-->3.  Find Departments with Locations That Start with a Vowel
SELECT 
    departmentid, 
    departmentname, 
    location, 
    managerid
FROM 
    departments
WHERE 
    location ~ '^[AEIOUaeiou]'

-->4. Find Departments with Locations Containing Exactly 5 Characters
SELECT 
    departmentid, 
    departmentname, 
    location, 
    managerid
FROM 
    departments
WHERE 
    location ~ '^[A-Za-z]{5}$'

-->5. Retrieve employees whose positions start with 'Software'.
SELECT 
    employeeid, 
    employeename, 
    departmentid, 
    position, 
    salary
FROM 
    employees
WHERE 
    position ~ '^Software.*'

-->6.  Find Employees with Names Starting with 'N' and Containing Exactly 5 Characters 
SELECT 
    employeeid, 
    employeename, 
    departmentid, 
    position, 
    salary
FROM 
    employees
WHERE 
    employeename LIKE 'N____'































