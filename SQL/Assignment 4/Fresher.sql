-- Tạo Database Fresher
DROP DATABASE IF EXISTS Fresher;
CREATE DATABASE Fresher;

USE Fresher;

-- Tạo Bảng Trainee
DROP TABLE IF EXISTS Trainee;
CREATE TABLE Trainee (
	TraineeID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Full_Name			VARCHAR (50) NOT NULL,
	Birth_Date			DATE,
	Gender				ENUM ('Male','Female','Unknown') NOT NULL,
	ET_IQ				TINYINT CHECK (ET_IQ >0 AND ET_IQ <=20),
	ET_Gmath			TINYINT CHECK (ET_Gmath >0 AND ET_Gmath <=20),
	ET_English			TINYINT CHECK (ET_English >0 AND ET_English <=50),
	Training_Class		NVARCHAR (50) NOT NULL,
	Evaluation_Notes	TEXT
);

-- INSERT TABLE Trainee
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Abbi Martinot', '2009/11/26', 'Female', 18, 12, 10, 'VTI001', 'DHBKHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Freddie Mallord', '2001/12/28', 'Female', 12, 19, 2, 'VTI003', 'HVBCVT');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Clarissa Limpricht', '2006/09/28', 'Female', 2, 7, 7, 'VTI002', 'DHBKHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Agna Buyers', '1990/07/17', 'Female', 10, 2, 28, 'VTI001', 'HVBCVT');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Nefen Cappellc', '2008/07/12', 'Male', 3, 17, 1, 'VTI003', 'DHQGHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Chico Stacy', '2000/09/12', 'Male', 10, 1, 32, 'VTI002', 'DHBKHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Jammie Reboul', '2001/10/15', 'Female', 20, 12, 2, 'VTI003', 'HVBCVT');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Ignace Nisbith', '2002/04/26', 'Male', 2, 13, 15, 'VTI001', 'DHQGHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Rriocard Shawley', '1998/06/21', 'Male', 4, 8, 30, 'VTI003', 'DHBKHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Katie Sprankling', '2005/09/23', 'Female', 20, 10, 20, 'VTI001', 'HVBCVT');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Pen Imlock', '1995/04/07', 'Male', 12, 20, 11, 'VTI002', 'DHQGHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('NaG Blakeyc', '2008/10/03', 'Male', 13, 1, 34, 'VTI001', 'DHBKHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Daisey Byrkmyr', '1994/12/10', 'Female', 17, 5, 24, 'VTI003', 'HVBCVT');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Laney Seth', '1994/05/20', 'Male', 7, 4, 7, 'VTI003', 'DHQGHN');
insert into Trainee (Full_Name, Birth_Date, gender, ET_IQ, ET_Gmath, ET_English, Training_Class, Evaluation_Notes) values ('Baron Thrift', '1995/07/10', 'Male', 10, 12, 20, 'VTI001', 'DHQGHN');

-- Question 4: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào,
-- và sắp xếp theo ngày sinh. Điểm ET_IQ >=12, ET_Gmath>=12, ET_English>=20

SELECT	*
FROM	Trainee
WHERE	ET_IQ >=12 OR ET_Gmath>=12 OR ET_English>=20
;

-- Question 5: Viết lệnh để lấy ra thông tin thực tập sinh có tên bắt đầu bằng chữ N và kết thúc
-- bằng chữ C
SELECT	*
FROM	trainee
WHERE	Full_Name LIKE	'N%C'
;

-- Question 6: Viết lệnh để lấy ra thông tin thực tập sinh mà tên có ký thự thứ 2 là chữ G
SELECT	*
FROM	trainee
WHERE	Full_Name LIKE '__G%'
;

-- Question 7: Viết lệnh để lấy ra thông tin thực tập sinh mà tên có 10 ký tự và ký tự cuối cùng
-- là C
SELECT	*
FROM	trainee
WHERE	Full_Name LIKE '__________C'
;

-- Question 8: Viết lệnh để lấy ra Fullname của các thực tập sinh trong lớp, lọc bỏ các tên trùng nhau.
SELECT	DISTINCT Full_Name
FROM	trainee;

-- Question 9: Viết lệnh để lấy ra Fullname của các thực tập sinh trong lớp, sắp xếp các tên này
-- theo thứ tự từ A-Z.
SELECT	*
FROM	trainee
ORDER BY	Full_Name
;

-- Question 10: Viết lệnh để lấy ra thông tin thực tập sinh có tên dài nhất
SELECT		Full_Name, length(Full_Name)
FROM		Trainee;

SELECT		Full_Name, length(Full_Name)
FROM		Trainee
WHERE		length(Full_Name)	=	(	SELECT Max(length(full_name))
										FROM	Trainee)
;

-- Question 11: Viết lệnh để lấy ra ID, Fullname và Ngày sinh thực tập sinh có tên dài nhất
SELECT		TraineeID, Full_Name, Birth_Date, length(Full_Name)
FROM		Trainee
WHERE		length(Full_Name)	=	(	SELECT Max(length(full_name))
										FROM	Trainee)
;

-- Question 12: Viết lệnh để lấy ra Tên, và điểm IQ, Gmath, English thực tập sinh có tên dài nhất
SELECT		Full_Name, ET_IQ, ET_Gmath, ET_English , length(Full_Name)
FROM		Trainee
WHERE		length(Full_Name)	=	(	SELECT Max(length(full_name))
										FROM	Trainee)
;

-- Question 13 Lấy ra 5 thực tập sinh có tuổi nhỏ nhất
SELECT		year(curdate());

SELECT		Full_name, year(curdate()) - year(Birth_Date) AS Tuoi
FROM		Trainee
ORDER BY	Tuoi DESC
LIMIT		5
;

-- Question 14: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là
-- những người thỏa mãn số điểm như sau:
-- • ET_IQ + ET_Gmath>=20
-- • ET_IQ>=8
-- • ET_Gmath>=8
-- • ET_English>=18

SELECT	*
FROM	Trainee
WHERE	ET_IQ + ET_Gmath>=20 OR ET_IQ>=8 OR ET_Gmath>=8 OR ET_English>=18
;

-- Question 15: Xóa thực tập sinh có TraineeID = 5
DELETE
FROM	Trainee
WHERE	TraineeID = 5
;

-- Question 16: Xóa thực tập sinh có tổng điểm ET_IQ, ET_Gmath <=15
DELETE
FROM	Trainee
WHERE	ET_IQ <= 15 AND ET_Gmath <= 15
;

-- Question 17: Xóa thực tập sinh quá 30 tuổi
DELETE
FROM	Trainee
WHERE	year(curdate()) - year(Birth_Date) > 30
;

-- Question 18: Thực tập sinh có TraineeID = 3 được chuyển sang lớp " VTI003". Hãy cập nhật
-- thông tin vào database.
UPDATE	Trainee
SET		Training_Class = 'VTI003'
WHERE	TraineeID = 3 
;

-- Question 19: Do có sự nhầm lẫn khi nhập liệu nên thông tin của học sinh số 10 đang bị sai,
-- hãy cập nhật lại tên thành “LeVanA”, điểm ET_IQ =10, điểm ET_Gmath =15, điểm
-- ET_English = 30.
UPDATE	Trainee
SET		Full_Name = 'LeVanA',
		ET_IQ = 10,
        ET_Gmath = 15
WHERE	TraineeID = 10
;

-- Question 20: Đếm xem trong lớp VTI001 có bao nhiêu thực tập sinh.
SELECT	count(*)
FROM	Trainee
WHERE	Training_Class = 'VTI001'
;

-- Question 22: Đếm tổng số thực tập sinh trong lớp VTI001 và VTI003 có bao nhiêu thực tập sinh.
SELECT COUNT(Training_Class)
FROM Trainee
WHERE Training_Class IN ('VTI001', 'VTI003')
;

-- Question 23: Lấy ra số lượng các thực tập sinh theo giới tính: Male, Female, Unknown.
SELECT	Gender, count(*)
FROM	Trainee
GROUP BY	Gender
HAVING		Gender IN ('Male', 'FeMale')
;

-- Question 24: Lấy ra lớp có lớn hơn 5 thực tập viên
SELECT		Training_Class, count(*)
FROM		Trainee
GROUP BY	Training_Class
HAVING		count(TraineeID) > 5
;

-- Question 26: Lấy ra trường có ít hơn 4 thực tập viên tham gia khóa học
SELECT		Evaluation_Notes, count(*)
FROM		Trainee
GROUP BY	Evaluation_Notes
HAVING		count(TraineeID) < 5
;

-- Question 27: 
-- Bước 1: Lấy ra danh sách thông tin ID, Fullname, lớp thực tập viên có lớp 'VTI001'
SELECT		*
FROM		Trainee
WHERE		Training_Class = 'VTI001'
;

-- Bước 2: Lấy ra danh sách thông tin ID, Fullname, lớp thực tập viên có lớp 'VTI002'
SELECT		*
FROM		Trainee
WHERE		Training_Class = 'VTI002'
;

-- Bước 3: Sử dụng UNION để nối 2 kết quả ở bước 1 và 2
SELECT		*
FROM		Trainee
WHERE		Training_Class = 'VTI001'
UNION
SELECT		*
FROM		Trainee
WHERE		Training_Class = 'VTI002'
;
