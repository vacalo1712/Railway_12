package QuanLyCanBo;

public class NhanVienVanPhong  extends CanBo{
	String congViec;

	public String getCongViec() {
		return congViec;
	}

	public void setCongViec(String congViec) {
		this.congViec = congViec;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + ", cong Viec: " + congViec;
	}
}
