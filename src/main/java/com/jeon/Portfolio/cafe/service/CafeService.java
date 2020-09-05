package com.jeon.Portfolio.cafe.service;

import java.util.List;

public interface CafeService {

	List<CafeVO> selectMenuServiceList1(CafeVO cafeVO) throws Exception;

	CafeVO selectMenuDetailServiceList(int menu_no) throws Exception;

	void insertMenuList(CafeVO cafeVO) throws Exception;

	int menuDelete(int menu_no) throws Exception;

	int menuDetailUpdate(CafeVO cafe) throws Exception;

	List<CafeVO> selectMenuServiceList2(CafeVO cafeVO) throws Exception;

	List<CafeVO> selectBestSellerList(CafeVO cafeVO) throws Exception;

	List<CafeVO> selectMenuServiceList3(CafeVO cafeVO) throws Exception;


}
