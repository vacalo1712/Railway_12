package TestCode;

public class HocSinh {
	private String hoTen;
	private short tuoi;
	private String email;
	private String sdt;
	
	
	
	public HocSinh() {
		super();
	}

	public HocSinh(String hoTen, short tuoi, String email, String sdt) {
		super();
		this.hoTen = hoTen;
		this.tuoi = tuoi;
		this.email = email;
		this.sdt = sdt;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public short getTuoi() {
		return tuoi;
	}

	public void setTuoi(short tuoi) {
		this.tuoi = tuoi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	
	@Override
	public String toString() {
		return "Ten: " + hoTen + ", Tuoi: " + tuoi + ", Email: " + email + ", SDT: " + sdt;
	}
	
}
