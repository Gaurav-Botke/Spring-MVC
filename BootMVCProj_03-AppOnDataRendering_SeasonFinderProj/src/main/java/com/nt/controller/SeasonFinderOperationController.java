package com.nt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.service.ISeasonFinderService;

@Controller
public class SeasonFinderOperationController {

	@Autowired
	private ISeasonFinderService service;
	
	@RequestMapping("/")
	public String homePage() {
		return "welcome";
	}
	
	@RequestMapping("/season")
	public String showSeason(Map<String, Object> map) {
		//get the season from service method()
		String msg = service.findSeason();
		//keep the result in shared memory as the model attribute
		map.put("resultMsg",msg);
		//return LVN
		return "display";
	}
}
