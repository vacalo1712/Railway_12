package Exercise_1_Constructor;

public class Department {
	int	id;
	String	name;
	
	public Department() {
		// TODO Auto-generated constructor stub
	}
	
	public Department(String name) {
		// TODO Auto-generated constructor stub
		this.id = 0;
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}
	
	
}
