package com.jeon.Portfolio.cafe.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jeon.Portfolio.cafe.service.CafeDAO;
import com.jeon.Portfolio.cafe.service.CafeVO;

@Repository
public class CafeDAOImpl implements CafeDAO {
	
	@Resource 
	SqlSession sqlSession;
	
	private static String namespace = "com.jeon.Portfolio.cafe.service.impl.CafeMapper";

	@Override
	public List<CafeVO> selectMenuServiceList1(CafeVO cafeVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectMenuServiceList1", cafeVO);
	}
	
	@Override
	public List<CafeVO> selectMenuServiceList2(CafeVO cafeVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectMenuServiceList2", cafeVO);
	}
	
	@Override
	public List<CafeVO> selectMenuServiceList3(CafeVO cafeVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectMenuServiceList3", cafeVO);
	}

	@Override
	public CafeVO selectMenuDetailServiceList(int menu_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectMenuDetailServiceList", menu_no);
	}

	@Override
	public void insertMenuList(CafeVO cafeVO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insertMenuList", cafeVO);
	}

	@Override
	public int menuDelete(int menu_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace + ".menuDelete", menu_no);
	}


	@Override
	public int menuDetailUpdate(CafeVO cafe) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".menuDetailUpdate", cafe);
	}

	@Override
	public List<CafeVO> selectBestSellerList(CafeVO cafeVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectBestSellerList", cafeVO);
	}
	
}
