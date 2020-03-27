package com.jeon.Portfolio.cart.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeon.Portfolio.cart.service.CartDAO;
import com.jeon.Portfolio.cart.service.CartVO;
import com.jeon.Portfolio.order.service.OrderVO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Resource 
	SqlSession sqlSession;
	
	private static String namespace = "com.jeon.Portfolio.cart.service.impl.CartMapper";
	
	// 장바구니 추가
	@Override
	public void cartInsert(CartVO cartVO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".cartInsert", cartVO);
	}
	
	// 장바구니 목록
	@Override
	public List<CartVO> cartList(String user_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".cartList", user_id);
	}


	// 장바구니 수량 확인
	@Override
	public int cartCount(int menu_no, String user_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu_no", menu_no);
		map.put("user_id", user_id);
		return sqlSession.selectOne(namespace + ".cartCount", map);
	}

	@Override
	public void cartUpdate(CartVO cartVO) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".cartUpdate", cartVO);
	}

	@Override
	public int money(String user_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".money", user_id);
	}


	@Override
	public void cartDelete(String user_id, int menu_no) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu_no", menu_no);
		map.put("user_id", user_id);
		
		sqlSession.delete(namespace + ".cartDelete", map);
	}

	@Override
	public void cartAllDelete(String user_id) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".cartAllDelete", user_id);
	}

	@Override
	public void cartOrderInsert(int order_sum_money, String user_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("order_sum_money", order_sum_money);
		map.put("user_id", user_id);
		
		sqlSession.insert(namespace + ".cartOrderInsert", map);
	}

	@Override
	public void cartOrderMenuInsert(int menu_no, String user_id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menu_no", menu_no);
		map.put("user_id", user_id);
		sqlSession.insert(namespace + ".cartOrderMenuInsert", map);
	}

	@Override
	public List<Integer> cartMenuNo(String user_id) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList(namespace + ".cartMenuNo", user_id);
	}


}
