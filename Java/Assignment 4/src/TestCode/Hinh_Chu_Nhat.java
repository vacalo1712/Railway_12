package TestCode;

public class Hinh_Chu_Nhat extends Hinh_Hoc {

	private float dai;
	private float rong;
	

	
	public Hinh_Chu_Nhat(float dai, float rong) {
		super();
		this.dai = dai;
		this.rong = rong;
	}
	@Override
	public float tinhChuVi() {
		// TODO Auto-generated method stub
		return (dai + rong) *2;
	}
	@Override
	public float dienTich() {
		// TODO Auto-generated method stub
		return dai * rong;
	}
	
	public void ChuNhat(){
        System.out.println("Chu vi: " + tinhChuVi());
        System.out.println("Dien tich: "+ dienTich());
	}


}
