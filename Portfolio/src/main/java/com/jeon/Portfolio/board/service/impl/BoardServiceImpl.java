package com.jeon.Portfolio.board.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jeon.Portfolio.board.service.BoardDAO;
import com.jeon.Portfolio.board.service.BoardService;
import com.jeon.Portfolio.board.service.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Resource
	private BoardDAO boardDAO;
	
	
	// 게시판 작성
	@Override
	public int insertBoardServiceList(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.insertBoardServiceList(boardVO);
	}

	// 게시글 상세 조회
	@Override
	public BoardVO boardDetail(int board_no) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.boardDetail(board_no);
	}

	// 게시판 조회수
	@Override
	public int updateViewCnt(int board_no) throws Exception {
		return boardDAO.updateViewCnt(board_no);

	}


	@Override
	public int boardDelete(int board_no) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.boardDelete(board_no);
	}

	@Override
	public List<BoardVO> selectBoardServiceList(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardServiceList(boardVO);
	}

	@Override
	public void boardUpdate(HashMap<String, Object> boardMap) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.boardUpdate(boardMap);
	}

}
