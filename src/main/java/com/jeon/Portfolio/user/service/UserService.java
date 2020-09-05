package com.jeon.Portfolio.user.service;

import java.util.List;

public interface UserService {

	// 로그인 처리
	public UserVO loginServiceList(UserVO userVO) throws Exception;

	// 회원가입 처리
	public void Register(UserVO userVO) throws Exception;

	// 유저 목록
	public List<UserVO> selectUserServiceList() throws Exception;

	// 회원가입 처리
	public void insertResister(UserVO vo);

	// 중복 확인
	public String overlapTest(String user_id);


	public int loginCheck(String id, String pw);

	public String passwordCnt(UserVO vo);

	// 로그인 회원 정보
	public UserVO selectUser(String id);
	
}
