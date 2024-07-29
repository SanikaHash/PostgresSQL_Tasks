--PERFORMING ALL THE LEARNED QUERIES

--1:SELECT
SELECT * FROM books

--2:INSERT
INSERT INTO books (title, genre, published_date, author_id) VALUES
('Book Title 51', 'Fiction', '2023-02-20', 1)

--3:WHERE
SELECT genre FROM books WHERE book_id = 865

--4:DISTICT
SELECT DISTINCT title,genre FROM books

--5:AND
SELECT * FROM books WHERE book_id=5 AND genre= 'Biography'

--6:OR
SELECT * FROM books WHERE genre='Fiction' OR book_id=11 

--7:NOT EQUAL TO 
SELECT * FROM books WHERE NOT  genre='Sci-Fi'

--8:COPY
COPY books FROM 'D:\Data Analytics\SQL\Assignment_SQL\PostgresSQL_Tasks\SQL_TASK_4\Big_Data.csv' DELIMITER ',' csv header 

--9:UPDATE
UPDATE books 
SET genre='Non-Fiction'
WHERE book_id=14

--10:DELETE
DELETE FROM books
WHERE book_id=14

--11:ALTER
--11.1:ADDING COLUMN
ALTER TABLE books
ADD sample VARCHAR(50) NOT NULL DEFAULT 'IT IS A SAMPLE DATA'

--11.2:DROPING A COLUMN
ALTER TABLE books
DROP COLUMN sample

--11.3:RENAME A COLUMN
ALTER TABLE books
RENAME COLUMN published_date TO date

--11.4:CHANGING TYPE OF COLUMN
ALTER TABLE books
ALTER COLUMN title type INT

--12:IN
select * from books
WHERE genre IN ('Fiction','Sci-Fi')

--13:BETWEEN
SELECT * FROM books
WHERE book_id BETWEEN 60 AND 76

--14:FOREIGN KEY
CREATE TABLE authors(
	authors_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
)
	
SELECT * FROM authors 

INSERT INTO authors (first_name, last_name)
VALUES
('George', 'Orwell'),
('Jane', 'Austen'),
('Mark', 'Twain'),
('J.K.', 'Rowling'),
('F. Scott', 'Fitzgerald'),
FOREIGN KEY (author_id) REFERENCES authors (author_id)
