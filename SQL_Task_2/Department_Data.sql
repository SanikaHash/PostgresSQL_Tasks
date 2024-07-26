CREATE TABLE Departments(
	DepartmentId SERIAL PRIMARY KEY,
	DepartmentName VARCHAR(150),
	Location VARCHAR(100),
	ManagerId INT
)

SELECT * FROM Departments

INSERT INTO Departments (DepartmentName,Location,ManagerId) VALUES 
('Human Resources', 'MUMBAI', 101),
('Finance', 'DELHI', 102),
('Engineering', 'BANGALORE', 103),
( 'Marketing', 'NAGPUR', 104),
('Sales', 'PUNE', 105),
('IT', 'HYDRABAD', 106),
('Customer Service', 'GURGAON', 107),
('Operations', 'NASHIK', 108),
('Legal', 'HARYANA', 109),
('Research and Development', 'NAVI MUMBAI', 110),
('Product Management', 'NEW DELHI', 111),
('Business Development', 'JAIPUR', 112),
('Supply Chain', 'INDOR', 113),
('Procurement', 'KERLA', 114),
('Corporate Affairs', 'COEMBATUR', 115),
('Public Relations', 'THANE', 116),
('Quality Assurance', 'JALGAON', 117),
('Training and Development', 'GOA', 118),
('Risk Management', 'KOKAN', 119),
('Investor Relations', 'SHIMLA', 120)