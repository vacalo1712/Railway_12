package TestCode;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class QLHS {

	static List<HocSinh> hsList = new ArrayList<HocSinh>();
	public static void main(String[] args) {
		
		
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("QUẢN LÝ HỌC SINH");
		System.out.println("MOI CHON CHUC NANG");
		
		int chucNang = 0;
		while (chucNang != 1) {
			System.out.println("1. Thêm mới học sinh");
			System.out.println("2. Hiển thị thông tin học sinh");
			System.out.println("3. Tìm kiếm học sinh theo họ tên");
			
			chucNang = scanner.nextInt();
			switch (chucNang) {
			case 1:
				
				break;

			default:
				break;
			}
		}


	}
	
	public static void themMoiHSGioi() {
		Scanner scanner = new Scanner(System.in);
		
		HocSinhGioi hocSinhGioi = new HocSinhGioi();
		
		System.out.println("Nhập tên HS:");
		String tenHSGioi = scanner.next();
		
		System.out.println("Nhập tuổi");
		Short tuoiHSGioi = scanner.nextShort();
		
		System.out.println("Nhập Email");
		String emailHSGioi = scanner.next();
		
		System.out.println("Nhập SĐT");
		String sdtHSGioi = scanner.next();
		
		System.out.println("Chọn tuyển học sinh giỏi");
		String tuyenHocSinhGioi = scanner.next();
		TuyenHSGioi tuyenHSGioi = TuyenHSGioi.fromValue(tuyenHocSinhGioi);
		
		hocSinhGioi.setHoTen(tenHSGioi);
		hocSinhGioi.setTuoi(tuoiHSGioi);
		hocSinhGioi.setEmail(emailHSGioi);
		hocSinhGioi.setSdt(sdtHSGioi);
		hocSinhGioi.setTuyenHSGioi(tuyenHSGioi);
		hsList.add(hocSinhGioi);
	}
	
	public static void themMoiHSKha() {
		Scanner scanner = new Scanner(System.in);
		
		HocSinhKha hocSinhKha = new HocSinhKha();
		
		System.out.println("Nhập tên HS:");
		String tenHSKha = scanner.next();
		
		System.out.println("Nhập tuổi");
		Short tuoiHSKha = scanner.nextShort();
		
		System.out.println("Nhập Email");
		String emailHSKha = scanner.next();
		
		System.out.println("Nhập SĐT");
		String sdtHSKha = scanner.next();
		
		System.out.println("Chọn tuyển học sinh giỏi");
		Short diemTBHSKha = scanner.nextShort();
		
		hocSinhKha.setHoTen(tenHSKha);
		hocSinhKha.setTuoi(tuoiHSKha);
		hocSinhKha.setEmail(emailHSKha);
		hocSinhKha.setSdt(sdtHSKha);
		hocSinhKha.setDiemTrungBinh(diemTBHSKha);
		hsList.add(hocSinhKha);
	}
	
	public static void themMoiHSYeu() {
		Scanner scanner = new Scanner(System.in);
		
		HocSinhYeu hocSinhYeu = new HocSinhYeu();
		
		System.out.println("Nhập tên HS:");
		String tenHSYeu = scanner.next();
		
		System.out.println("Nhập tuổi");
		Short tuoiHSYeu = scanner.nextShort();
		
		System.out.println("Nhập Email");
		String emailHSYeu = scanner.next();
		
		System.out.println("Nhập SĐT");
		String sdtHSYeu = scanner.next();
		
		System.out.println("Chọn tuyển học sinh giỏi");
		float diemThap = scanner.nextFloat();
		
		System.out.println("Nhập ngày mời phụ huynh");
		String date = scanner.next();
		LocalDate ngayMoiPhuHuynh = LocalDate.parse(date);
		System.out.println(ngayMoiPhuHuynh);
		
		hocSinhYeu.setHoTen(tenHSYeu);
		hocSinhYeu.setTuoi(tuoiHSYeu);
		hocSinhYeu.setEmail(emailHSYeu);
		hocSinhYeu.setSdt(sdtHSYeu);
		hocSinhYeu.setDiemThap(diemThap);
		hocSinhYeu.setNgayMoiPhuHuynh(ngayMoiPhuHuynh);
		hsList.add(hocSinhYeu);
	}

	public static void hienThiThongTin() {
		System.out.println("Thông tin học sinh: ");
		for (HocSinh hocSinh : hsList) {
			System.out.println(hocSinh);
		}
	}
	
	public static void timHS() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Nhập tên học sinh cần tìm: ");
		String tenHS = scanner.nextLine();
		if (tenHS == null || tenHS.equals("")) {
			System.out.println("Tất cả học sinh đều có tên");
		} else {
			boolean timThay = false;
			for (HocSinh hocSinh : hsList) {
				if (tenHS.equals(hocSinh.getHoTen())) {
					System.out.println(hocSinh);
					timThay = true;
				}
			}
			if(!timThay) System.out.println("Khong tim thay can bo: " + tenHS);
		}

	}
}
