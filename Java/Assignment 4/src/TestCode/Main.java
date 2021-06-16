package TestCode;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
	static List<Hinh_Hoc> listHinhHoc = new ArrayList<Hinh_Hoc>();
	public static void main(String[] args) {
		 
		Scanner scanner = new Scanner(System.in);
		System.out.println("Quan Ly Hinh Hoc");
		
		int chon = 0;
		
		while (chon != 3) {
			
		System.out.println("1. Them moi hinh");
		System.out.println("2. Hien thi thong tin hinh");
		System.out.println("3. Thoat");
		
		chon = scanner.nextInt();
		
		switch (chon) {
		case 1:
			
			break;

		default:
			break;
		}
		}
		
		
		
		
		
		
		
		
		
		
	}
	
	public static void themMoiHinh() {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Moi chon hinh");
		System.out.println("1. Tron");
		System.out.println("1. Binh Hanh");
		int chonHinh = scanner.nextInt();
		
		switch (chonHinh) {
		case 1:
			
			break;

		default:
			break;
		}
		
	}

	public static void themMoiHinhTron() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Nhap ban kinh: ");
		float banKinh = scanner.nextFloat();
		Hinh_Tron hinhTron = new Hinh_Tron(banKinh);
		List
	}
	
	
	
}
