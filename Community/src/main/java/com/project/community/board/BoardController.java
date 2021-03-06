package com.project.community.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.community.Const;
import com.project.community.domain.BoardDTO;
import com.project.community.domain.BoardVO;
import com.project.community.domain.Criteria;
import com.project.community.domain.PageDTO;

@RequestMapping("/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Criteria cri,Model model) {
		System.out.println("=======");
		System.out.println("카테고리 : "+cri.getB_category());
		System.out.println("pageNuM : "+cri.getPageNum());
		System.out.println("amount: "+cri.getAmount());
		System.out.println("keyword : "+cri.getKeyword());
		System.out.println("type : "+cri.getType());
		
		int pageTotal = service.pageTotal(cri);
		System.out.println("pageTotal="+pageTotal);
		
		List<BoardDTO> list = service.selBoardList(cri);
		
		model.addAttribute(Const.KEY_LIST, list);
		model.addAttribute(Const.KEY_PAGE, new PageDTO(cri,pageTotal));
		
	}
	
	@GetMapping("/detail")
	public void detail(BoardVO vo,Model model) {
		
		model.addAttribute(Const.KEY_DATA, service.selBoardOne(vo));
	}
	@GetMapping("/write")
	public void write() {}
	
	@PostMapping("/write")
	public String write(BoardVO vo) {
		service.insBoard(vo);
		return "redirect: /board/list?b_category="+vo.getB_category();
	}
	
	@GetMapping("/edit")
	public void edit(BoardVO vo , Model model) {
		model.addAttribute(Const.KEY_DATA, service.selBoardedit(vo));
	}
	
	@PostMapping("/edit")
	public String edit(BoardVO vo) {
		service.updBoard(vo);
		return "redirect: /board/list?b_category="+vo.getB_category();
	}
	
	@GetMapping("delete")
	public String list(BoardVO vo) {
		
		service.delBoard(vo);
		
		System.out.println("delete method pk = "+vo.getB_pk());
		System.out.println("delete method category = "+vo.getB_category());
		return "redirect: /board/list?b_category="+vo.getB_category();
	}
	

}

















