package com.jeon.Portfolio.order.service;

import java.util.List;

public interface OrderService {

	List<OrderVO> orderList(OrderVO orderVO);

	int money(String user_id);

	List<OrderVO> orderDetail(int order_no);

	int orderSumMoney(int order_no);

	void orderDelete(int order_no);

	void orderMenuDelete(int order_no);

}
