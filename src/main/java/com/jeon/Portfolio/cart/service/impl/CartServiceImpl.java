package com.jeon.Portfolio.cart.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jeon.Portfolio.cart.service.CartDAO;
import com.jeon.Portfolio.cart.service.CartService;
import com.jeon.Portfolio.cart.service.CartVO;
import com.jeon.Portfolio.order.service.OrderVO;

@Service
public class CartServiceImpl implements CartService {

	@Resource
	CartDAO cartDao;

	@Override
	public void cartInsert(CartVO cartVO) {
		// TODO Auto-generated method stub
		cartDao.cartInsert(cartVO);
	}

	@Override
	public void cartUpdate(CartVO cartVO) {
		// TODO Auto-generated method stub
		cartDao.cartUpdate(cartVO);
	}

	@Override
	public int cartCount(int menu_no, String user_id) {
		// TODO Auto-generated method stub
		return cartDao.cartCount(menu_no,user_id);
	}

	@Override
	public List<CartVO> cartList(String user_id) {
		// TODO Auto-generated method stub
		return cartDao.cartList(user_id);
	}

	@Override
	public int money(String user_id) {
		// TODO Auto-generated method stub
		return cartDao.money(user_id);
	}



	@Override
	public void cartDelete(String user_id, int menu_no) {
		// TODO Auto-generated method stub
		cartDao.cartDelete(user_id, menu_no);
	}

	@Override
	public void cartAllDelete(String user_id) {
		// TODO Auto-generated method stub
		cartDao.cartAllDelete(user_id);
	}


	@Override
	public void cartOrderMenuInsert(int menu_no, String user_id) {
		// TODO Auto-generated method stub
		cartDao.cartOrderMenuInsert(menu_no, user_id);
	}

	@Override
	public void cartOrderInsert(int order_sum_money, String user_id) {
		// TODO Auto-generated method stub
		cartDao.cartOrderInsert(order_sum_money, user_id);
	}

	@Override
	public List<Integer> cartMenuNo(String user_id) {
		// TODO Auto-generated method stub
		
		return cartDao.cartMenuNo(user_id);
	}

}
