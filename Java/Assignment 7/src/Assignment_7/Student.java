package Assignment_7;

public class Student <T> {
	private T id;
	private String name;
//	static String college = "Dai hoc Bach Khoa";
//	static float moneyGroup = 0;
	
	public Student(T id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public T getId() {
		return id;
	}

	public void setId(T id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
//	public Student(int id, String name) {
//		super();
//		this.id = id;
//		this.name = name;
//	}
//	
//	static void change() {
//		college = "DH Cong Nghe";
//	}
//	
//	public void themBotQuy(int soTien) {
//		moneyGroup += soTien;
//		System.out.println("Tong Quy Lop: " + moneyGroup);
//	}
}
