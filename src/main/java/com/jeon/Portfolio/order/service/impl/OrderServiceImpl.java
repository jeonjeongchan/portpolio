package com.jeon.Portfolio.order.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jeon.Portfolio.order.service.OrderDAO;
import com.jeon.Portfolio.order.service.OrderService;
import com.jeon.Portfolio.order.service.OrderVO;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	OrderDAO orderDao;


	@Override
	public int money(String user_id) {
		// TODO Auto-generated method stub
		return orderDao.money(user_id);
	}


	@Override
	public List<OrderVO> orderList(OrderVO orderVO) {
		// TODO Auto-generated method stub
		return orderDao.orderList(orderVO);
	}


	@Override
	public List<OrderVO> orderDetail (int order_no) {
		// TODO Auto-generated method stub
		return orderDao.orderDetail(order_no);
	}


	@Override
	public int orderSumMoney(int order_no) {
		// TODO Auto-generated method stub
		return orderDao.orderSumMoney(order_no);
	}


	@Override
	public void orderDelete(int order_no) {
		// TODO Auto-generated method stub
		orderDao.orderDelete(order_no);
	}


	@Override
	public void orderMenuDelete(int order_no) {
		// TODO Auto-generated method stub
		orderDao.orderMenuDelete(order_no);
	}

}
