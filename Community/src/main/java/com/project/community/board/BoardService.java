package com.project.community.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.community.domain.BoardDTO;
import com.project.community.domain.BoardVO;
import com.project.community.domain.Criteria;
import com.project.community.utils.SecurityUtils;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private SecurityUtils sUtils;
	
	@Autowired
	private HttpSession hs;
	
	public int insBoard(BoardVO vo) {
		return mapper.insBoard(vo);
	}
	
	
	public List<BoardDTO> selBoardList(Criteria cri){
		return mapper.selBoardList(cri);
	}
	
	public BoardVO selBoardOne(BoardVO vo) {
		
		if(sUtils.getLoginUserPk(hs) != 0) {
			plusHitCount(vo);
		}
		return mapper.selBoardOne(vo);
	}
	
	public BoardVO selBoardedit(BoardVO vo) {
		return mapper.selBoardOne(vo);
	}
	
	
	public void delBoard(BoardVO vo) {
		mapper.delBoard(vo);
	}
	
	public void updBoard(BoardVO vo) {
		mapper.updBoard(vo);
	}
	
	public int plusHitCount(BoardVO vo) {
		
		return mapper.plusHitCount(vo);
	}

}
