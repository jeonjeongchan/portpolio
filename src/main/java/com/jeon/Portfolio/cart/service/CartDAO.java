package com.jeon.Portfolio.cart.service;

import java.util.List;
import java.util.Map;

import com.jeon.Portfolio.order.service.OrderVO;

public interface CartDAO {

	void cartInsert(CartVO cartVO);

	void cartUpdate(CartVO cartVO);

	int cartCount(int menu_no, String user_id);

	List<CartVO> cartList(String user_id);

	int money(String user_id);

	void cartDelete(String user_id, int menu_no);

	void cartOrderInsert(int order_sum_money, String user_id);

	void cartAllDelete(String user_id);

	void cartOrderMenuInsert(int menu_no,String user_id);

	List<Integer> cartMenuNo(String user_id);






}
