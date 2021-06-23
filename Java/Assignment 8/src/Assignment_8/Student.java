package Assignment_8;

public class Student {

	private int id;
	private String name;
	static int count = 0;

	
	
	public Student(String name) {
		super();
		this.id = ++count;
		this.name = name;
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
	
	@Override
	public String toString() {
		return "ID: " + id + " Name: " + name;
	}
	
}
