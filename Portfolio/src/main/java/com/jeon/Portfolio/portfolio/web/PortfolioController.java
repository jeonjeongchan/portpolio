package com.jeon.Portfolio.portfolio.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PortfolioController {

	// 포트폴리오
	@GetMapping("/portfolio")
	private String portfolio() throws Exception {

		return "portfolio";
		
	}
}
