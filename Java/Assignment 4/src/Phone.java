
public class Phone {
	int id;
	String loaiDT;
	String heDieuHanh;
	Double giaTien;

	public Phone(int id, String loaiDT, String heDieuHanh, Double giaTien) {
		this.id = id;
		this.loaiDT = loaiDT;
		this.heDieuHanh = heDieuHanh;
		this.giaTien = giaTien;
		System.out.println("Khoi tao bo");
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoaiDT() {
		return this.loaiDT;
	}

	public void setLoaiDT(String loaiDT) {
		this.loaiDT = loaiDT;
	}

	public String getHeDieuHanh() {
		return this.heDieuHanh;
	}

	public void setHeDieuHanh(String heDieuHanh) {
		this.heDieuHanh = heDieuHanh;
	}

	public Double getGiaTien() {
		return this.giaTien;
	}

	public void setGiaTien(Double giaTien) {
		this.giaTien = giaTien;
	}

}
