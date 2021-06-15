package Exercise_1_Constructor;
import java.util.Date;

public class Group {
	int id;
	String name;
	Account creatorId;
	Date 	createDate;
	Account[] accounts;
	String[] userName;
	
	public Group() {
		// TODO Auto-generated constructor stub
	}

	public Group(String name, Account creatorId, Date createDate, Account[] accounts) {
		super();
		this.name = name;
		this.creatorId = creatorId;
		this.createDate = createDate;
		this.accounts = accounts;
	}
	
	
	public Group(String name, Account creatorId, Date createDate, String[] userName) {
		super();
		this.name = null;
		this.creatorId = null;
		this.createDate = null;
		this.userName = userName;
	}
}
