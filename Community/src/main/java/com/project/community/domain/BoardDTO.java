package com.project.community.domain;

import org.apache.ibatis.type.Alias;

@Alias("BoardDTO")
public class BoardDTO extends BoardVO {
	
	private String u_profileImg;

	public String getU_profileImg() {
		return u_profileImg;
	}

	public void setU_profileImg(String u_profileImg) {
		this.u_profileImg = u_profileImg;
	}
	
	
}
