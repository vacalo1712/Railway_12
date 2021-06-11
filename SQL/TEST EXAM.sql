USE ThucTap;


-- 2. Viết lệnh để 
-- a) Lấy tất cả các sinh viên chưa có đề tài hướng dẫn  
SELECT		*
FROM		HuongDan H 
LEFT JOIN 	Sinhvien S ON S.masv = H.masv
WHERE		H.madt IS NULL
;

-- b) Lấy ra số sinh viên làm đề tài ‘CONG NGHE SINH HOC’ 
SELECT		*
FROM		detai D
JOIN		huongdan H ON D.madt = H.madt
JOIN		sinhvien S ON H.masv = S.masv
WHERE		D.tendt = 'CONG NGHE SINH HOC'
;

-- 3. Tạo view có tên là "SinhVienInfo" lấy các thông tin về học sinh bao gồm:  
-- mã số, họ tên và tên đề tài (Nếu sinh viên chưa có đề tài thì column tên đề tài sẽ in ra "Chưa có") 

CREATE OR REPLACE VIEW SinhVienInfo AS
SELECT		S.masv, S.hoten, CASE WHEN D.tendt IS NULL THEN "Chưa có" ELSE D.tendt END AS TenDT
FROM		Sinhvien S
RIGHT JOIN	HuongDan H ON S.masv = H.masv
LEFT JOIN	Detai D ON H.madt = D.madt
;

-- Tạo trigger cho table SinhVien khi insert sinh viên có năm sinh <= 1900 thì hiện ra thông báo "năm sinh phải > 1900" 
DROP TRIGGER IF EXISTS Check_NamSinh;
DELIMITER $$
CREATE TRIGGER Check_NamSinh
BEFORE INSERT ON sinhvien
FOR EACH ROW
	BEGIN
		IF year(new.namsinh) <= 1900 THEN
        SIGNAL SQLSTATE '12345'
        SET MESSAGE_TEXT = 'năm sinh phải > 1900';
        END IF;
    END $$
DELIMITER ;

INSERT INTO `thuctap`.`sinhvien` (`masv`, `hoten`, `namsinh`, `quequan`) VALUES ('16', 'abcd', '1890-02-02', '081 Lerdahl Court213');

-- 5. Hãy cấu hình table sao cho khi xóa 1 sinh viên nào đó 
-- thì sẽ tất cả thông tin trong table HuongDan liên quan tới sinh viên đó sẽ bị xóa đi 
DROP TRIGGER IF EXISTS Delete_SV;

DELIMITER $$
CREATE TRIGGER Delete_SV
BEFORE DELETE ON sinhvien
FOR EACH ROW
	BEGIN
		DECLARE	V_masv MEDIUMINT;
			SELECT 	masv INTO V_masv
			FROM	sinhvien
			WHERE	masv = OLD.masv;
			DELETE FROM huongdan WHERE masv = V_masv;
    END $$
DELIMITER ;

DELETE FROM sinhvien WHERE masv = 2;

SELECT		*
FROM		Sinhvien S
JOIN	HuongDan H ON S.masv = H.masv
;