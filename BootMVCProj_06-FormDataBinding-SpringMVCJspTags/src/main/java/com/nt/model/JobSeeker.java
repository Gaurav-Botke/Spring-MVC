package com.nt.model;

import lombok.Data;

@Data
public class JobSeeker {
 
	private Integer id;
	private String name;
	private String addr;
	private String qualification = "B.Tech";
	private Double fee;
	
	public JobSeeker() {
		super();
	}

	public JobSeeker(Integer id, String name, String addr, String qualification, Double fee) {
		super();
		this.id = id;
		this.name = name;
		this.addr = addr;
		this.qualification = qualification;
		this.fee = fee;
	}
	
	
}
