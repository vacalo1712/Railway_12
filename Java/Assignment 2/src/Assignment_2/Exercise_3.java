package Assignment_2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Pattern;

public class Exercise_3 {

	public static void main(String[] args) {
//		
//		// Create Department
//		Department Sale = new Department();
//		Sale.id = 1;
//		Sale.departmentName = "Sale";
//
//		Department Marketing = new Department();
//		Marketing.id = 2;
//		Marketing.departmentName = "Marketing";
//
//		Department POD = new Department();
//		POD.id = 3;
//		POD.departmentName = "POD";
//
//		Department Production = new Department();
//		Production.id = 4;
//		Production.departmentName = "Production";
//
//		Department Training = new Department();
//		Training.id = 5;
//		Training.departmentName = "Training";
//
//		Department WaitingRoom = new Department();
//		WaitingRoom.id = 6;
//		WaitingRoom.departmentName = "Waiting Room";
//		
//		Department[] listDepartments = {Sale, Marketing, POD, Production, Training, WaitingRoom};
//
//// Create Position
//		Position DEV = new Position();
//		DEV.id = 1;
//		DEV.positionName = PositionName.DEV;
//
//		Position PM = new Position();
//		PM.id = 2;
//		PM.positionName = PositionName.PM;
//
//		Position TEST = new Position();
//		TEST.id = 3;
//		TEST.positionName = PositionName.TEST;
//
//		Position SCRUM_MASTER = new Position();
//		SCRUM_MASTER.id = 4;
//		SCRUM_MASTER.positionName = PositionName.SCRUM_MASTER;
//
//
//// Create Account
//		Account acc1 = new Account();
//		acc1.id = 1;
//		acc1.email = "DonaldTrump@gmail.com";
//		acc1.userName = "acc1";
//		acc1.fullName = "Donald Trump";
//		acc1.department = POD;
//		acc1.position = DEV;
//		acc1.createDate = new Date("2021/01/02");
//
//		Account acc2 = new Account();
//		acc2.id = 2;
//		acc2.email = "JoeBiden@gmail.com";
//		acc2.userName = "acc2";
//		acc2.fullName = "Joe Biden";
//		acc2.department = Sale;
//		acc2.position = PM;
//		acc2.createDate = new Date("2021/01/05");
//
//		Account acc3 = new Account();
//		acc3.id = 3;
//		acc3.email = "BarackObama@gmail.com";
//		acc3.userName = "acc3";
//		acc3.fullName = "Barack Obama";
//		acc3.department = Training;
//		acc3.position = PM;
//		acc3.createDate = new Date("2021/01/11");
//
//		Account acc4 = new Account();
//		acc4.id = 4;
//		acc4.email = "MariaOzawa@gmail.com";
//		acc4.userName = "acc4";
//		acc4.fullName = "Maria Ozawa";
//		acc4.department = Sale;
//		acc4.position = DEV;
//		acc4.createDate = new Date("2021/01/17");
//
//		Account acc5 = new Account();
//		acc5.id = 5;
//		acc5.email = "Markzuckerberg@gmail.com";
//		acc5.userName = "acc5";
//		acc5.fullName = "Mark zuckerberg";
//		acc5.department = Marketing;
//		acc5.position = TEST;
//		acc5.createDate = new Date("2021/01/17");
//
//		Account acc6 = new Account();
//		acc6.id = 6;
//		acc6.email = "TraXanh@gmail.com";
//		acc6.userName = "acc6";
//		acc6.fullName = "Tra Xanh";
//		acc6.department = Production;
//		acc6.position = SCRUM_MASTER;
//		acc6.createDate = new Date("2021/01/20");
//
//		Account[] listAccounts = {acc1, acc2, acc3, acc4, acc5, acc6};
//// Create Group
//		Group gr1 = new Group();
//		gr1.id = 1;
//		gr1.name = "Gr 1";
//		gr1.creatorId = acc2;
//		gr1.createDate = new Date("2021/01/09");
//
//		Group gr2 = new Group();
//		gr2.id = 2;
//		gr2.name = "Gr 2";
//		gr2.creatorId = acc1;
//		gr2.createDate = new Date("2021/01/13");
//
//		Group gr3 = new Group();
//		gr3.id = 3;
//		gr3.name = "Gr 3";
//		gr3.creatorId = acc5;
//		gr3.createDate = new Date("2021/01/14");
//
//		Group gr4 = new Group();
//		gr4.id = 4;
//		gr4.name = "Gr 4";
//		gr4.creatorId = acc4;
//		gr4.createDate = new Date("2021/01/15");
//
//		Group gr5 = new Group();
//		gr5.id = 5;
//		gr5.name = "Gr 5";
//		gr5.creatorId = acc3;
//		gr5.createDate = new Date("2021/01/16");
//
//		Group gr6 = new Group();
//		gr6.id = 6;
//		gr6.name = "Gr 6";
//		gr6.creatorId = acc6;
//		gr6.createDate = new Date("2021/01/17");
//		
//		Account[] AccOfGr1 = { acc2, acc4, acc5 };
//		Account[] AccOfGr2 = { acc2, acc3, acc5, acc6 };
//		Account[] AccOfGr3 = { acc5 };
//		Account[] AccOfGr4 = { acc1, acc2, acc3, acc4, acc5, acc6 };
//		Account[] AccOfGr5 = { acc1, acc3, acc4, acc6 };
//		Account[] AccOfGr6 = { acc1, acc2, acc3, acc4, acc6 };
//		
//		Group[] GrOfacc1 = {gr2, gr5, gr6};
//		Group[] GrOfacc2 = {gr1, gr2, gr3, gr4};
//		Group[] GrOfacc3 = {};
//		Group[] GrOfacc4 = {gr3};
//		Group[] GrOfacc5 = {gr1, gr3, gr4, gr5, gr6};
//		Group[] GrOfacc6 = {gr1, gr6};
//
//// Create GroupAccount
//
//// Create TypeQuestion
//		TypeQuestion TQ1 = new TypeQuestion();
//		TQ1.id = 1;
//		TQ1.typeName = TypeName.ESSAY;
//
//		TypeQuestion TQ2 = new TypeQuestion();
//		TQ2.id = 2;
//		TQ2.typeName = TypeName.ESSAY;
//
//		TypeQuestion TQ3 = new TypeQuestion();
//		TQ3.id = 3;
//		TQ3.typeName = TypeName.MULTIPLE_CHOICE;
//
//		TypeQuestion TQ4 = new TypeQuestion();
//		TQ4.id = 4;
//		TQ4.typeName = TypeName.ESSAY;
//
//		TypeQuestion TQ5 = new TypeQuestion();
//		TQ5.id = 5;
//		TQ5.typeName = TypeName.MULTIPLE_CHOICE;
//
//		TypeQuestion TQ6 = new TypeQuestion();
//		TQ6.id = 6;
//		TQ6.typeName = TypeName.MULTIPLE_CHOICE;
//
//// Create CategoryQuestion
//		CategoryQuestion JAVA = new CategoryQuestion();
//		JAVA.id = 1;
//		JAVA.categoryName = CategoryName.JAVA;
//
//		CategoryQuestion NET = new CategoryQuestion();
//		NET.id = 2;
//		NET.categoryName = CategoryName.NET;
//
//		CategoryQuestion POSTMAN = new CategoryQuestion();
//		POSTMAN.id = 3;
//		POSTMAN.categoryName = CategoryName.POSTMAN;
//
//		CategoryQuestion RUBY = new CategoryQuestion();
//		RUBY.id = 4;
//		RUBY.categoryName = CategoryName.RUBY;
//
//		CategoryQuestion SQL = new CategoryQuestion();
//		SQL.id = 5;
//		SQL.categoryName = CategoryName.SQL;
//
//	
//
//// Create Question
//		Question Q1 = new Question();
//		Q1.id = 1;
//		Q1.content = "Please explain what you understand by computer programming.";
//		Q1.categoryQuestion = POSTMAN;
//		Q1.typeQuestion = TQ5;
//		Q1.creator = acc5;
//		Q1.createDate = new Date("2021/01/03");
//
//		Question Q2 = new Question();
//		Q2.id = 2;
//		Q2.content = "Can you enumerate and explain the various types of errors that can occur during the execution of a computer program?";
//		Q2.categoryQuestion = SQL;
//		Q2.typeQuestion = TQ1;
//		Q2.creator = acc3;
//		Q2.createDate = new Date("2021/01/05");
//
//		Question Q3 = new Question();
//		Q3.id = 3;
//		Q3.content = "Please explain an algorithm. What are some of its important features?";
//		Q3.categoryQuestion = JAVA;
//		Q3.typeQuestion = TQ4;
//		Q3.creator = acc1;
//		Q3.createDate = new Date("2021/01/07");
//
//		Question Q4 = new Question();
//		Q4.id = 4;
//		Q4.content = "What do you understand by maintaining and updating a computer program?";
//		Q4.categoryQuestion = JAVA;
//		Q4.typeQuestion = TQ3;
//		Q4.creator = acc2;
//		Q4.createDate = new Date("2021/01/09");
//
//		Question Q5 = new Question();
//		Q5.id = 5;
//		Q5.content = "Please provide a brief explanation on variables.";
//		Q5.categoryQuestion = RUBY;
//		Q5.typeQuestion = TQ2;
//		Q5.creator = acc4;
//		Q5.createDate = new Date("2021/01/09");
//
//		Question Q6 = new Question();
//		Q6.id = 6;
//		Q6.content = "Every programming language has reserved words. What are they? Give some examples.";
//		Q6.categoryQuestion = NET;
//		Q6.typeQuestion = TQ6;
//		Q6.creator = acc6;
//		Q6.createDate = new Date("2021/01/09");
//
//// Create Answer
//		Answer A1 = new Answer();
//		A1.id = 1;
//		A1.content = "Also known as coding or programming, computer programming is the process of encoding an algorithm into a notation, typically a computer program, by means of some programming language so that it can be executed by a computer.";
//		A1.question = Q5;
//		A1.isCorrect = true;
//
//		Answer A2 = new Answer();
//		A2.id = 2;
//		A2.content = "Three types of errors can occur during the execution of a computer program.";
//		A2.question = Q3;
//		A2.isCorrect = true;
//
//		Answer A3 = new Answer();
//		A3.id = 3;
//		A3.content = "A loop is a structure in programming that can repeat a defined set of statements for a set number of times or until a particular condition is satisfiedepartments. There are three important types of loops.";
//		A3.question = Q1;
//		A3.isCorrect = true;
//
//		Answer A4 = new Answer();
//		A4.id = 4;
//		A4.content = "A constant is a programming entity whose value can�t be changed or modified during program execution. Constants are of two main types.";
//		A4.question = Q6;
//		A4.isCorrect = true;
//
//		Answer A5 = new Answer();
//		A5.id = 5;
//		A5.content = "Variables are used for storing the input of a program as well as the computational results during program execution. These are actually named memory locations. The value stored in a variable can change during the program execution.";
//		A5.question = Q2;
//		A5.isCorrect = true;
//
//		Answer A6 = new Answer();
//		A6.id = 6;
//		A6.content = "Reserved words, also known as keywords, are the words that have predefined meanings in a particular programming language. These reserved words can�t be used or redefined for serving other purposes. Following are some examples of reserved words.";
//		A6.question = Q4;
//		A6.isCorrect = true;
//
//// Create Exam		
//		Exam exam1 = new Exam();
//		exam1.id = 1;
//		exam1.code = "E01";
//		exam1.title = "Exam for Java";
//		exam1.categoryQuestion = JAVA;
//		exam1.duration = 60;
//		exam1.creator = acc5;
//		exam1.createDate = new Date("2021/01/03");
//
//		Exam exam2 = new Exam();
//		exam2.id = 2;
//		exam2.code = "E02";
//		exam2.title = "Exam for C";
//		exam2.categoryQuestion = RUBY;
//		exam2.duration = 120;
//		exam2.creator = acc3;
//		exam2.createDate = new Date("2021/01/05");
//
//		Exam exam3 = new Exam();
//		exam3.id = 3;
//		exam3.code = "E03";
//		exam3.title = "Exam for Python";
//		exam3.categoryQuestion = NET;
//		exam3.duration = 120;
//		exam3.creator = acc1;
//		exam3.createDate = new Date("2021/01/07");
//
//		Exam exam4 = new Exam();
//		exam4.id = 4;
//		exam4.code = "E04";
//		exam4.title = "Exam for C++";
//		exam4.categoryQuestion = SQL;
//		exam4.duration = 30;
//		exam4.creator = acc2;
//		exam4.createDate = new Date("2021/01/10");
//
//		Exam exam5 = new Exam();
//		exam5.id = 5;
//		exam5.code = "E05";
//		exam5.title = "Exam for C#";
//		exam5.categoryQuestion = JAVA;
//		exam5.duration = 180;
//		exam5.creator = acc6;
//		exam5.createDate = new Date("2021/01/11");
//
//		Exam exam6 = new Exam();
//		exam6.id = 6;
//		exam6.code = "E06";
//		exam6.title = "Exam for PHP";
//		exam6.categoryQuestion = POSTMAN;
//		exam6.duration = 45;
//		exam6.creator = acc4;
//		exam6.createDate = new Date("2021/01/17");
//
//// Create ExamQuestion
//		ExamQuestion EQ1 = new ExamQuestion();
//		EQ1.exam = exam3;
//		EQ1.question = Q1;
//
//		ExamQuestion EQ2 = new ExamQuestion();
//		EQ2.exam = exam6;
//		EQ2.question = Q2;
//
//		ExamQuestion EQ3 = new ExamQuestion();
//		EQ3.exam = exam1;
//		EQ3.question = Q3;
//
//		ExamQuestion EQ4 = new ExamQuestion();
//		EQ4.exam = exam5;
//		EQ4.question = Q4;
//
//		ExamQuestion EQ5 = new ExamQuestion();
//		EQ5.exam = exam4;
//		EQ5.question = Q5;
//
//		ExamQuestion EQ6 = new ExamQuestion();
//		EQ6.exam = exam2;
//		EQ6.question = Q6;
		
//		Question 1:
//		In ra thông tin Exam thứ 1 và property create date sẽ được format theo định
//		dạng vietnamese
		
//		Locale locale = new Locale("vi", "VN");
//		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT,locale);
//		String date = dateFormat.format(acc1.createDate);
//		System.out.println(exam1.code + ": " + date);
		
//		Question 2:
//			In ra thông tin: Exam đã tạo ngày nào theo định dạng
//			Năm – tháng – ngày – giờ – phút – giây
		
//		String pattern = "yyyy-MM-dd-HH-mm-ss";
//		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
//		
//		Exam[] exams = {exam1, exam2};
//		for (Exam exam : exams) {
//			String date = DateFormat.format(exam.createDate);
//			System.out.println(exam.code + ":" + date);
//		}
		
//		Question 3:
//			Chỉ in ra năm của create date property trong Question 2
		
	}

}
