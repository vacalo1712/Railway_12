package TestCode;

import java.io.Serializable;

public class SinhVien implements Serializable  {
	int msv;
	String hoTen;
	String tenTruong = "Buu chinh vien thong";
	
	public SinhVien(int msv, String hoTen) {
		super();
		this.msv = msv;
		this.hoTen = hoTen;
	}
	
	void display() {
		System.out.println(msv + "-" + hoTen + "-" + tenTruong);
	}
	
}
