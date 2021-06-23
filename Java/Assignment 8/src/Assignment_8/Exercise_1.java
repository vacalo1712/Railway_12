package Assignment_8;

import java.util.*;

public class Exercise_1 {

	public static void main(String[] args) {
		List<Student> listStudents = new ArrayList<Student>();
		
		listStudents.add(new Student("A"));
		listStudents.add(new Student("A"));
		listStudents.add(new Student("B"));
		listStudents.add(new Student("C"));
		listStudents.add(new Student("B"));
		listStudents.add(new Student("A"));
		
//		for (Student student : listStudents) {
//			System.out.println(student);
//		}
		
//		System.out.println(listStudents.size());
		
//		System.out.println(listStudents.get(3));

//		System.out.println(listStudents.size()-1);
		
		listStudents.add(0, new Student("Phan tu dau"));
		listStudents.add( new Student("Phan tu cuoi"));
		
		for (Student student : listStudents) {
			System.out.println(student);
		}

		
		
	}

}
