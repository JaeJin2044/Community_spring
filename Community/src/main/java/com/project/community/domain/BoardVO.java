package com.project.community.domain;

import org.apache.ibatis.type.Alias;

@Alias("BoardVO")
public class BoardVO {
	
	private int b_pk;
	private String b_title;
	private String b_content;
	private String b_regdate;
	private int b_hitcounts;
	private int b_seq;
	private int b_category;
	private int u_pk;
	private String b_writer;
	
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public int getU_pk() {
		return u_pk;
	}
	public void setU_pk(int u_pk) {
		this.u_pk = u_pk;
	}
	public int getB_pk() {
		return b_pk;
	}
	public void setB_pk(int b_pk) {
		this.b_pk = b_pk;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(String b_regdate) {
		this.b_regdate = b_regdate;
	}
	public int getB_hitcounts() {
		return b_hitcounts;
	}
	public void setB_hitcounts(int b_hitcounts) {
		this.b_hitcounts = b_hitcounts;
	}
	public int getB_seq() {
		return b_seq;
	}
	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}
	public int getB_category() {
		return b_category;
	}
	public void setB_category(int b_category) {
		this.b_category = b_category;
	}
	

}
