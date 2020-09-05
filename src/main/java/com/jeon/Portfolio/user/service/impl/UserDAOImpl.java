package com.jeon.Portfolio.user.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeon.Portfolio.user.service.UserDAO;
import com.jeon.Portfolio.user.service.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Resource 
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeon.Portfolio.user.service.impl.UserMapper";

	@Override
	public UserVO loginServiceList(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".login", userVO);
	}

	@Override
	public void Register(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".register", userVO);
	}

	@Override
	public List<UserVO> selectUserServiceList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".userList");
	}

	@Override
	public void insertResister(UserVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insertResister", vo);
	}

	@Override
	public String overlapTest(String user_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".overlapTest", user_id);
	}

	@Override
	public int loginCheck(String id, String pw) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", id);
		map.put("user_password", pw);	
		return sqlSession.selectOne(namespace + ".loginCheck", map);
	}

	@Override
	public String passwordCnt(UserVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVO selectUser(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectUser", id);
	}

}
