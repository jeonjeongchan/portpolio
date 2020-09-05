package com.jeon.Portfolio.board.service;

import java.util.HashMap;
import java.util.List;

public interface BoardService {

	// 게시판 조회
	List<BoardVO> selectBoardServiceList(BoardVO boardVO) throws Exception;

	// 게시글 작성
	int insertBoardServiceList(BoardVO boardVO) throws Exception;

	// 게시글 조회수
	int updateViewCnt(int board_no) throws Exception;

	// 게시글 상세 조회
	BoardVO boardDetail(int board_no) throws Exception;

	// 게시글 삭제
	int boardDelete(int board_no) throws Exception;

	// 게시글 수정
	void boardUpdate(HashMap<String, Object> boardMap) throws Exception;

}
