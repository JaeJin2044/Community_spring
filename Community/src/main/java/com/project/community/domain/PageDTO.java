package com.project.community.domain;

import org.apache.ibatis.type.Alias;

@Alias("PageDTO")
public class PageDTO {
	
	
	private int endPage;
	private int startPage;
	private boolean prev, next;
	
	private int pageTotal;
	private Criteria cri;
	
	private int realStart;
	private int realEnd;
	
	
	public PageDTO(Criteria cri , int pageTotal){
		this.cri = cri;
		this.pageTotal = pageTotal;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum() /10.0) * 10);
		this.startPage = this.endPage - 9;
		
		this.realEnd = (int)(Math.ceil(pageTotal* 1.0 / cri.getAmount()));
		
		if(this.realEnd < this.endPage) {
			this.endPage = this.realEnd;
		}
		
		this.prev = startPage > 1 ;
		this.next = this.endPage < realEnd;	
		
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public boolean isPrev() {
		return prev;
	}


	public void setPrev(boolean prev) {
		this.prev = prev;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}


	public int getPageTotal() {
		return pageTotal;
	}


	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}


	public Criteria getCri() {
		return cri;
	}


	public void setCri(Criteria cri) {
		this.cri = cri;
	}


	public int getRealStart() {
		return realStart;
	}


	public void setRealStart(int realStart) {
		this.realStart = realStart;
	}


	public int getRealEnd() {
		return realEnd;
	}


	public void setRealEnd(int realEnd) {
		this.realEnd = realEnd;
	}
	
	
	

}







