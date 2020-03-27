package com.jeon.Portfolio.user.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeon.Portfolio.user.service.UserService;
import com.jeon.Portfolio.user.service.UserVO;

@Controller 
public class UserController {

	private static final Logger log = LoggerFactory.getLogger(UserController.class);

	@Resource 
	private UserService userService;

	// 회원가입 화면
	@GetMapping("/register")
	public String register() {

		return "login/register";
	}
	
	// 회원가입
	@PostMapping("/register")
	public ModelAndView registerPost(ModelAndView mav, UserVO vo, HttpSession session) throws Exception {

		String user_password = vo.getUser_password();

		vo.setUser_password(user_password);

		userService.insertResister(vo);

		mav.setViewName("redirect:/loginPage");

		log.info("insert시작함");

		return mav;

	}
	
	// 아이디 중복
	@RequestMapping("/overlaptest")
	@ResponseBody
	public String overlapTest(String user_id){

		String count_Id = userService.overlapTest(user_id);

		return count_Id;

	}
		
	// 로그인
	@RequestMapping("/login")
	@ResponseBody
	public int login(UserVO userVO, String id, String pw, HttpSession session) {		
		
		int loginIdentify = userService.loginCheck(id, pw);
		
		userVO = (UserVO) userService.selectUser(id);
	
		
		if (loginIdentify == 1){

			session.setAttribute("user", userVO);
			
		}

		return loginIdentify;

	}
	
	// 로그인 페이지
	@RequestMapping("/loginPage")
	public ModelAndView loginPage(HttpSession session){

		ModelAndView mav = new ModelAndView();

		String user_id = (String)session.getAttribute("user_id");
		
		System.out.println(user_id);

		if (user_id != null) {		//session check

			mav.setViewName("redirect:/");

			return mav;

		}

		mav.setViewName("/login/loginPage");

		return mav;
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session){

		String curTime = new SimpleDateFormat("yyyy/MM/dd/HH:mm").format(new Date());

		log.info("logout 현재시간 : "+curTime);

		session.invalidate();			//session 종료(안에있는 데이터 다삭제)

		return "redirect:/";

	}



	
	// 회원 목록
	@GetMapping("/user")
	public String userList(ModelMap model) throws Exception {

		List<UserVO> userList = userService.selectUserServiceList();
		model.addAttribute("userList", userList);
		
		return "user/user";

	}
	
	// 로그아웃 페이지
	@RequestMapping("/logoutPage")
	public String loginpage(){

		return "/login/loginpage";

	}
	
	// 비밀번호 찾기 창
	@RequestMapping("/password_search")
	public String pwd_search() {

		return "/login/password_search";

	}
	
	// 비밀번호 힌트 확인
	@RequestMapping("/pwd_search")
	@ResponseBody
	public String password_search(UserVO vo){

		String pwd_Identify = userService.passwordCnt(vo);

		return pwd_Identify;
	}
	
	

}
