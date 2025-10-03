package com.nt.service;

import java.time.LocalDateTime;

import org.springframework.stereotype.Service;

@Service
public class SeasonFinderServiceImpl implements ISeasonFinderService {

	@Override
	public String findSeason() {
		//get the system date
		LocalDateTime ldt = LocalDateTime.now();
		//get Current month
		int month = ldt.getMonthValue();
		
		if(month>=6 && month<=9) {
			return "RAINY SEASON !";
		}
		else if(month>=10 && month<=2) {
			return "WINTER SEASON !";
		}
		else
			return "SUMMER SEASON !";
	}

}
