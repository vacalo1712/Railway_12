package com.VTI.entity;
import java.time.LocalDate;
import java.util.Date;

public class Account {
	private int	id;
	private String email;
	private String userName;
	private String firtName;
	private String lastName;
	private String fullName;
	private Position position;
	private LocalDate createDate;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}
	
//	b) Có các parameter là id, Email, Username, FirstName,
//	LastName (với FullName = FirstName + LastName)
	public Account(int id, String email, String userName, String firtName, 
			String lastName, String fullName) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.email = email;
		this.userName = userName;
		this.firtName = firtName;
		this.lastName = lastName;
		this.fullName = firtName + lastName;
	}
	
//	c) Có các parameter là id, Email, Username, FirstName,
//	LastName (với FullName = FirstName + LastName) và
//	Position của User, default createDate = now
	public Account(int id, String email, String userName, String firtName, 
			String lastName, String fullName, LocalDate createDate) {
		this.id = id;
		this.email = email;
		this.userName = userName;
		this.firtName = firtName;
		this.lastName = lastName;
		this.fullName = firtName + lastName;
		this.createDate = LocalDate.now();
	}
	
//	d) Có các parameter là id, Email, Username, FirstName,
//	LastName (với FullName = FirstName + LastName) và
//	Position của User, createDate
	public Account(int id, String email, String userName, String firtName, 
			String lastName, String fullName,Position position, Date createDate) {
		this.id = id;
		this.email = email;
		this.userName = userName;
		this.firtName = firtName;
		this.lastName = lastName;
		this.fullName = firtName + lastName;
		this.position = position;
		this.createDate = LocalDate.now();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirtName() {
		return firtName;
	}

	public void setFirtName(String firtName) {
		this.firtName = firtName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	public int getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}
	
	
}
