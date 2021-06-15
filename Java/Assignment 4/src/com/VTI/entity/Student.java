package com.VTI.entity;

public class Student {
	private int id;
	private String name;
	private String homeTown;
	private float point;
	

	public Student(String name, String homeTown) {
		this.name = name;
		this.homeTown = homeTown;
		this.point = 0;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getHomeTown() {
		return homeTown;
	}


	public void setHomeTown(String homeTown) {
		this.homeTown = homeTown;
	}


	public float getPoint() {
		return point;
	}


	public void setPoint(Float point) {
		this.point = point;
	}
	
	public void setPointPlus(Float PointPlus) {
		this.point += PointPlus;
	}
	
	
	
	public Student(int id, String name, String homeTown, float point) {
		super();
		this.id = id;
		this.name = name;
		this.homeTown = homeTown;
		this.point = point;
	}


	public String inThongTinSinhVien() {
		if (this.point < 4) {
			System.out.println("Yeu");
		} else if (this.point < 6) {
			System.out.println("Yeu");
		} else if (this.point < 8){
			System.out.println("Yeu");
		} else {
			System.out.println("Yeu");
		}
		String thongTin = "ID: " + this.id + " Ho ten: " + this.name + " Que quan: " + this.homeTown + " Diem hoc luc: " + this.point;
		return thongTin;
	}
	
}
