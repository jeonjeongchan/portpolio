package com.jeon.Portfolio.cafe.service;

import java.util.List;

public interface CafeDAO {

	List<CafeVO> selectMenuServiceList1(CafeVO cafeVO);

	CafeVO selectMenuDetailServiceList(int menu_no);

	void insertMenuList(CafeVO cafeVO);

	int menuDelete(int menu_no);

	int menuDetailUpdate(CafeVO cafe);

	List<CafeVO> selectMenuServiceList2(CafeVO cafeVO);

	List<CafeVO> selectBestSellerList(CafeVO cafeVO);

	List<CafeVO> selectMenuServiceList3(CafeVO cafeVO);


}
