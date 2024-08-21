-->Task 5:   10 query of group by,aggregate,having,where combination,each query should have 3 combination
select * from departments

select * from employees

-->Total Number of Employees per Department
SELECT d.departmentname, COUNT(e.employeeid) AS num_employees
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
GROUP BY d.departmentname

-->Maximum Salary in Each Department
SELECT d.departmentname, MAX(e.salary) AS max_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
GROUP BY d.departmentname

-->Total Salary by Department
SELECT d.departmentname, SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.salary > 30000
GROUP BY  d.departmentname
HAVING  SUM(e.salary) > 100000

-->Average Salary by Position in Each Department
SELECT d.departmentname, e.position, AVG(e.salary) AS avg_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.salary > 25000
GROUP BY d.departmentname, e.position 
HAVING AVG(e.salary) > 40000

--> Number of Employees per Department with Minimum Salary Filte
SELECT d.departmentname, COUNT(e.employeeid) AS num_employees
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.salary > 20000
GROUP BY d.departmentname
HAVING COUNT(e.employeeid) > 10

-->Highest Salary per Department for Specific Positions
SELECT d.departmentname, e.position, MAX(e.salary) AS highest_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.position IN ('Software Engineer', 'Operation Manager')
GROUP BY d.departmentname, e.position
HAVING MAX(e.salary) >= 50000

-->Total Salary of Employees in Specific Locations per Department
SELECT d.departmentname, SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE d.location IN ('MUMBAI', 'NAGPUR')
GROUP BY d.departmentname
HAVING SUM(e.salary) > 15000

-->Average Salary and Employee Count by Department
SELECT d.departmentname, AVG(e.salary) AS avg_salary, COUNT(e.employeeid) AS num_employees
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.salary > 30000
GROUP BY d.departmentname
HAVING AVG(e.salary) > 45000 AND COUNT(e.employeeid) > 5

-->Total Salary for Each Department with Minimum Employee Count
SELECT d.departmentname, SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.salary > 25000
GROUP BY d.departmentname
HAVING COUNT(e.employeeid) > 15

-->Average and Maximum Salary by Department for Specific Locations
SELECT d.departmentname, AVG(e.salary) AS avg_salary, MAX(e.salary) AS max_salary
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE d.location IN ('PUNE', 'BANGALORE')
GROUP BY d.departmentname
HAVING AVG(e.salary) > 40000 AND MAX(e.salary) > 60000

-->Employee Count by Position in Each Department
SELECT d.departmentname, e.position, COUNT(e.employeeid) AS num_employees
FROM departments d
JOIN employees e ON d.departmentid = e.departmentid
WHERE e.salary > 30000
GROUP BY d.departmentname, e.position
HAVING COUNT(e.employeeid) > 8














