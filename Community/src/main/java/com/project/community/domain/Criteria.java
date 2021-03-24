package com.project.community.domain;

import org.apache.ibatis.type.Alias;

@Alias("Criteria")
public class Criteria {

	private String b_category;
	
	Criteria(){
		this("1");
	}
	Criteria(String b_category){
		this.b_category = b_category;
	}

	public String getB_category() {
		return b_category;
	}

	public void setB_category(String b_category) {
		this.b_category = b_category;
	}
	
	
}
