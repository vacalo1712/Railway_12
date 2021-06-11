import java.time.LocalDate;
import java.util.Date;
import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		int a = 3;
//		int b = 2;
//		int c = 1;
//		if (a == b) {
//			System.out.println("bang nhau");
//		}
//		else if (a < b) {
//			System.out.println("nho hon");
//		}
//		else {
//			System.out.println("lon hon");
//		}
		
//		System.out.println(a == b ? "bang nhau" : "khac nhau");
		
//		switch (a) {
//		case 1:
//			System.out.println("day la so 1");
//			
//		case 2:
//			System.out.println("day la so 2");
//			
//		case 3:
//			System.out.println("day la so 3");
//			
//		case 4:
//			System.out.println("day la so 4");
//			
//		default:
//			System.out.println("So nao do");
//			
//		}
		
//		Group gr1 = new Group();
//		gr1.id = 1;
//		gr1.name = "Gr 1";
//	
//
//		Group gr2 = new Group();
//		gr2.id = 2;
//		gr2.name = "Gr 2";
//	
//
//		Group gr3 = new Group();
//		gr3.id = 3;
//		gr3.name = "Gr 3";
//
//		Group[] nhomGrs = {gr1,gr2,gr3};
//		
//		for (Group item : nhomGrs) {
//			System.out.println("ID: " + item.id + " Name: " + item.name);
//		}
//		
//		for (int i = 0; i < nhomGrs.length; i++) {
//			System.out.println("ID: " + nhomGrs[i].id + " Name: " + nhomGrs[i].name);
//		}
//		
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("Moi nhap vao ten: ");
//		String a = scanner.nextLine();
//		System.out.println("Ban vua nhap vao so: " + a);
				
		Random random = new Random();
//		int a = random.nextInt(100) + 50;
//		System.out.println(a);
		
		int minDay = (int) LocalDate.of(2020, 1, 1).toEpochDay();
		int maxDay = (int) LocalDate.of(2021, 1, 1).toEpochDay();
		long randomInt = minDay + random.nextInt(maxDay - minDay);
		LocalDate randomDay = LocalDate.ofEpochDay(randomInt);
		System.out.println(randomDay);
		
		
	}

}
