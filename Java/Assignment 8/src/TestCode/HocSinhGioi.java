package TestCode;

public class HocSinhGioi extends HocSinh {

	public HocSinhGioi(String hoTen, short tuoi, String email, String sdt) {
		super(hoTen, tuoi, email, sdt);
		// TODO Auto-generated constructor stub
	}
	
	TuyenHSGioi tuyenHSGioi;
	
	

	public HocSinhGioi() {
		
	}

	public TuyenHSGioi getTuyenHSGioi() {
		return tuyenHSGioi;
	}

	public void setTuyenHSGioi(TuyenHSGioi tuyenHSGioi) {
		this.tuyenHSGioi = tuyenHSGioi;
	}
	
	@Override
	public String toString() {
		return super.toString() + ", Tuyển: " + tuyenHSGioi;
	}
	
}
