package com.jeon.Portfolio.order.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.jeon.Portfolio.order.service.OrderService;
import com.jeon.Portfolio.order.service.OrderVO;
import com.jeon.Portfolio.user.service.UserVO;

@Controller
public class OrderController {

	@Resource
	private OrderService orderService;
		
	// 주문 현황
	@GetMapping("/order")
	private ModelAndView orderList(OrderVO orderVO, ModelAndView mav, HttpSession session) throws Exception {
		
		UserVO userVO = (UserVO) session.getAttribute("user"); // userVO에 user세션 정보 담기

		String user_id = null;

		user_id = userVO.getUser_id(); // user_id 정보 가져오기

		orderVO.setUser_id(user_id); // orderVO에 user_id값 담기
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<OrderVO> orderList = orderService.orderList(orderVO);
		
		map.put("user_id", user_id);
		map.put("orderList", orderList);
		map.put("order_count", orderList.size());
		mav.setViewName("order/order");
		mav.addObject("map", map);
		
		return mav;
		
	}
	
	
	
	
	// 상세 메뉴 정보
	@GetMapping("/order/{order_no}")
	private String orderDetail(@PathVariable int order_no, ModelMap model) throws Exception {
				
		
		int order_sum_money = orderService.orderSumMoney(order_no);
		
		List<OrderVO> orderDetail = orderService.orderDetail(order_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("order_sum_money", order_sum_money);
	
		
		System.out.println(orderDetail);
	
		model.addAttribute("orderDetail", orderDetail);
		model.addAttribute("map", map);
		
		return "order/orderDetail";
		
	}
	
	// 상세 메뉴 정보
	@GetMapping("/order/delete/{order_no}")
	private String orderDelete(@PathVariable int order_no, ModelMap model) throws Exception {
		
		orderService.orderDelete(order_no);
		orderService.orderMenuDelete(order_no);
		
		return "redirect:/cart";
		
	}
	

	

}
