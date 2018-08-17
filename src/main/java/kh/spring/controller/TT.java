package kh.spring.controller;

import java.util.ArrayList;
import java.util.List;

public class TT {
	public static void main(String[] args) {

		String s1 ="2018-08-15,2018-08-16,2018-08-17,2018-08-18,2018-08-19";
		String s2 ="2018-08-16";
		String s3 ="2018-08-17";
		String s4 ="2018-08-18";
		String s5 ="2018-08-15";
		
		List<String> list = new ArrayList<>();
		String[] arr = null;
		
		for(int i=0; i<s1.length(); i++) {
			arr = s1.split(",");
		}
		for(int i=0; i<arr.length; i++) {
			System.out.println(arr[i]);
		}
		
//		list.add(s1);
//		list.add(s2);
//		list.add(s3);
//		list.add(s4);
//		list.add(s5);
//
//		List<String> result = new ArrayList<>();
//		
//		for(String s : list) {
//			if(!result.contains(s)) {
//				result.add(s);
//			}
//		}
//		System.out.println(result.size());
//		System.out.println(result.toString().substring(1,result.toString().length()-1));
//		System.out.println();
//		for(String s:result) {
//			System.out.println(result);
//		}
	}
}