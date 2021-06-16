package TestCode;

public class Hinh_Tron extends Hinh_Hoc {
	private float banKinh;

	

	public Hinh_Tron(float banKinh) {
		super();
		this.banKinh = banKinh;
	}


	@Override
	public float tinhChuVi() {
		// TODO Auto-generated method stub
		return (float) (banKinh * 2 * 3.14);
	}


	@Override
	public float dienTich() {
		// TODO Auto-generated method stub
		return (float) (banKinh * banKinh * 3.14);
	}


	public float getBanKinh() {
		return banKinh;
	}


	public void setBanKinh(float banKinh) {
		this.banKinh = banKinh;
	}

	@Override
	public String toString() {
		String thongTin = "Ban kinh hinh tron: " + this.banKinh + ", Chu vi: " + tinhChuVi() + ", Dien tich: " + dienTich();
		return thongTin;
	}
	
	public void HinhTron(){
        System.out.println("Chu vi: " + tinhChuVi());
        System.out.println("Dien tich: "+ dienTich());
	}

}
