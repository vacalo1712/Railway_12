package QuanLyCanBo;

public class KySu extends CanBo{
	String chuyenNganh;

	public String getChuyenNganh() {
		return chuyenNganh;
	}

	public void setChuyenNganh(String chuyenNganh) {
		this.chuyenNganh = chuyenNganh;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + ", chuyen Nganh: " + chuyenNganh;
	}
	
}
