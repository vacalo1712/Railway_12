package Function;

import java.time.LocalDate;

public class ProgramFunction {

	public static void main(String[] args) {

//		Exercise 1 (Optional): Datatype Casting
//		Question 1:
//		Khai báo 2 số lương có kiểu dữ liệu là float.
//		Khởi tạo Lương của Account 1 là 5240.5 $
//		Khởi tạo Lương của Account 2 là 10970.055$
//		Khai báo 1 số int để làm tròn Lương của Account 1 và in số int đó ra
//		Khai báo 1 số int để làm tròn Lương của Account 2 và in số int đó ra

//		float luongAcc1 = 5240.5f;
//		float luongAcc2 = 10970.055f;
//		
//		int luongAcc1int = (int) luongAcc1;
//		int luongAcc2int = (int) luongAcc2;
//		
//		System.out.println(luongAcc1int);
//		System.out.println(luongAcc2int);

//		Question 2:
//			Lấy ngẫu nhiên 1 số có 5 chữ số (những số dưới 5 chữ số thì sẽ thêm
//			có số 0 ở cuoi cho đủ 5 chữ số)

//		Random random = new Random();
//		int a = random.nextInt(99999);
//		
//		while (a < 10000) {
//			a = a*10;
//		}
//		System.out.println(a);

//		Question 3:
//			Lấy 2 số cuối của số ở Question 2 và in ra.
//			Gợi ý:
//			Cách 1: convert số có 5 chữ số ra String, sau đó lấy 2 số cuối
//			Cách 2: chia lấy dư số đó cho 100

//		System.out.println(a/100);
//		
//		Question 4:
//			Viết 1 method nhập vào 2 số nguyên a và b và trả về thương của chúng

//		tinhThuong();

//		Exercise 2 (Optional): Default value
//		Question 1:
//		Không sử dụng data đã insert từ bài trước, tạo 1 array Account và khởi
//		tạo 5 phần tử theo cú pháp (sử dụng vòng for để khởi tạo):
//		 Email: "Email 1"
//		 Username: "User name 1"
//		 FullName: "Full name 1"
//		 CreateDate: now

//		taoAcc();

//		Exercise 3(Optional): Boxing & Unboxing
//		Question 1:
//		Khởi tạo lương có datatype là Integer có giá trị bằng 5000.
//		Sau đó convert lương ra float và hiển thị lương lên màn hình (với số
//		float có 2 số sau dấu thập phân)

//		int luong = 5000;
//		float fluong = (float) luong;
//		System.out.printf("%.2f%n", fluong/100);

//		Question 2:
//			Khai báo 1 String có value = "1234567"
//			Hãy convert String đó ra số int

//		String string = "1234567";
//		int i = Integer.parseInt(string);
//		System.out.println(i);
//	}

//		Question 3:
//			Khởi tạo 1 số Integer có value là chữ "1234567"
//			Sau đó convert số trên thành datatype int

//		Integer i = 1234567;
//		int c = (int) i;
//		System.out.println(i);

//		Exercise 4: String
//		Question 1:
//		Nhập một xâu kí tự, đếm số lượng các từ trong xâu kí tự đó (các từ có
//		thể cách nhau bằng nhiều khoảng trắng );

//		char SPACE = ' ';
//		char TAB = '\t';
//		char BREAK_LINE = '\n';

//		String str = "hoc vien VTI     Academy";
//		System.out.print("Số từ của chuỗi đã cho là: " + demTu(str));
		
//		Question 2:
//			Nhập hai xâu kí tự s1, s2 nối xâu kí tự s2 vào sau xâu s1;
		
//		String s1 = "ABC";
//		String s2 = "XYZ";
//		
//		System.out.println(s1 + s2);

//		Question 3:
//			Viết chương trình để người dùng nhập vào tên và kiểm tra, nếu tên chư
//			viết hoa chữ cái đầu thì viết hoa lên
		
		
	}


//	Exercise 4: String
//	Question 3:
	
	
	
	
	
//	Question 3:
//		Exercise 4: String

//	public static int demTu(String nhapString) {
//		if (nhapString == null) {
//			return -1;
//		}
//		int count = 0;
//		int size = nhapString.length();
//		boolean notCount = true;
//		for (int i = 0; i < size; i++) {
//			if (nhapString.charAt(i) != ' ' && nhapString.charAt(i) != '\t' && nhapString.charAt(i) != '\n') {
//				if (notCount) {
//					count++;
//					notCount = false;
//				}
//			} else {
//				notCount = true;
//			}
//
//		}
//		return count;
//	}
	
//	Exercise 2 (Optional): Default value
//	Question 1:

//	public static void taoAcc() {
//		Account[] accounts = new Account[5];
//		for (int i = 0; i < accounts.length; i++) {
//			Account acc = new Account();
//			acc.email = "Email: " + i;
//			acc.userName = "User Name: " + i;
//			acc.fullName = "Full Name : " +i;
//			acc.createDate = LocalDate.now();
//			accounts[i] = acc;
//			System.out.println("Thong tin Acc thứ: " + i + "\n" +  accounts[i].email + "@gmail.com" + "\n" + accounts[i].userName  + "\n" + accounts[i].fullName  + "\n" + accounts[i].createDate + "\n" );
//		}
//	}


//	Question 4:
//	public static void tinhThuong() {
//		int a;
//		int b;
//		Scanner scanner = new Scanner(System.in);
//		
//		System.out.println("Nhap vao a: ");
//		a = scanner.nextInt();
//		do {
//			System.out.println("Nhap vao b: ");
//			b = scanner.nextInt();
//			if (b == 0) {
//				System.out.println("Nhap b khac 0");
//			}
//		} while (b == 0);
//		System.out.println("Thuong: " + (float) a / (float) b);
//	}

}
