package Function;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.management.StringValueExp;

public class TestCode {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		String hoten1 = new String("Nam");
//		String hoten2 = new String("Nam");
//		
//		if (hoten1 == hoten2) {
//			System.out.println("Bang nhau");
//		} else {
//			System.out.println("Ko bang");
//		}

		
//		String myString = "12345";
//		int a = Integer.parseInt(myString);
//		
//		System.out.println(a);
//		
//		String cString = String.valueOf(a);
//		String bString = "" + a;
//		String dString = Integer.toString(a);
//		
//		System.out.println(cString);
		
		List <Group> groupList	= new ArrayList<Group>();
		
		Group group1 = new Group();
		group1.id = 3;
		group1.name = "abc 3";
		groupList.add(group1);
		
		Group group2 = new Group();
		group2.id = 1;
		group2.name = "abc 1";
		groupList.add(group2);
		
		Group group3 = new Group();
		group3.id = 2;
		group3.name = "abc 2";
		groupList.add(group3);
		
		Group group4 = new Group();
		group4.id = 4;
		group4.name = "abc 4";
		groupList.add(group4);
		
//		for (Group group : groupList) {
//			System.out.println("ID: " + group.id + " Name: " + group.name);
//		}
//		System.out.println("-----Sau khi update------");
//		Collections.sort(groupList);
//		
//		for (Group group : groupList) {
//			System.out.println("ID: " + group.id + " Name: " + group.name);
//		}
		
	}

}
