package com.jeon.Portfolio.board.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeon.Portfolio.board.service.BoardDAO;
import com.jeon.Portfolio.board.service.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Resource 
	SqlSession sqlSession;
	
	private static String namespace = "com.jeon.Portfolio.board.service.impl.BoardMapper";

	
	@Override
	public List<BoardVO> selectBoardServiceList(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectBoardServiceList", boardVO);
	}

	@Override
	public int insertBoardServiceList(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".insertBoardServiceList", boardVO);
	}

	@Override
	public BoardVO boardDetail(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".boardDetail", board_no);
	}

	@Override
	public int updateViewCnt(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".updateViewCnt", board_no);
	}

	@Override
	public int boardDelete(int board_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace + ".boardDelete", board_no);
	}


	@Override
	public void boardUpdate(HashMap<String, Object> boardMap) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".boardUpdate", boardMap);
	}


}
