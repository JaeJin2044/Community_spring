package com.project.community.utils;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Component;

import com.project.community.Const;
import com.project.community.domain.UserVO;

@Component
public class SecurityUtils {

	public int getLoginUserPk(HttpSession hs) {
		UserVO loginUser = getLoginUser(hs);
		
		return (loginUser == null) ? 0 : loginUser.getU_pk();
	}
	
	public UserVO getLoginUser(HttpSession hs) {
		return (UserVO)hs.getAttribute(Const.KEY_LOGINUSER);
	}
	
	public String getSalt() {
		return BCrypt.gensalt();
	}
	public String getHashPw(String pw, String salt) {
		//BCrypt.checkpw(plaintext,  hashed); 얘 참고하자. 이방법쓰면 DB에 salt값 저장할 필요 없다.
		return BCrypt.hashpw(pw, salt);
	}
	
}
