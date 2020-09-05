package com.jeon.Portfolio.order.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeon.Portfolio.order.service.OrderDAO;
import com.jeon.Portfolio.order.service.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	
	@Resource 
	SqlSession sqlSession;
	
	private static String namespace = "com.jeon.Portfolio.order.service.impl.OrderMapper";



	@Override
	public int money(String user_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".money", user_id);
	}



	@Override
	public List<OrderVO> orderList(OrderVO orderVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".orderList", orderVO);
	}



	@Override
	public List<OrderVO> orderDetail (int order_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".orderDetail", order_no);
	}



	@Override
	public int orderSumMoney(int order_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".orderSumMoney", order_no);
	}



	@Override
	public void orderDelete(int order_no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".orderDelete", order_no);
	}



	@Override
	public void orderMenuDelete(int order_no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".orderMenuDelete", order_no);
	}
	
}
