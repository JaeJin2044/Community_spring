package com.project.community.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.community.domain.BoardDTO;
import com.project.community.domain.BoardVO;
import com.project.community.domain.Criteria;

@Mapper
public interface BoardMapper {
	
	int insBoard(BoardVO vo);
	List<BoardDTO> selBoardList(Criteria cri);
	BoardVO selBoardOne(BoardVO vo);
	int delBoard(BoardVO vo);
	int plusHitCount(BoardVO vo);
	void updBoard(BoardVO vo);
}
