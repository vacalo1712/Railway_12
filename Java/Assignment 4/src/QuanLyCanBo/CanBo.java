package QuanLyCanBo;

public class CanBo {
	String hoTen;
	int tuoi;
	String gioiTinh;
	String diaChi;
	
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
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	
	@Override
	public String toString() {
		return "Ten: " + hoTen + ", Tuoi: " + tuoi + ", Dia chi: " + diaChi + ", gioiTinh: " + gioiTinh;
	}
}
