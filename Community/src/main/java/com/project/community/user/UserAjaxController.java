package com.project.community.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.community.domain.UserDTO;
import com.project.community.domain.UserVO;


@RestController
@RequestMapping("/userAjax")
public class UserAjaxController {
	
	@Autowired
	private UserService service;

	@PostMapping
	public int join(UserDTO dto) {
		System.out.println("하이");
		MultipartFile profileImg = dto.getImg();
		
		return service.join(dto,profileImg);
	}
	@PostMapping("/login")
	public int login(@RequestBody UserDTO dto) {
		
		return service.login(dto);
	}
	
	
	
	
	
}
