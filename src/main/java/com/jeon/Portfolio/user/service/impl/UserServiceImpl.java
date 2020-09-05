package com.jeon.Portfolio.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jeon.Portfolio.user.service.UserDAO;
import com.jeon.Portfolio.user.service.UserService;
import com.jeon.Portfolio.user.service.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource 
	private UserDAO userDAO;

	// 로그인 처리
	@Override
	public UserVO loginServiceList(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.loginServiceList(userVO);
	}

	// 회원 가입 처리
	@Override
	public void Register(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		userDAO.Register(userVO);
	}

	// 유저 목록
	@Override
	public List<UserVO> selectUserServiceList() throws Exception{
		// TODO Auto-generated method stub
		return userDAO.selectUserServiceList();
	}

	
	@Override
	public void insertResister(UserVO vo) {
		// TODO Auto-generated method stub
		userDAO.insertResister(vo);
	}

	@Override
	public String overlapTest(String user_id) {
		// TODO Auto-generated method stub
		return userDAO.overlapTest(user_id);
	}

	@Override
	public int loginCheck(String id, String pw) {
		// TODO Auto-generated method stub
		return userDAO.loginCheck(id, pw);
	}

	@Override
	public String passwordCnt(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.passwordCnt(vo);
	}

	@Override
	public UserVO selectUser(String id) {
		// TODO Auto-generated method stub
		return userDAO.selectUser(id);
	}
	

}
