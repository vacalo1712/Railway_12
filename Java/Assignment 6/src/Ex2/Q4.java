package Ex2;

import java.util.Scanner;

public class Q4 {
	private static Department[] departments = new Department[3];
	public static void main(String[] args) {
		
		Department department1 = new Department(1, "Sale");
		Department department2 = new Department(2, "Test");
		Department department3 = new Department(3, "Dev");
		
		getIndex(10);

	}
	
	public static void getIndex(int index) {
		
		try {
			System.out.println(departments[index]);
		} catch (Exception e) {
			System.out.println("Ko the tim thay phong ban");
		}
	}

}
