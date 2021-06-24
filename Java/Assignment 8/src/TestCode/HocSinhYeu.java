package TestCode;

import java.time.LocalDate;
import java.util.Scanner;

public class HocSinhYeu extends HocSinh {

	public HocSinhYeu(String hoTen, short tuoi, String email, String sdt) {
		super(hoTen, tuoi, email, sdt);
		// TODO Auto-generated constructor stub
	}
	
	private float diemThap;
	private LocalDate ngayMoiPhuHuynh;
	
	
	
	public HocSinhYeu() {
		super();
	}

	public HocSinhYeu(String hoTen, short tuoi, String email, String sdt, float diemThap, LocalDate ngayMoiPhuHuynh) {
		super(hoTen, tuoi, email, sdt);
		this.diemThap = diemThap;
		this.ngayMoiPhuHuynh = ngayMoiPhuHuynh;
	}

	public float getDiemThap() {
		return diemThap;
	}

	public void setDiemThap(float diemThap) {
		this.diemThap = diemThap;
	}

	public LocalDate getNgayMoiPhuHuynh() {
		return ngayMoiPhuHuynh;
	}

	public void setNgayMoiPhuHuynh(LocalDate ngayMoiPhuHuynh) {
		this.ngayMoiPhuHuynh = ngayMoiPhuHuynh;
	}
	
	@Override
	public String toString() {
		return super.toString() + ", điểm thấp nhất: " + diemThap + ", ngày mời phụ huynh: " + ngayMoiPhuHuynh;
	}
}
