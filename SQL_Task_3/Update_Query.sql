-- Query to update multiple rowa with different values in particular column
SELECT * FROM college

UPDATE college
set name = CASE
WHEN id = 1 THEN 'NAME1'
WHEN id = 2 THEN 'NAME2'
WHEN id = 3 THEN 'NAME3'
WHEN id = 4 THEN 'NAME4'
WHEN id = 5 THEN 'NAME5'
WHEN id = 6 THEN 'NAME6'
WHEN id = 7 THEN 'NAME7'
WHEN id = 8 THEN 'NAME8'
WHEN id = 9 THEN 'NAME9'
WHEN id = 10 THEN 'NAME10'
END
WHERE id IN (1,2,3,4,5,6,7,8,9,10)