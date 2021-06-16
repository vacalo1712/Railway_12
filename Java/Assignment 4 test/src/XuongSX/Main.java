package XuongSX;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		int chucNang = 0;
		
		Scanner scanner = new Scanner(System.in);
		while (chucNang != 5) {
			System.out.println("Moi chon chuc nang: ");
			System.out.println("1. Them moi can bo");
			System.out.println("2. Tim kiem ho ten");
			System.out.println("3. Hien thi thong tin can bo");
			System.out.println("4. Xoa theo ten can bo");
			System.out.println("5. Thoat");
			
			chucNang = scanner.nextInt();
			switch (chucNang) {
			case 1:
				
				System.out.println("1. Cong nhan");
				System.out.println("2. Ky su");
				System.out.println("3. Nhan vien van phong");
				System.out.println("Moi ban nhap vao loai can bo: ");
				
				int idLoaiCanBo = scanner.nextInt();
				switch (idLoaiCanBo) {
				case 1: CongNhan congNhan = new CongNhan();
				System.out.println("Da chon tao moi cong nhan");
				
				System.out.println("Moi nhap vao ten cong nhan");
				String tenCN = scanner.nextLine();
				congNhan.setHoTen(tenCN);
				
				System.out.println("Nhap tuoi cong nhan");
				int tuoiCN = scanner.nextInt();
				congNhan.setTuoi(tuoiCN);
				
				System.out.println("Nhap gioi tinh");
				String gioiTinhCN = scanner.nextLine();
				congNhan.setGioiTinh(gioiTinhCN);
				
				System.out.println("Nhap dia chi");
				String diaChiCN = scanner.nextLine();
				congNhan.setDiaChi(diaChiCN);
				
				System.out.println("Nhap cap bac");
				int capBacCN = scanner.nextInt();
				congNhan.setBac(capBacCN);
					
					break;

				default:
					break;
				}
				break;

			default:
				break;
			}
		}
		
		
		
	
		
		
		
		
//		CanBo canBo1 = new CanBo("Chien", 30, Gioi_Tinh.NAM, "HN");
		
//		String a = "Chien";
//		System.out.println("Nhap vao ten ng can tim kiem: " + a.equalsIgnoreCase(canBo1.hoTen));
		
		
		
	}

}
