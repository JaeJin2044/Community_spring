package com.project.community.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/board")
@Controller
public class BoardController {
	
	@GetMapping("/list")
	public void list() {
		
		
	}
	@GetMapping("/detail")
	public void detail() {
		
	}

}