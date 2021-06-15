package XuongSX;

public class NhanVien extends CanBo {
	public NhanVien(String hoTen, byte tuoi, Gioi_Tinh gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		// TODO Auto-generated constructor stub
	}

	String congViec;

	public NhanVien(String hoTen, byte tuoi, Gioi_Tinh gioiTinh, String diaChi, String congViec) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		this.congViec = congViec;
	}

	public String getCongViec() {
		return congViec;
	}

	public void setCongViec(String congViec) {
		this.congViec = congViec;
	}
	
	
}
