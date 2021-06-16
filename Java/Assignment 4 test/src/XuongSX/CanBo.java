package XuongSX;

public class CanBo {
	String hoTen;
	int tuoi;
	Gioi_Tinh gioiTinh;
	String diaChi;
	
	public CanBo(String hoTen, int tuoi, Gioi_Tinh gioiTinh, String diaChi) {
		super();
		this.hoTen = hoTen;
		this.tuoi = tuoi;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public int getTuoi() {
		return tuoi;
	}

	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}

	public Gioi_Tinh getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(Gioi_Tinh gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	
	
	
}
