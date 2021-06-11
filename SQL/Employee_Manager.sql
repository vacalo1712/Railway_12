-- Create Database Employee_Manager
DROP DATABASE IF EXISTS Employee_Manager;
CREATE DATABASE Employee_Manager;
USE Employee_Manager;

-- CREATE TABLE DEPARTMENT
DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
Department_Number	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Department_Name		VARCHAR (50) NOT NULL UNIQUE
);

-- CREATE TABLE Employee
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee(
Employee_Number		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Employee_Name		VARCHAR (50) NOT NULL,
Department_Number	INT UNSIGNED NOT NULL,
FOREIGN KEY (Department_Number) REFERENCES Department(Department_Number) ON DELETE CASCADE
);

-- CREATE TABLE Skill
DROP TABLE IF EXISTS Skill;
CREATE TABLE Skill(
Skill_Number		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Skill_Name			VARCHAR (50) NOT NULL UNIQUE
);

-- CREATE TABLE Employee_Skill
DROP TABLE IF EXISTS Employee_Skill;
CREATE TABLE Employee_Skill(
Employee_Number		INT UNSIGNED NOT NULL,
Skill_Number		INT UNSIGNED NOT NULL,
Date_Registered		DATE,
FOREIGN KEY (Employee_Number) REFERENCES Employee (Employee_Number) ON DELETE CASCADE,
FOREIGN KEY (Skill_Number) REFERENCES Skill (Skill_Number) ON DELETE CASCADE
);

-- INSERT DATA department
insert into department (Department_Name) values ('Support');
insert into department (Department_Name) values ('Engineering');
insert into department (Department_Name) values ('PM');
insert into department (Department_Name) values ('Training');
insert into department (Department_Name) values ('Services');
insert into department (Department_Name) values ('Marketing');
insert into department (Department_Name) values ('Legal');
insert into department (Department_Name) values ('Sales');
insert into department (Department_Name) values ('Product Management');
insert into department (Department_Name) values ('Human Resources');

-- INSERT DATA Employee
insert into Employee (Employee_Name, Department_Number) values ('Carrissa Wadwell', 2);
insert into Employee (Employee_Name, Department_Number) values ('Hermia Blanko', 2);
insert into Employee (Employee_Name, Department_Number) values ('Erl Mattisson', 5);
insert into Employee (Employee_Name, Department_Number) values ('Rodolphe D''Aguanno', 6);
insert into Employee (Employee_Name, Department_Number) values ('Cori Blewmen', 1);
insert into Employee (Employee_Name, Department_Number) values ('Isaac Harcus', 10);
insert into Employee (Employee_Name, Department_Number) values ('Marietta Dubose', 8);
insert into Employee (Employee_Name, Department_Number) values ('Rozamond Sautter', 10);
insert into Employee (Employee_Name, Department_Number) values ('Sherri Gethouse', 5);
insert into Employee (Employee_Name, Department_Number) values ('Johannes Petricek', 5);
insert into Employee (Employee_Name, Department_Number) values ('Onfroi Olner', 8);
insert into Employee (Employee_Name, Department_Number) values ('Blisse Lynn', 7);
insert into Employee (Employee_Name, Department_Number) values ('Cesaro Yglesias', 5);
insert into Employee (Employee_Name, Department_Number) values ('Egon Savary', 2);
insert into Employee (Employee_Name, Department_Number) values ('Jillana Slad', 2);
insert into Employee (Employee_Name, Department_Number) values ('Jackie Paviour', 8);
insert into Employee (Employee_Name, Department_Number) values ('Gasparo Sibthorpe', 3);
insert into Employee (Employee_Name, Department_Number) values ('Saxe Mulvihill', 9);
insert into Employee (Employee_Name, Department_Number) values ('Aile Dagg', 9);
insert into Employee (Employee_Name, Department_Number) values ('Valerye Spirritt', 2);
insert into Employee (Employee_Name, Department_Number) values ('Lydon Duddin', 1);
insert into Employee (Employee_Name, Department_Number) values ('Westleigh Sherewood', 4);
insert into Employee (Employee_Name, Department_Number) values ('Marjorie Farrah', 4);
insert into Employee (Employee_Name, Department_Number) values ('Wit Sarge', 7);
insert into Employee (Employee_Name, Department_Number) values ('Devin De Brett', 2);
insert into Employee (Employee_Name, Department_Number) values ('Dael Spittall', 4);
insert into Employee (Employee_Name, Department_Number) values ('Dela de Werk', 1);
insert into Employee (Employee_Name, Department_Number) values ('Lira Ceresa', 4);
insert into Employee (Employee_Name, Department_Number) values ('Banky Pridham', 9);
insert into Employee (Employee_Name, Department_Number) values ('Mitchell Tredger', 3);

-- INSERT DATA Skill
INSERT INTO Skill (Skill_Name )
VALUES ('SQL' ),
('Java' ),
('C++'),
('Pyton'),
('HTML'),
('PHP'),
('Swift'),
('C#');

-- INSERT DATA Employee_Skill
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (14, 4, '2021/03/12');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (3, 3, '2021/03/16');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (30, 4, '2021/04/15');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (5, 8, '2020/08/11');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (6, 6, '2021/03/08');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (12, 8, '2020/12/20');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (13, 5, '2020/06/25');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (6, 3, '2021/01/17');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (30, 4, '2021/01/02');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (9, 1, '2021/01/16');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (12, 3, '2020/09/07');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (5, 5, '2020/09/29');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (6, 2, '2021/04/26');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (15, 7, '2021/03/07');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (22, 3, '2021/03/18');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (1, 2, '2020/09/12');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (1, 3, '2021/02/15');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (3, 8, '2020/06/10');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (15, 4, '2020/06/10');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (29, 5, '2021/01/07');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (16, 8, '2021/01/26');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (8, 1, '2021/04/17');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (7, 4, '2020/07/29');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (17, 7, '2020/11/12');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (19, 5, '2021/04/17');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (16, 4, '2020/08/08');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (29, 7, '2020/09/30');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (26, 4, '2020/12/17');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (4, 6, '2020/05/30');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (14, 5, '2020/06/20');

-- Cho table sau:
-- Department (Department_Number, Department_Name)
-- Employee_Table (Employee_Number, Employee_Name,
-- Department_Number)
-- Employee_Skill_Table (Employee_Number, Skill_Number, Date Registered)
-- Skill_Table (Skill_Number, Skill_Name)
-- Question 1: Tạo table với các ràng buộc và kiểu dữ liệu
-- Question 2: Thêm ít nhất 10 bản ghi vào table
-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java
-- Hướng dẫn: sử dụng UNION
-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
-- Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban.
-- Hướng dẫn: sử dụng GROUP BY
-- Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.
-- Hướng dẫn: sử dụng DISTINCT


-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java

SELECT		E.Employee_Name, S.Skill_Name
FROM		employee E
JOIN		employee_Skill ES ON E.employee_Number = ES.employee_Number
JOIN		Skill S ON ES.Skill_Number = S.Skill_Number
WHERE		S.Skill_Name = 'Java'
;

-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT		D.Department_Name, count(D.Department_Number) AS So_NV
FROM		department D
JOIN		employee E ON D.Department_Number = E.Department_Number
GROUP BY	D.Department_Number
HAVING		So_NV > 3
;

-- Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban.
-- Hướng dẫn: sử dụng GROUP BY
SELECT		D.Department_Name, E.Employee_Name
FROM		department D
RIGHT JOIN	employee E ON D.Department_Number = E.Department_Number
GROUP BY	E.Employee_Number
ORDER BY	D.Department_Name
;

-- Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.
-- Hướng dẫn: sử dụng DISTINCT
SELECT		E.Employee_Number, Employee_Name, count(S.Skill_Number) AS So_Skill
FROM		employee E
JOIN		employee_skill ES ON E.Employee_Number = ES.Employee_Number
JOIN		skill S ON ES.Skill_Number = S.Skill_Number
GROUP BY	E.Employee_Number
HAVING		So_Skill > 1
;




