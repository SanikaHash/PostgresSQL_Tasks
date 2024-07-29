--Custom constraint after table is created that particular column to not allow value ('a1', 'b1' , 'check')

CREATE TABLE information(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INT
)

SELECT * FROM information

INSERT INTO information(first_name,last_name,age) 
values ('name1','last1',78),
('name2','last1',78),('name3','last3',15),
('name4','last4',80),('name5','last5',66),
('name6','last6',23),('name7','last7',78),
('name8','last8',25),('name9','last9',78),
('name10','last10',50),('name11','last11',56),
('name12','last12',98),('name13','last13',79),
('name14','last14',35),('name15','last15',67),
('name16','last16',56),('name17','last17',45),
('name18','last18',75),('name19','last19',55)

--adding a constraint to check where age should not be greater than 78
SELECT * FROM information WHERE age>78

UPDATE information
SET age = 78
WHERE age > 78

ALTER TABLE information
ADD CONSTRAINT age_range
CHECK(age<=78)

--adding a custom constraint so that particular column will not allow values ('a1', 'b1' , 'check')
INSERT INTO information(first_name,last_name,age)
VALUES ('a1','test',30)

ALTER TABLE information
ADD CONSTRAINT first_name_check
CHECK (first_name NOT IN ('a1','b1','check'))
