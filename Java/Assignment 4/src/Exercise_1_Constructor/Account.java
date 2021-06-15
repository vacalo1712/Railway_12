package Exercise_1_Constructor;
import java.time.LocalDate;

import Assignment.Department;



public class Account {
	 int	id;
	 String email;
	 String userName;
	 String firtName;
	 String lastName;
	 String fullName;
	 Department department;
	 Position position;
	 LocalDate createDate;
	Group[] groups;
	public int getId() {
		return id;
	}
	public String getEmail() {
		return email;
	}
	public String getUserName() {
		return userName;
	}
	public String getFirtName() {
		return firtName;
	}
	public String getLastName() {
		return lastName;
	}
	public String getFullName() {
		return fullName;
	}
	public Department getDepartment() {
		return department;
	}
	public Position getPosition() {
		return position;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	
	
	
//	a) Không có parameters
//	public Account() {
//		// TODO Auto-generated constructor stub
//	}
	

//	b) Có các parameter là id, Email, Username, FirstName, LastName (với FullName = FirstName + LastName)
//	public Account(int id, String email, String userName, String firtName, String lastName, String fullName) {
//		this.id = id;
//		this.email = email;
//		this.userName = userName;
//		this.firtName = firtName;
//		this.lastName = lastName;
//		this.fullName = firtName + lastName;
//	}
	
	
//	c) Có các parameter là id, Email, Username, FirstName,
//	LastName (với FullName = FirstName + LastName) và
//	Position của User, default createDate = now
//	
//	public Account(int id, String email, String userName, String firtName, String lastName, String fullName, Position position, LocalDate createDate) {
//		this.id = id;
//		this.email = email;
//		this.userName = userName;
//		this.firtName = firtName;
//		this.lastName = lastName;
//		this.fullName = firtName + lastName;
//		this.position = position;
//		this.createDate = LocalDate.now();
//	}
	
	
//	d) Có các parameter là id, Email, Username, FirstName,
//	LastName (với FullName = FirstName + LastName) và
//	Position của User, createDate
//	
//	public Account(int id, String email, String userName, String firtName, String lastName, String fullName, Position position, LocalDate createDate) {
//		this.id = id;
//		this.email = email;
//		this.userName = userName;
//		this.firtName = firtName;
//		this.lastName = lastName;
//		this.fullName = firtName + lastName;
//		this.position = position;
//		this.createDate = createDate;
//	}
	
}



