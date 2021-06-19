package QuanLyCanBo;

public class CongNhan extends CanBo{
	String CapBac;

	public String getCapBac() {
		return CapBac;
	}

	public void setCapBac(String capBac) {
		CapBac = capBac;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + ", Cap bac: " + CapBac;
	}	
}
