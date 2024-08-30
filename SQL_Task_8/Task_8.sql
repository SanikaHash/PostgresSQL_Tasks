--> Task 8 (Part_1): Find if we can do insert, update, alter , delete on View

SELECT * FROM college
SELECT * FROM student
SELECT * FROM subject

--> Step 1: Create a View
CREATE VIEW college_view AS
SELECT 
    id, 
    name, 
    address, 
    student, 
    staff, 
    grade, 
    mob_no, 
    email 
FROM 
    college

-->Step 2: Perform Operations on the View

-->a. INSERT Operation

INSERT INTO college_view ( name, address, student, staff, grade, mob_no, email) 
VALUES ('XYZ College', '123 Main St', 500, 30, 'A', '1234567890', 'info@xyzcollege.com')

-->b. UPDATE Operation

UPDATE college_view 
SET name = 'ABC College' 
WHERE id = 10

-->c. DELETE Operation

DELETE FROM college_view 
WHERE id = 10

-->d. ALTER Operation

ALTER VIEW college_view AS
SELECT 
    id, 
    name, 
    address, 
    grade 
FROM 
    college


--> Task 8 (Part_2): Having subquery

-->Colleges with an Average Student Age Greater Than 20

SELECT 
    c.name AS college_name,
    AVG(s.age) AS average_age
FROM 
    college c
INNER JOIN 
    student s ON c.id = s.college_id
GROUP BY 
    c.name
HAVING 
    AVG(s.age) > 20































