package TestCode;

public class Hinh_Vuong extends Hinh_Hoc {
	private float canh;

	
	
	public Hinh_Vuong(float canh) {
		super();
		this.canh = canh;
	}

	@Override
	public float tinhChuVi() {
		// TODO Auto-generated method stub
		return canh * 4;
	}

	@Override
	public float dienTich() {
		// TODO Auto-generated method stub
		return canh * canh;
	}

	public void HinhVuong(){
        System.out.println("Chu vi: " + tinhChuVi());
        System.out.println("Dien tich: "+ dienTich());
	}


}
