package Ex2;

import java.util.Scanner;

public class Q5 {

	public static void main(String[] args) {

		inputAge();

	}

	public static int inputAge() {

		Scanner scanner = new Scanner(System.in);
		System.out.println("Moi ban nhan vao tuoi");
		int nhapTuoi = 0;
		try {
			nhapTuoi = scanner.nextInt();
		} catch (Exception e) {
			System.out.println("Phai nhap vao 1 so");
		}
		if (nhapTuoi < 0) {
			throw new ArithmeticException("Nhap sai, moi nhap vao so > 0");
		}
		return nhapTuoi;
	}
}
