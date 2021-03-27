package com.project.community.domain;

import org.apache.ibatis.type.Alias;

@Alias("Criteria")
public class Criteria {

	private String b_category;
	
	//보여줄 페이지 넘버
	private int pageNum;
	//보여줄 게시물 수 
	private int amount;
	
	//기본 생성자
	public Criteria(){
		this("1",1,10);
	}
	
	Criteria(String b_category,int pageNum,int amount){
		this.b_category = b_category;
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String getB_category() {
		return b_category;
	}

	public void setB_category(String b_category) {
		this.b_category = b_category;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
	
	
	
	
	
}
