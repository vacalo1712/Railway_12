package TestCode;

public class HocSinhKha extends HocSinh {

	public HocSinhKha(String hoTen, short tuoi, String email, String sdt) {
		super(hoTen, tuoi, email, sdt);
		// TODO Auto-generated constructor stub
	}
	
	private short diemTrungBinh;
	
	

	public HocSinhKha() {
		super();
	}

	public HocSinhKha(String hoTen, short tuoi, String email, String sdt, short diemTrungBinh) {
		super(hoTen, tuoi, email, sdt);
		this.diemTrungBinh = diemTrungBinh;
	}

	public short getDiemTrungBinh() {
		return diemTrungBinh;
	}

	public void setDiemTrungBinh(short diemTrungBinh) {
		this.diemTrungBinh = diemTrungBinh;
	}
	
	

}
