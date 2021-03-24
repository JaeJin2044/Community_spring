package com.project.community.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.community.domain.UserVO;


@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private HttpSession hs;
	
	@GetMapping("/join")
	public void join() {}
	
	@GetMapping("/login")
	public void login() {}
	
	@GetMapping("/logout")
	public String logout() {
		hs.invalidate();
		
		return "redirect:/board/list";
	}
	
}
