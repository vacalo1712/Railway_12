package TestCode;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class QLHS {

	static Scanner scanner = new Scanner(System.in);
	static List<HocSinh> hsList = new ArrayList<HocSinh>();
	public static void main(String[] args) {

		System.out.println("QUẢN LÝ HỌC SINH");
		System.out.println("MOI CHON CHUC NANG");
		
		int chucNang = 0;
		while (chucNang != 4) {
			System.out.println("1. Thêm mới học sinh");
			System.out.println("2. Hiển thị thông tin học sinh");
			System.out.println("3. Tìm kiếm học sinh theo họ tên");
			System.out.println("4. Xóa HS theo tên");
			
			chucNang = scanner.nextInt();
			switch (chucNang) {
			case 1:
				themMoiHS();
				break;
			case 2:
				hienThiThongTin();
				break;
			case 3:
				timHS();
				break;
			case 4:
				xoaTheoTenHS();
				break;
			default:
				break;
			}
		}


	}
	
	public static void themMoiHSGioi() {
		
		HocSinhGioi hocSinhGioi = new HocSinhGioi();
		
		System.out.println("Nhập tên HS:");
		String tenHSGioi = scanner.next();
		
		System.out.println("Nhập tuổi");
		Short tuoiHSGioi = scanner.nextShort();
		
		System.out.println("Nhập Email");
		String emailHSGioi = scanner.next();
		
		System.out.println("Nhập SĐT");
		String sdtHSGioi = scanner.next();
		
		System.out.println("Chọn tuyển học sinh giỏi (toan, ly, hoa)");
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
		
		System.out.println("Nhập điểm trung bình");
		Short diemTBHSKha = scanner.nextShort();
		
		hocSinhKha.setHoTen(tenHSKha);
		hocSinhKha.setTuoi(tuoiHSKha);
		hocSinhKha.setEmail(emailHSKha);
		hocSinhKha.setSdt(sdtHSKha);
		hocSinhKha.setDiemTrungBinh(diemTBHSKha);
		hsList.add(hocSinhKha);
	}
	
	public static void themMoiHSYeu() {
		
		HocSinhYeu hocSinhYeu = new HocSinhYeu();
		
		System.out.println("Nhập tên HS:");
		String tenHSYeu = scanner.next();
		
		System.out.println("Nhập tuổi");
		Short tuoiHSYeu = scanner.nextShort();
		
		System.out.println("Nhập Email");
		String emailHSYeu = scanner.next();
		
		System.out.println("Nhập SĐT");
		String sdtHSYeu = scanner.next();
		
		System.out.println("Nhập điểm học sinh yếu");
		float diemThap = scanner.nextFloat();
		
		System.out.println("Nhập ngày mời phụ huynh");
		String date = scanner.next();
		LocalDate ngayMoiPhuHuynh = LocalDate.parse(date);
		
		
		hocSinhYeu.setHoTen(tenHSYeu);
		hocSinhYeu.setTuoi(tuoiHSYeu);
		hocSinhYeu.setEmail(emailHSYeu);
		hocSinhYeu.setSdt(sdtHSYeu);
		hocSinhYeu.setDiemThap(diemThap);
		hocSinhYeu.setNgayMoiPhuHuynh(ngayMoiPhuHuynh);
		hsList.add(hocSinhYeu);
	}
	
	public static void themMoiHS() {
		System.out.println("MỜI BẠN CHỌN THÊM MỚI LOẠI HS");
		System.out.println("1. Học sinh giỏi");
		System.out.println("2. Học sinh khá");
		System.out.println("3. Học sinh yếu");
		
		int idLoaiHS = scanner.nextInt();
		
		switch (idLoaiHS) {
		case 1:
			themMoiHSGioi();
			break;
		case 2:
			themMoiHSKha();
			break;
		case 3:
			themMoiHSYeu();
			break;
		default:
			break;
		}
	}

	public static void hienThiThongTin() {
		System.out.println("Thông tin học sinh: ");
		for (HocSinh hocSinh : hsList) {
			System.out.println(hocSinh + "\n");
		}
	}
	
	public static void timHS() {
	
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
			if(!timThay) System.out.println("Khong tim thay HS: " + tenHS);
		}

	}
	
	public static void xoaTheoTenHS() {	
		System.out.println("NHẬP TÊN HS CẦN XÓA");
		
		String tenHSCanXoa = scanner.next();
		if (tenHSCanXoa == null || tenHSCanXoa.equals("")) {
			System.out.println("Tất cả học sinh đều có tên");
		}else {
			List<HocSinh> dsHSCanXoa = new ArrayList<HocSinh>();
			for (HocSinh hocSinh : hsList) {
				if (tenHSCanXoa.equals(hocSinh.getHoTen())) {
					dsHSCanXoa.add(hocSinh);
				}
			}if (dsHSCanXoa.size() > 0) {
				hsList.removeAll(dsHSCanXoa);
				System.out.println("Bạn đã xóa những HS có tên: "+ tenHSCanXoa);
			} else {
				System.out.println("Không tìm thấy HS có tên là: " + tenHSCanXoa);
			}
		}
		
	}
}
