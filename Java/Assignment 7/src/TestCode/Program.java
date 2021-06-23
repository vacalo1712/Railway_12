package TestCode;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Program {

	public static void main(String[] args) throws IOException {
		SinhVien sinhVien1 = new SinhVien(1, "Thong");
		SinhVien sinhVien2 = new SinhVien(2, "Minh");
		
//		sinhVien1.display();
//		sinhVien2.display();

		
//		Counter1 counter1 = new Counter1();
//		Counter1 counter2 = new Counter1();
//		Counter1 counter3 = new Counter1();
		
		// Check file ton tai
//		File file = new File("D:\\Lession 7\\demo.txt");
//		if (file.exists()) {
//			System.out.println("File ton tai");
//		} else {
//			System.out.println("File ko ton tai");
//		}
		
		//File create
//		File file = new File("D:\\Lession 7\\newFile.txt");
//		if (file.createNewFile()) {
//			System.out.println("Tao moi thanh cong");
//		} else {
//			System.out.println("Error");
//		}
		
		// Check path
		
//		File file = new File("D:\\Lession 7");
//		if (file.isDirectory()) {
//			System.out.println("Day la folder");
//		} else {
//			System.out.println("Day la file");
//		}
//		
////		list file
//		
//		File file2 = new File("D:\\Lession 7");
//		for (String fileName : file2.list()) {
//			System.out.println(fileName);
//		}
		
//		FileInputStream inputStream = null;
//		FileOutputStream outputStream = null;
//		try {
//			String addText = "Test text";
//			inputStream = new FileInputStream("D:\\Lession 7\\demo.txt");
//			outputStream = new FileOutputStream("D:\\Lession 7\\TestOutPut.txt", false);
//			System.out.println("Noi dung file:");
//		int ch;
//		while ((ch = inputStream.read()) != -1) {
//			System.out.print((char) ch);
//			outputStream.write(addText.getBytes());
//		}
//			outputStream.write(addText.getBytes());
//		} catch (IOException e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if (inputStream != null) {
//					inputStream.close();
//				}
//				if (outputStream != null) {
//					outputStream.close();
//				}
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
		
//		read and write object
//		FileOutputStream fileOut = new FileOutputStream("D:\\Lession 7\\obj.ser");
//		ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOut);
//		objectOutputStream.writeObject(sinhVien1);
//		objectOutputStream.close();
//		
//		// Load Object tu file
//		FileInputStream fileInputStream = new FileInputStream("D:\\Lession 7\\obj.ser");
//		ObjectInputStream objectIn = new ObjectInputStream(fileInputStream);
//		try {
//			Object objectInputStream = objectIn.readObject();
//			SinhVien sv = (SinhVien) objectInputStream;
//			sv.display();
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}catch (IOException e) {
//			e.printStackTrace();
//		}
//		finally {
//			objectIn.close();
//		}
		
		
	}

}
