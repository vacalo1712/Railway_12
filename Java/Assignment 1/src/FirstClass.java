import java.util.Date;

public class FirstClass {

	public static void main(String[] args) {
		// Create Department
				Department Sale = new Department();
				Sale.id = 1;
				Sale.departmentName = "Sale";

				Department Marketing = new Department();
				Marketing.id = 2;
				Marketing.departmentName = "Marketing";

				Department POD = new Department();
				POD.id = 3;
				POD.departmentName = "POD";

				Department Production = new Department();
				Production.id = 4;
				Production.departmentName = "Production";

				Department Training = new Department();
				Training.id = 5;
				Training.departmentName = "Training";

				Department WaitingRoom = new Department();
				WaitingRoom.id = 6;
				WaitingRoom.departmentName = "Waiting Room";

		// Create Position
				Position DEV = new Position();
				DEV.id = 1;
				DEV.positionName = PositionName.DEV;

				Position PM = new Position();
				PM.id = 2;
				PM.positionName = PositionName.PM;

				Position TEST = new Position();
				TEST.id = 3;
				TEST.positionName = PositionName.TEST;

				Position SCRUM_MASTER = new Position();
				SCRUM_MASTER.id = 4;
				SCRUM_MASTER.positionName = PositionName.SCRUM_MASTER;


		// Create Account
				Account Trump = new Account();
				Trump.id = 1;
				Trump.email = "DonaldTrump@gmail.com";
				Trump.userName = "Trump";
				Trump.fullName = "Donald Trump";
				Trump.department = POD;
				Trump.position = DEV;
				Trump.createDate = new Date("2021/01/02");

				Account Biden = new Account();
				Biden.id = 2;
				Biden.email = "JoeBiden@gmail.com";
				Biden.userName = "Biden";
				Biden.fullName = "Joe Biden";
				Biden.department = Sale;
				Biden.position = PM;
				Biden.createDate = new Date("2021/01/05");

				Account Obama = new Account();
				Obama.id = 3;
				Obama.email = "BarackObama@gmail.com";
				Obama.userName = "Obama";
				Obama.fullName = "Barack Obama";
				Obama.department = Training;
				Obama.position = PM;
				Obama.createDate = new Date("2021/01/11");

				Account Ozawa = new Account();
				Ozawa.id = 4;
				Ozawa.email = "MariaOzawa@gmail.com";
				Ozawa.userName = "Ozawa";
				Ozawa.fullName = "Maria Ozawa";
				Ozawa.department = Sale;
				Ozawa.position = DEV;
				Ozawa.createDate = new Date("2021/01/17");

				Account Zuckerberg = new Account();
				Zuckerberg.id = 5;
				Zuckerberg.email = "MarkZuckerberg@gmail.com";
				Zuckerberg.userName = "Zuckerberg";
				Zuckerberg.fullName = "Mark Zuckerberg";
				Zuckerberg.department = Marketing;
				Zuckerberg.position = TEST;
				Zuckerberg.createDate = new Date("2021/01/17");

				Account Xanh = new Account();
				Xanh.id = 6;
				Xanh.email = "TraXanh@gmail.com";
				Xanh.userName = "Xanh";
				Xanh.fullName = "Tra Xanh";
				Xanh.department = Production;
				Xanh.position = SCRUM_MASTER;
				Xanh.createDate = new Date("2021/01/20");

		// Create Group
				Group gr1 = new Group();
				gr1.id = 1;
				gr1.name = "Gr 1";
				gr1.creatorId = Biden;
				gr1.createDate = new Date("2021/01/09");

				Group gr2 = new Group();
				gr2.id = 2;
				gr2.name = "Gr 2";
				gr2.creatorId = Trump;
				gr2.createDate = new Date("2021/01/13");

				Group gr3 = new Group();
				gr3.id = 3;
				gr3.name = "Gr 3";
				gr3.creatorId = Zuckerberg;
				gr3.createDate = new Date("2021/01/14");

				Group gr4 = new Group();
				gr4.id = 4;
				gr4.name = "Gr 4";
				gr4.creatorId = Ozawa;
				gr4.createDate = new Date("2021/01/15");

				Group gr5 = new Group();
				gr5.id = 5;
				gr5.name = "Gr 5";
				gr5.creatorId = Obama;
				gr5.createDate = new Date("2021/01/16");

				Group gr6 = new Group();
				gr6.id = 6;
				gr6.name = "Gr 6";
				gr6.creatorId = Xanh;
				gr6.createDate = new Date("2021/01/17");
				
				Account[] AccOfGr1 = { Biden, Ozawa, Zuckerberg };
				Account[] AccOfGr2 = { Biden, Obama, Zuckerberg, Xanh };
				Account[] AccOfGr3 = { Zuckerberg };
				Account[] AccOfGr4 = { Trump, Biden, Obama, Ozawa, Zuckerberg, Xanh };
				Account[] AccOfGr5 = { Trump, Obama, Ozawa, Xanh };
				Account[] AccOfGr6 = { Trump, Biden, Obama, Ozawa, Xanh };
				
				Group[] GrOfTrump = {gr2, gr5, gr6};
				Group[] GrOfBiden = {gr1, gr2, gr3, gr4};
				Group[] GrOfObama = {};
				Group[] GrOfOzawa = {gr3};
				Group[] GrOfZuckerberg = {gr1, gr3, gr4, gr5, gr6};
				Group[] GrOfXanh = {gr1, gr6};

		// Create GroupAccount

		// Create TypeQuestion
				TypeQuestion TQ1 = new TypeQuestion();
				TQ1.id = 1;
				TQ1.typeName = TypeName.ESSAY;

				TypeQuestion TQ2 = new TypeQuestion();
				TQ2.id = 2;
				TQ2.typeName = TypeName.ESSAY;

				TypeQuestion TQ3 = new TypeQuestion();
				TQ3.id = 3;
				TQ3.typeName = TypeName.MULTIPLE_CHOICE;

				TypeQuestion TQ4 = new TypeQuestion();
				TQ4.id = 4;
				TQ4.typeName = TypeName.ESSAY;

				TypeQuestion TQ5 = new TypeQuestion();
				TQ5.id = 5;
				TQ5.typeName = TypeName.MULTIPLE_CHOICE;

				TypeQuestion TQ6 = new TypeQuestion();
				TQ6.id = 6;
				TQ6.typeName = TypeName.MULTIPLE_CHOICE;

		// Create CategoryQuestion
				CategoryQuestion JAVA = new CategoryQuestion();
				JAVA.id = 1;
				JAVA.categoryName = CategoryName.JAVA;

				CategoryQuestion NET = new CategoryQuestion();
				NET.id = 2;
				NET.categoryName = CategoryName.NET;

				CategoryQuestion POSTMAN = new CategoryQuestion();
				POSTMAN.id = 3;
				POSTMAN.categoryName = CategoryName.POSTMAN;

				CategoryQuestion RUBY = new CategoryQuestion();
				RUBY.id = 4;
				RUBY.categoryName = CategoryName.RUBY;

				CategoryQuestion SQL = new CategoryQuestion();
				SQL.id = 5;
				SQL.categoryName = CategoryName.SQL;

			

		// Create Question
				Question Q1 = new Question();
				Q1.id = 1;
				Q1.content = "Please explain what you understand by computer programming.";
				Q1.categoryQuestion = POSTMAN;
				Q1.typeQuestion = TQ5;
				Q1.creator = Zuckerberg;
				Q1.createDate = new Date("2021/01/03");

				Question Q2 = new Question();
				Q2.id = 2;
				Q2.content = "Can you enumerate and explain the various types of errors that can occur during the execution of a computer program?";
				Q2.categoryQuestion = SQL;
				Q2.typeQuestion = TQ1;
				Q2.creator = Obama;
				Q2.createDate = new Date("2021/01/05");

				Question Q3 = new Question();
				Q3.id = 3;
				Q3.content = "Please explain an algorithm. What are some of its important features?";
				Q3.categoryQuestion = JAVA;
				Q3.typeQuestion = TQ4;
				Q3.creator = Trump;
				Q3.createDate = new Date("2021/01/07");

				Question Q4 = new Question();
				Q4.id = 4;
				Q4.content = "What do you understand by maintaining and updating a computer program?";
				Q4.categoryQuestion = JAVA;
				Q4.typeQuestion = TQ3;
				Q4.creator = Biden;
				Q4.createDate = new Date("2021/01/09");

				Question Q5 = new Question();
				Q5.id = 5;
				Q5.content = "Please provide a brief explanation on variables.";
				Q5.categoryQuestion = RUBY;
				Q5.typeQuestion = TQ2;
				Q5.creator = Ozawa;
				Q5.createDate = new Date("2021/01/09");

				Question Q6 = new Question();
				Q6.id = 6;
				Q6.content = "Every programming language has reserved words. What are they? Give some examples.";
				Q6.categoryQuestion = NET;
				Q6.typeQuestion = TQ6;
				Q6.creator = Xanh;
				Q6.createDate = new Date("2021/01/09");

		// Create Answer
				Answer A1 = new Answer();
				A1.id = 1;
				A1.content = "Also known as coding or programming, computer programming is the process of encoding an algorithm into a notation, typically a computer program, by means of some programming language so that it can be executed by a computer.";
				A1.question = Q5;
				A1.isCorrect = true;

				Answer A2 = new Answer();
				A2.id = 2;
				A2.content = "Three types of errors can occur during the execution of a computer program.";
				A2.question = Q3;
				A2.isCorrect = true;

				Answer A3 = new Answer();
				A3.id = 3;
				A3.content = "A loop is a structure in programming that can repeat a defined set of statements for a set number of times or until a particular condition is satisfiedepartments. There are three important types of loops.";
				A3.question = Q1;
				A3.isCorrect = true;

				Answer A4 = new Answer();
				A4.id = 4;
				A4.content = "A constant is a programming entity whose value can�t be changed or modified during program execution. Constants are of two main types.";
				A4.question = Q6;
				A4.isCorrect = true;

				Answer A5 = new Answer();
				A5.id = 5;
				A5.content = "Variables are used for storing the input of a program as well as the computational results during program execution. These are actually named memory locations. The value stored in a variable can change during the program execution.";
				A5.question = Q2;
				A5.isCorrect = true;

				Answer A6 = new Answer();
				A6.id = 6;
				A6.content = "Reserved words, also known as keywords, are the words that have predefined meanings in a particular programming language. These reserved words can�t be used or redefined for serving other purposes. Following are some examples of reserved words.";
				A6.question = Q4;
				A6.isCorrect = true;

		// Create Exam		
				Exam exam1 = new Exam();
				exam1.id = 1;
				exam1.code = "E01";
				exam1.title = "Exam for Java";
				exam1.categoryQuestion = JAVA;
				exam1.duration = 60;
				exam1.creator = Zuckerberg;
				exam1.createDate = new Date("2021/01/03");

				Exam exam2 = new Exam();
				exam2.id = 2;
				exam2.code = "E02";
				exam2.title = "Exam for C";
				exam2.categoryQuestion = RUBY;
				exam2.duration = 120;
				exam2.creator = Obama;
				exam2.createDate = new Date("2021/01/05");

				Exam exam3 = new Exam();
				exam3.id = 3;
				exam3.code = "E03";
				exam3.title = "Exam for Python";
				exam3.categoryQuestion = NET;
				exam3.duration = 120;
				exam3.creator = Trump;
				exam3.createDate = new Date("2021/01/07");

				Exam exam4 = new Exam();
				exam4.id = 4;
				exam4.code = "E04";
				exam4.title = "Exam for C++";
				exam4.categoryQuestion = SQL;
				exam4.duration = 30;
				exam4.creator = Biden;
				exam4.createDate = new Date("2021/01/10");

				Exam exam5 = new Exam();
				exam5.id = 5;
				exam5.code = "E05";
				exam5.title = "Exam for C#";
				exam5.categoryQuestion = JAVA;
				exam5.duration = 180;
				exam5.creator = Xanh;
				exam5.createDate = new Date("2021/01/11");

				Exam exam6 = new Exam();
				exam6.id = 6;
				exam6.code = "E06";
				exam6.title = "Exam for PHP";
				exam6.categoryQuestion = POSTMAN;
				exam6.duration = 45;
				exam6.creator = Ozawa;
				exam6.createDate = new Date("2021/01/17");

		// Create ExamQuestion
				ExamQuestion EQ1 = new ExamQuestion();
				EQ1.exam = exam3;
				EQ1.question = Q1;

				ExamQuestion EQ2 = new ExamQuestion();
				EQ2.exam = exam6;
				EQ2.question = Q2;

				ExamQuestion EQ3 = new ExamQuestion();
				EQ3.exam = exam1;
				EQ3.question = Q3;

				ExamQuestion EQ4 = new ExamQuestion();
				EQ4.exam = exam5;
				EQ4.question = Q4;

				ExamQuestion EQ5 = new ExamQuestion();
				EQ5.exam = exam4;
				EQ5.question = Q5;

				ExamQuestion EQ6 = new ExamQuestion();
				EQ6.exam = exam2;
				EQ6.question = Q6;
	

				
		
	}

}
