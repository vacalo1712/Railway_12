-- CREATE DATABASE Testing_System_Assignment_2
DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;

USE Testing_System_Assignment_2;

-- CREATE TABLE Department
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
	DepartmentID 	SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName	NVARCHAR (50) UNIQUE NOT NULL
);

-- CREATE TABLE Position
DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position`(
	PositionID 		MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName 	ENUM ('Dev', 'Test', 'Scrum Master', 'PM', 'Sale', 'MKT', 'BV', 'Warehouse') UNIQUE NOT NULL
);

-- CREATE TABLE Account
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
	AccountID		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email 			NVARCHAR(100) UNIQUE NOT NULL,
    Username		NVARCHAR(50) UNIQUE NOT NULL,
    FullName		NVARCHAR(50) NOT NULL,
	DepartmentID	SMALLINT UNSIGNED NOT NULL,
	PositionID		MEDIUMINT UNSIGNED NOT NULL,
	CreateDate		DATETIME DEFAULT Now(),
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES `Position` (PositionID)
);

-- CREATE TABLE Group
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
	GroupID 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	GroupName 		NVARCHAR(50) UNIQUE NOT NULL,
	CreatorID 		INT UNSIGNED NOT NULL,
	CreateDate		DATETIME DEFAULT now(),
    FOREIGN KEY (CreatorID) REFERENCES `Account` (AccountID)
);

-- CREATE TABLE GroupAccount
DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount (
	GroupID			INT UNSIGNED,
	AccountID		INT UNSIGNED,
 	JoinDate		DATETIME DEFAULT NOW(),
	PRIMARY KEY (GroupID, AccountID),
    FOREIGN KEY (GroupID) REFERENCES `Group` (GroupID),
	FOREIGN KEY (AccountID) REFERENCES `Account` (AccountID)
);

-- CREATE TABLE TypeQuestion
DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion (
	TypeID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName		NVARCHAR (50) NOT NULL
);

-- CREATE TABLE CategoryQuestion
DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion (
	CategoryID 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CategoryName 	NVARCHAR (50) NOT NULL
);

-- CREATE TABLE Question
DROP TABLE IF EXISTS Question;
CREATE TABLE Question (
	QuestionID		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Content			TEXT,
	CategoryID		INT UNSIGNED NOT NULL,
	TypeID			INT UNSIGNED NOT NULL,
	CreatorID		INT UNSIGNED NOT NULL,
	CreateDATETIME	DATETIME DEFAULT NOW(),
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID),
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID),
    FOREIGN KEY (CreatorID) REFERENCES `Account` (AccountID)
);
 
-- CREATE TABLE Answer
DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
	AnswerID		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Content			TEXT,
    QuestionID		INT UNSIGNED NOT NULL,
	isCorrect		BIT NOT NULL,
    FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID)
);

-- CREATE TABLE Exam
DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam (
	ExamID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Code`			NVARCHAR (50) NOT NULL,
    Title			NVARCHAR (50) NOT NULL,
    CategoryID		INT UNSIGNED NOT NULL,
    Duration 		INT NOT NULL,
    CreatorID		INT UNSIGNED NOT NULL,
    CreateDate		DATETIME DEFAULT now(),
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID),
    FOREIGN KEY (CreatorID) REFERENCES `Account` (AccountID)
);

-- CREATE TABLE ExamQuestion
DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion (
	ExamID			INT UNSIGNED NOT NULL,
	QuestionID		INT UNSIGNED NOT NULL,
    PRIMARY KEY (ExamID, QuestionID),
    FOREIGN KEY (ExamID) REFERENCES Exam (ExamID),
    FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID)
);

-- Bang Department
INSERT INTO Department (DepartmentName)
VALUES					('Production'),
						('Research and Development'),
                        ('Sale'),
                        ('Marketing'),
                        ('Human Resource Management'),
                        ('Accounting and Finance'),
                        ('Waiting Room');
                        
-- Bang Position
INSERT INTO `Position` (PositionName)
VALUES				 ('Dev'), ('Test'), ('Scrum Master'), ('PM'), ('Sale'), ('MKT'), ('BV'), ('Warehouse');
                        
-- Bang Account
INSERT INTO `Account`
(Email, 							UserName, 			FullName, 					DepartmentID, 		PositionID) VALUES
('tfermer0@ucla.edu', 				'tfermer0', 		'Tully Fermer', 			1, 					1		   ),
('tgatchell1@bbb.org', 				'tgatchell1', 		'Tuck Gatchell', 			2, 					8		   ),
('bsoutherell2@tripadvisor.com', 	'bsoutherell2', 	'Beatrisa Fermer', 			3, 					2		   ),
('dtomley3@nymag.com', 				'dtomley3', 		'Denis Tomley', 			2, 					1		   ),
('asteaning4@paginegialle.it', 		'asteaning4', 		'Allis Steaning', 			5, 					5		   ),
('rwynrehame5@census.gov', 			'rwynrehame5', 		'Rodina Wynrehame', 		6, 					4		   ),
('atanti6@eventbrite.com', 			'atanti6', 			'Amabelle Tanti', 			5, 					3		   ),
('olewington7@seesaa.net', 			'olewington7', 		'Ophelia Lewington', 		1, 					6		   ),
('glinklater8@w3.org', 				'glinklater8', 		'Germain Linklater', 		5, 					7		   ),
('mmcorkil9@reference.com', 		'mmcorkil9', 		'Michaeline McOrkil', 		2, 					2		   ),
('cjonuzia@irs.gov', 				'cjonuzia', 		'Cheri Jonuzi', 			3, 					6		   ),
('tlamontb@ow.ly', 					'tlamontb', 		'Tessi Lamont', 			3, 					3		   ),
('dkelsallc@ftc.gov', 				'dkelsallc', 		'Dosi Kelsall', 			4, 					4		   ),
('cbleackleyd@myspace.com', 		'cbleackleyd', 		'Carley Bleackley', 		5, 					7		   ),
('agerrarde@altervista.org', 		'agerrarde', 		'Annnora Gerrard', 			3, 					8		   ),
('mkevisf@photobucket.com', 		'mkevisf', 			'Mae Kevis', 				4, 					3		   ),
('ewahlbergg@independent.co.uk', 	'ewahlbergg', 		'Etienne Wahlberg', 		6, 					1		   ),
('fcoyh@baidu.com', 				'fcoyh', 			'Fionna Coy', 				5, 					2		   ),
('lcuruclisi@eepurl.com', 			'lcuruclisi', 		'Lorettalorna Curuclis', 	2, 					5		   ),
('eribeiroj@unblog.fr', 			'eribeiroj', 		'Elsey Ribeiro', 			5, 					2		   );		


-- Bang Group
INSERT INTO `Group` (GroupName, 				CreatorID)
VALUES				 ('Annihilators',			1		  ),
					 ('Avengers',				3		  ),
                     ('Bad to The Bone',		5		  ),
                     ('Black Panthers',			7		  ),
                     ('Black Widows',			9		  ),
                     ('Blitzkrieg ',			11		  ),
                     ('Braindead Zombies',		13		  ),
                     ('Brewmaster Crew',		15		  ),
                     ('Brute Force',			17		  ),
                     ('Butchers ',				19	      );

-- Bang GroupAccount
INSERT INTO GroupAccount (GroupID, 		AccountID, 		JoinDate)
VALUES					  (1,		 	1,				'2020-01-01'),
						  (1,			2,				'2020-01-01'),
                          (2,			1,				'2020-01-01'),
                          (2,			4,				'2020-01-01'),
                          (3,			5,				'2020-01-01'),
                          (3,			2,				'2020-01-01'),
                          (4,			7,				'2020-01-01'),
                          (4,			8,				'2020-01-01'),
                          (5,			9,				'2020-01-01'),
                          (5,			10,				'2020-01-01'),
                          (6,			11,				'2020-01-01'),
                          (6,			12,				'2020-01-01'),
                          (7,			13,				'2020-01-01'),
                          (7,			14,				'2020-01-01'),
                          (8,			15,				'2020-01-01'),
                          (8,			16,				'2020-01-01'),
                          (1,			17,				'2020-01-01'),
                          (1,			18,				'2020-01-01'),
                          (1,			19,				'2020-01-01');
                        
-- Bang TypeQuestion
INSERT INTO TypeQuestion (TypeName)
VALUES					  ('Essay Question'),
						  ('Multiple Choice Question'),
                          ('Rank Order Scaling Question'),
                          ('Text Slider Question'),
                          ('Likert Scale Question'),
                          ('Semantic Differential Scale'),
                          ('Stapel Scale Question'),
                          ('Constant Sum Question'),
                          ('Comment Box Open Ended Question'),
                          ('Text Question');

-- Bang CategoryQuestion
INSERT INTO CategoryQuestion (CategoryName)
VALUES						  ('Java'),
							  ('C'),
                              ('Python'),
                              ('C++'),
                              ('C#'),
                              ('Visual Basic .Net'),
                              ('JavaScript'),
                              ('PHP'),
                              ('Swift'),
                              ('SQL');
                        
-- Bang Question
INSERT INTO Question 
(Content, CategoryID, TypeID, CreatorID) VALUES
('Please explain what you understand by computer programming.',
1, 1, 1),
('Can you enumerate and explain the various types of errors that can occur during the execution of a computer program?',
1, 2, 3),
('Please explain an algorithm. What are some of its important features?',
2, 2, 5),
('What do you understand by maintaining and updating a computer program?',
2, 4, 7),
('Please provide a brief explanation on variables.',
2, 4, 9),
('Every programming language has reserved words. What are they? Give some examples.',
3, 4, 11),
('What do you understand by loops? Briefly explain the various types of loops.',
3, 6, 13),
('Please explain program documentation. Why is it important?',
3, 8, 15),
('What are constants? Explain their types.',
3, 8, 17),
('Please explain the operators.',
5, 1, 19),
('Program documentation is the written description of the algorithm(s), coding method, design, testing, and proper use of a particular computer program. It is valuable for those who use the program on a day-to-day basis and also for the programmer(s) who are meant to correct, modify, and upDATETIME the computer program. Program documentation is the written description of the algorithm(s), coding method, design, testing, and proper use of a particular computer program. It is valuable for those who use the program on a day-to-day basis and also for the programmer(s) who are meant to correct, modify, and upDATETIME the computer program.',
2, 2, 1);

-- Bang Answer
INSERT INTO Answer 
(Content, QuestionID, IsCorrect) VALUES
('Also known as coding or programming, computer programming is the process of encoding an algorithm into a notation, typically a computer program, by means of some programming language so that it can be executed by a computer.',
1, 1),
('Three types of errors can occur during the execution of a computer program.',
1, 0),
('An algorithm can be defined as a set of finite steps that when followed helps in accomplishing a particular task. Important features of an algorithm are clarity, efficiency, and finiteness.',
1, 0),
('The maintenance and updating process of a computer program starts post its successful installation. While program maintenance is the continuous process of monitoring the computer program for bugs and errors, updating the computer program means making it better with minor and major changes over time.',
3, 1),
('Variables are used for storing the input of a program as well as the computational results during program execution. These are actually named memory locations. The value stored in a variable can change during the program execution.',
3, 0),
('Reserved words, also known as keywords, are the words that have predefined meanings in a particular programming language. These reserved words can’t be used or redefined for serving other purposes. Following are some examples of reserved words.',
4, 1),
('A loop is a structure in programming that can repeat a defined set of statements for a set number of times or until a particular condition is satisfied. There are three important types of loops.',
4, 1),
('Program documentation is the written description of the algorithm(s), coding method, design, testing, and proper use of a particular computer program. It is valuable for those who use the program on a day-to-day basis and also for the programmer(s) who are meant to correct, modify, and upDATETIME the computer program.',
5, 0),
('A constant is a programming entity whose value can’t be changed or modified during program execution. Constants are of two main types.',
5, 1),
('Operators are used for performing certain operations on data in a computer program. These are represented by symbols. For example, / represent mathematical division while * represents multiplication.',
1, 0);

-- Bang Exam
INSERT INTO Exam (`code`, 		Title, 								CategoryID, 	Duration, 	CreatorID)
VALUES			  ('E001', 		'Exam for Java', 					1, 			 	60, 		1		  ),
				  ('E002', 		'Exam for C', 						2, 			 	120, 		3		  ),
                  ('E003', 		'Exam for Python', 					3, 				180, 		5		  ),
                  ('E004', 		'Exam for C++', 					4, 				20, 		7		  ),
                  ('E005', 		'Exam for C#', 						5, 				120, 		9		  ),
                  ('E006', 		'Exam for Visual Basic .Net', 		6, 				180, 		11		  ),
                  ('E007', 		'Exam for JavaScript', 				7, 				60, 		13		  ),
                  ('E008', 		'Exam for PHP', 					8, 				30, 		15		  ),
                  ('E009', 		'Exam for Swift', 					9, 				45, 		17		  ),
                  ('E010', 		'Exam for SQL', 					10, 			45, 		19		  );

-- Bang ExamQuestion
INSERT INTO ExamQuestion  (ExamID, 	QuestionID)
VALUES					  (1, 		1		   ),
						  (2, 		1		   ),
                          (3, 		1		   ),
                          (4, 		1		   ),
                          (5, 		2		   ),
                          (6, 		2		   ),
                          (7, 		2		   ),
                          (8, 		2		   ),
                          (3, 		10		   ),
                          (10, 		9		   );
                          
-- Update Table DepartmentName
UPDATE 	department
SET		DepartmentName = 'Sale'
WHERE	DepartmentID = 3;

-- DELETE TABLE AccountName
DELETE
FROM	`Account`
WHERE	UserName = 'rwynrehame5';



