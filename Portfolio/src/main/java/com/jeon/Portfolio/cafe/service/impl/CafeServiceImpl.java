package com.jeon.Portfolio.cafe.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jeon.Portfolio.cafe.service.CafeDAO;
import com.jeon.Portfolio.cafe.service.CafeService;
import com.jeon.Portfolio.cafe.service.CafeVO;

@Service
public class CafeServiceImpl implements CafeService {

	@Resource
	private CafeDAO cafeDAO;

	@Override
	public List<CafeVO> selectMenuServiceList1(CafeVO cafeVO) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.selectMenuServiceList1(cafeVO);
	}
	
	@Override
	public List<CafeVO> selectMenuServiceList2(CafeVO cafeVO) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.selectMenuServiceList2(cafeVO);
	}

	@Override
	public List<CafeVO> selectMenuServiceList3(CafeVO cafeVO) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.selectMenuServiceList3(cafeVO);
	}

	@Override
	public CafeVO selectMenuDetailServiceList(int menu_no) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.selectMenuDetailServiceList(menu_no);
	}

	@Override
	public void insertMenuList(CafeVO cafeVO) throws Exception {
		// TODO Auto-generated method stub
		cafeDAO.insertMenuList(cafeVO);
	}

	@Override
	public int menuDelete(int menu_no) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.menuDelete(menu_no);
	}


	@Override
	public int menuDetailUpdate(CafeVO cafe) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.menuDetailUpdate(cafe);
	}

	@Override
	public List<CafeVO> selectBestSellerList(CafeVO cafeVO) throws Exception {
		// TODO Auto-generated method stub
		return cafeDAO.selectBestSellerList(cafeVO);
	}
	
}
