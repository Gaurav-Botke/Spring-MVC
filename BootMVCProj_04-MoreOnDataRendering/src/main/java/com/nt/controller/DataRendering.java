package com.nt.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.model.Student;

@Controller
@RequestMapping("/")
public class DataRendering {
	/*
	 * //SIMPLE DATA RENDERING ON WEBPAGE
	 * 
	 * @GetMapping("/data") public String showData(Map<String, Object> map) {
	 * map.put("name", "GAURAV"); map.put("course", "Spring"); map.put("fee", 1000);
	 * return "show_report"; }
	 */

	// Array and Collection data
/*
	@GetMapping("/data")
	public String showData(Map<String, Object> map) {
		String[] course = { "SPRING", "JAVA", "DSA" };
		map.put("course", course);
		
		List<String> favColor = List.of("RED", "ORANGE", "BLACK");
		map.put("favColor", favColor);
		
		Set<String> friends = Set.of("ASHU", "GAYTRI", "BOTKE", "GAURAV");
		map.put("friends", friends);
		
		Map<String, Object> mobileNumber = Map.of("Vi", 9313649317L, "JIO", 9265008087L);
		map.put("mobileNumber", mobileNumber);

		return "show_report";
	}
	*/
	
	@GetMapping("/data")
	public String showData(Map<String, Object> map) {
		/* add Model Attribute (model class object)
		 * Student std1 = new Student(111, "GAURAV","PUNE", 123456.55);
		 * map.put("stdData", std1);
		 */
		 //Multiple Model class object data 
		 Student std1 = new Student(111, "GAURAV","PUNE", 123456.55);
		 Student std2 = new Student(222,"BOTKE","HYD",123123.33); 
		 Student std3 = new Student(333, "ASHU","PUNE", 12121.22);
		 List<Student> list = List.of(std1, std2,std3);
		  map.put("stdInfo", list);  
         //return LVN
		return "show_report";
	}
}
