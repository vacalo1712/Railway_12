package XuongSX;

public class CongNhan extends CanBo {
	public CongNhan(String hoTen, byte tuoi, Gioi_Tinh gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		// TODO Auto-generated constructor stub
	}

	String bac;

	public CongNhan(String hoTen, byte tuoi, Gioi_Tinh gioiTinh, String diaChi, String bac) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		this.bac = bac;
	}

	public String getBac() {
		return bac;
	}

	public void setBac(String bac) {
		this.bac = bac;
	}
	
	
}
