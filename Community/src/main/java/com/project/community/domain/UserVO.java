package com.project.community.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("UserVO")
public class UserVO {
	private int u_pk;
	private String u_id;
	private String u_name;
	private String u_pw;
	private String u_email;
	private String regdate;
	private String u_profileImg;
	private String u_phone;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getU_pk() {
		return u_pk;
	}
	public void setU_pk(int u_pk) {
		this.u_pk = u_pk;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_profileImg() {
		return u_profileImg;
	}
	public void setU_profileImg(String u_profileImg) {
		this.u_profileImg = u_profileImg;
	}
	
	
}
