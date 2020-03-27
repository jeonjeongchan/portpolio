package com.jeon.Portfolio.order.service;

import java.util.List;

public interface OrderDAO {

	int money(String user_id);

	List<OrderVO> orderList(OrderVO orderVO);

	List<OrderVO> orderDetail (int order_no);

	int orderSumMoney(int order_no);

	void orderDelete(int order_no);

	void orderMenuDelete(int order_no);




}
