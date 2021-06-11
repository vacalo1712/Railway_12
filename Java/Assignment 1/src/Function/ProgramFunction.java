package Function;

import java.util.Scanner;

public class ProgramFunction {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int nhap;
		System.out.println("Chao mung ban den voi ngan hang VTI");
		do {
		System.out.println("Moi ban chon chuc nang: ");
		System.out.println("-----------------------------------------");
		System.out.println("1. Rut tien");
		System.out.println("2. Chuyen tien");
		System.out.println("3. Truy van so du");
		System.out.println("4. Gui tien");
		System.out.println("5. Thoat");
		Scanner scanner = new Scanner(System.in);
		nhap = scanner.nextInt();
		ATM(nhap);
		} while (nhap != 5);
	}
	
	public static void ATM(int nhap) {
		switch (nhap) {
		case 1: 
			System.out.println("Chuc nang rut tien");
			break;
		case 2:
			System.out.println("Chuc nang Chuyen tien");
			break;
		case 3:
			System.out.println("Chuc nang Truy van so du");
			break;
		case 4:
			System.out.println("Chuc nang Gui tien");
			break;
		case 5:
			System.out.println("Thoat");
			break;
			default: System.out.println("nhap 1-> 4");
		}
	}
	
}
