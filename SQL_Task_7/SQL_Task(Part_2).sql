--Task 7 (Part-2):create 4 question on your data like above and solve	
SELECT * FROM college
SELECT * FROM student
SELECT * FROM subject

-- 1.List the total number of students and their average total marks per college.
SELECT 
    c.name AS college_name,
    COUNT(s.id) AS total_students,
    AVG(s.total_mark) AS average_marks
FROM 
    college c
INNER JOIN 
    student s ON c.id = s.college_id
GROUP BY 
    c.name

-- 2.Generate a report showing the total credits and the number of subjects taught by each instructor, grouped by the instructor's name.
SELECT 
    sub.instructor,
    SUM(sub.credits) AS total_credits,
    COUNT(sub.subject_id) AS total_subjects
FROM 
    subject sub
GROUP BY 
    sub.instructor

-- 3. List the total number of students and the total marks they have scored for each college, grouped by college grade.
SELECT 
    c.grade,
    COUNT(s.id) AS total_students,
    SUM(s.total_mark) AS total_marks
FROM 
    college c
INNER JOIN 
    student s ON c.id = s.college_id
GROUP BY 
    c.grade

-- 4.Find the average total marks of students in each stream, grouped by college name and stream.
SELECT 
    c.name AS college_name,
    s.stream,
    AVG(s.total_mark) AS average_total_marks
FROM 
    college c
INNER JOIN 
    student s ON c.id = s.college_id
GROUP BY 
    c.name, s.stream





















