USE Testing_System_Assignment_3;

DROP PROCEDURE IF EXISTS Get_DepartmentName_by_ID;
DELIMITER $$
CREATE PROCEDURE Get_DepartmentName_by_ID (IN in_ID INT UNSIGNED)
	BEGIN
		SELECT 	*
        FROM	Department
        Where	DepartmentID = in_ID
        ;
    END $$
DELIMITER ;

CALL Get_DepartmentName_by_ID (3);


-- Exercise 1: Tiếp tục với Database Testing System
-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó

DROP PROCEDURE IF EXISTS Get_Acc_Dep_Name;
DELIMITER $$
CREATE PROCEDURE Get_Acc_Dep_Name (IN in_DepName VARCHAR (50))
	BEGIN
		SELECT 	A.*, D.DepartmentName
        FROM	`Account` A
        JOIN	department D ON A.DepartmentID = D.DepartmentID
        Where	D.DepartmentName = in_DepName
        ;
    END $$
DELIMITER ;

CALL Get_Acc_Dep_Name ('Sale');

-- Question 2: Tạo store để in ra số lượng account trong mỗi group
DROP PROCEDURE IF EXISTS Get_SL_Acc_By_Group;
DELIMITER $$
CREATE PROCEDURE Get_SL_Acc_By_Group ()
	BEGIN
		SELECT		GroupID, ( SELECT GroupName FROM `Group` WHERE GroupID = GA.GroupID) AS G_Name, count(*) AS SL
		FROM		groupaccount GA
		GROUP BY	GroupID
		;
	END$$
DELIMITER ;

CALL Get_SL_Acc_By_Group();

-- Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo trong tháng hiện tại
DROP PROCEDURE IF EXISTS Get_TypeID_By_Max_Q;
DELIMITER $$
CREATE PROCEDURE Get_TypeID_By_Max_Q (OUT Out_TypeID MEDIUMINT)
	BEGIN
		SELECT	MONTH(now())
        FROM	question Q
        JOIN	typequestion T ON Q.TypeID = T.TypeID
        WHERE	Q.CreateDate
		;
	END$$
DELIMITER ;

-- Question 4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất
DROP PROCEDURE IF EXISTS Get_TypeID_By_Max_Q;
DELIMITER $$
CREATE PROCEDURE Get_TypeID_By_Max_Q (OUT Out_TypeID MEDIUMINT)
	BEGIN
		SELECT	TypeID INTO Out_TypeID
        FROM	question
        GROUP BY	TypeID
        HAVING	count(*) = (SELECT 	max(SL)
							FROM	(SELECT		count(*) AS SL
									FROM		question
									GROUP BY	TypeID) AS Q)
		;
	END$$
DELIMITER ;

SET	@ID = 0;
CALL Get_TypeID_By_Max_Q(@ID);
SELECT	@ID;
-- 5
SELECT	TypeName
FROM	typequestion
WHERE	TypeID	= @ID
;



































