package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowHomeController {

//	@RequestMapping("/home")
//	public String displayHomePage() {
//		//return LVN
//		return "welcome";
//	}
	
	@RequestMapping("/")
	public String displayHomePage() {
		//return LVN
		return "welcome";
	}
}
