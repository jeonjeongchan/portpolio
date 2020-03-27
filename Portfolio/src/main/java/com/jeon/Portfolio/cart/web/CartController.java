package com.jeon.Portfolio.cart.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jeon.Portfolio.cart.service.CartService;
import com.jeon.Portfolio.cart.service.CartVO;
import com.jeon.Portfolio.order.service.OrderVO;
import com.jeon.Portfolio.user.service.UserVO;

@Controller
public class CartController {

	@Resource
	private CartService cartService;

	// 장바구니 등록
	@PostMapping("/cart")
	private String cartInsert(CartVO cartVO, HttpSession session) throws Exception {

		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = null;

		user_id = userVO.getUser_id(); // user_id 정보 가져오기

		cartVO.setUser_id(user_id); // cartVO에 user_id값 담기

		int count = cartService.cartCount(cartVO.getMenu_no(), user_id); // 수량 개수

		if (count == 0) {
			cartService.cartInsert(cartVO); // 장바구니에 아무것도 없으면 삽입
		} else {
			cartService.cartUpdate(cartVO); // 있으면 업데이트
		}

		return "redirect:/";

	}
	
	// 장바구니 목록
	@GetMapping("/cart")
	public ModelAndView cartList(HttpSession session, ModelAndView mav) {

		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = null;

		user_id = userVO.getUser_id(); // user_id 정보 가져오기

		Map<String, Object> map = new HashMap<String, Object>();
		List<CartVO> cartList = cartService.cartList(user_id); // 장바구니 정보
		int money = cartService.money(user_id); // 주문 금액

		int sumMoney = 0;

		sumMoney = sumMoney + money;

		map.put("user_id", user_id);
		map.put("cartList", cartList);
		map.put("count", cartList.size());
		map.put("money", money);
		map.put("sumMoney", sumMoney);
		mav.setViewName("cart/cart");
		mav.addObject("map", map);

		return mav;

	}
	
	// 장바구니 목록
	@GetMapping("/checkout")
	public ModelAndView checkoutList(CartVO cartVO, HttpSession session, ModelAndView mav) {

		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = null;

		user_id = userVO.getUser_id(); // user_id 정보 가져오기

		Map<String, Object> map = new HashMap<String, Object>();
		List<CartVO> cartList = cartService.cartList(user_id); // 장바구니 정보
		int money = cartService.money(user_id); // 주문 금액

		int sumMoney = 0;
		
		int discount = 0;

		sumMoney = sumMoney + money;

		map.put("user_id", user_id);
		map.put("cartList", cartList);
		map.put("count", cartList.size());
		map.put("money", money);
		map.put("discount", discount);
		map.put("sumMoney", sumMoney);
		mav.setViewName("checkout/checkout");
		mav.addObject("map", map);

		return mav;

	}
	
	/*
	 * // 결제
	 * 
	 * @GetMapping("/pay") public ModelAndView pay(CartVO cartVO, HttpSession
	 * session, ModelAndView mav) {
	 * 
	 * UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보
	 * 담기
	 * 
	 * String user_id = null; String user_name = null;
	 * 
	 * user_id = userVO.getUser_id(); // user_id 정보 가져오기 user_name =
	 * userVO.getUser_name(); // user_name 정보 가져오기
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>(); List<CartVO>
	 * cartList = cartService.cartList(user_id); // 장바구니 정보 int money =
	 * cartService.money(user_id); // 주문 금액
	 * 
	 * int sumMoney = 0;
	 * 
	 * sumMoney = sumMoney + money;
	 * 
	 * map.put("user_name", user_name); map.put("sumMoney", sumMoney);
	 * mav.setViewName("pay/pay"); mav.addObject("map", map);
	 * 
	 * return mav;
	 * 
	 * }
	 */

	// 장바구니 삭제
	@GetMapping("/cart/delete/{menu_no}")
	public String cartDelete(CartVO cartVO, @PathVariable int menu_no, HttpSession session) {

		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = userVO.getUser_id(); // user_id 정보 가져오기

		cartVO.setUser_id(user_id); // cartVO에 user_id값 담기
		cartVO.setMenu_no(menu_no);
		
		cartService.cartDelete(user_id, menu_no);
		return "redirect:/cart";
	}
	
	// 장바구니 전체 삭제
	@GetMapping("/cart/delete/")
	public String cartAllDelete(HttpSession session) {

		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = null;

		user_id = userVO.getUser_id(); // user_id 정보 가져오기
		
		cartService.cartAllDelete(user_id);
		
		return "redirect:/cart";
	}

	// 주문 등록
	@PostMapping("/order")
	private String cartOrder(HttpSession session) throws Exception {

		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = null;

		user_id = userVO.getUser_id(); // user_id 정보 가져오기
		
		int money = cartService.money(user_id); // 주문 금액

		int order_sum_money = 0;
				
		order_sum_money = order_sum_money + money;
		
		List<Integer> menu_no = cartService.cartMenuNo(user_id);
			
		for (int i = 0; i < menu_no.size(); i++) {
			System.out.println("번호 : " + menu_no.get(i));
			System.out.println("사이즈 : " + menu_no.size());
		}
		
		cartService.cartOrderInsert(order_sum_money, user_id);
		
		for (int i = 0; i < menu_no.size(); i++) {
			cartService.cartOrderMenuInsert(menu_no.get(i), user_id);	
		}
	
		cartService.cartAllDelete(user_id);

		return "redirect:/cart";

	}
	
	
}
