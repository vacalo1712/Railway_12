package TestCode;

public class Hinh_Binh_Hanh extends Hinh_Hoc{
	private float canhA;
	private float canhDay;
	private float cao;
	
	

	public Hinh_Binh_Hanh(float canhA, float canhB) {
		super();
		this.canhA = canhA;
		this.canhDay = canhDay;
	}

	
	
	@Override
	public float tinhChuVi() {
		// TODO Auto-generated method stub
		return (canhA + canhDay) * 2;
	}

	@Override
	public float dienTich() {
		// TODO Auto-generated method stub
		return canhA * cao;
	}

	
	
	public void HinhBinhHanh(){
        System.out.println("Chu vi: " + tinhChuVi());
        System.out.println("Dien tich: "+ dienTich());
	}

}
