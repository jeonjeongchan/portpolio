package com.jeon.Portfolio.cafe.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jeon.Portfolio.cafe.service.CafeService;
import com.jeon.Portfolio.cafe.service.CafeVO;

@Controller
public class CafeController {

	@Resource
	private CafeService cafeService;
	
	// 카페 홈페이지
	@GetMapping("/")
	private String home(CafeVO cafeVO, ModelMap model) throws Exception {
		
		List<CafeVO> bestSeller = cafeService.selectBestSellerList(cafeVO);
		
		model.addAttribute("bestSeller", bestSeller);
		
		return "home/home";
		
	}
	
	
	// 카페 홈페이지
	@GetMapping("/menu")
	private String menu(ModelMap model) throws Exception {
		
		CafeVO cafeVO = new CafeVO();
		
		List<CafeVO> menuList1 = cafeService.selectMenuServiceList1(cafeVO);
		List<CafeVO> menuList2 = cafeService.selectMenuServiceList2(cafeVO);
		List<CafeVO> menuList3 = cafeService.selectMenuServiceList3(cafeVO);

		model.addAttribute("menuList1", menuList1);
		model.addAttribute("menuList2", menuList2);
		model.addAttribute("menuList3", menuList3);
		
		return "menu/menu";
		
	}
	
	
	// 카페 홈페이지
	@GetMapping("/menu/{menu_no}")
	private String menuDetail(@PathVariable int menu_no, ModelMap model) throws Exception {
		
		model.addAttribute("menuDetailList", cafeService.selectMenuDetailServiceList(menu_no));
		
		return "menu/menuDetail";
		
	}
	

	
	// 길찾기
	@GetMapping("/contact")
	private String contact(ModelMap model) throws Exception {
		return "contact/contact";
	}
	
	// 메뉴 등록 페이지
	@GetMapping("/menu/create")
	private String menuCreate(ModelMap model) throws Exception {
		return "menu/menuCreate";
	}
	
	// 메뉴 등록
    @PostMapping("/menu/create")
    private String menuCreatePost(HttpServletRequest request) throws Exception{
        
        CafeVO cafeVO = new CafeVO();
        
        cafeVO.setMenu_name(request.getParameter("menu_name"));
        cafeVO.setMenu_price(Integer.parseInt(request.getParameter("menu_price")));
        cafeVO.setMenu_photo(request.getParameter("menu_photo"));
        cafeVO.setMenu_info(request.getParameter("menu_info"));  
        cafeVO.setMenu_type(request.getParameter("menu_type"));  

        cafeService.insertMenuList(cafeVO);
        
        return "redirect:/";
    }
    
    // 메뉴 삭제
    @GetMapping("/menu/delete/{menu_no}")
    private String menuDelete(@PathVariable int menu_no) throws Exception{
        
    	cafeService.menuDelete(menu_no);
        
        return "redirect:/menu";
    }
    
	// 메뉴 수정창
	@GetMapping("/menu/put/{menu_no}")
	private String menuUpdate(@PathVariable int menu_no, ModelMap model) throws Exception {
		
		model.addAttribute("menuDetailList", cafeService.selectMenuDetailServiceList(menu_no));
		
		return "menu/menuUpdate";
		
	}
	
	// 메뉴  수정하기
	@PostMapping("/menu/put/{menu_no}")
	private String menuUpdatePost(HttpServletRequest req) throws Exception {
		
        CafeVO cafe = new CafeVO();
        cafe.setMenu_name(req.getParameter("menu_name"));
        cafe.setMenu_price(Integer.parseInt(req.getParameter("menu_price")));
        cafe.setMenu_photo(req.getParameter("menu_photo"));
        cafe.setMenu_info(req.getParameter("menu_info"));
        cafe.setMenu_no(Integer.parseInt(req.getParameter("menu_no")));
        
        cafeService.menuDetailUpdate(cafe);
		
		return "redirect:/menu/" + req.getParameter("menu_no");
		
	}
	
}
