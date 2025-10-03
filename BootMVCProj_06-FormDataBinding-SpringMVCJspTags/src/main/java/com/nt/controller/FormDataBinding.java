package com.nt.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.model.JobSeeker;

@Controller

public class FormDataBinding {

	@RequestMapping("/")
	public String homePage() {
		
		System.out.println("FormDataBinding.homePage()");
		//return LVN
		return "home";
	}
	
	@GetMapping("/register")
	public String registerJobSeekerData(@ModelAttribute JobSeeker js ) {
		System.out.println("FormDataBinding.registerJobSeekerData() :: Model Class obj data :: "+js);
		//return LVN
		return "JobSeeker_Form";
	}
	
	@PostMapping("/register")
	public String displayJobSeekerData(Map<String,Object> map,
			                           @ModelAttribute("jobSeeker") JobSeeker js) {
		System.out.println("FormDataBinding.displayJobSeekerData() :: model class obj data ::"+ js);
		map.put("JsData", js);
		//return LVN
		return "JobSeeker_Data";
	}
}
