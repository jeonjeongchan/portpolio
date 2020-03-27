package com.jeon.Portfolio.cafe.service;

import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CafeVO {

	@Id
	private int menu_no; // 메뉴 번호
	private String menu_name; // 메뉴 이름
	private int menu_price; // 메뉴 가격
	private String menu_photo; // 메뉴 사진
	private String menu_info; // 메뉴 설명
	private String menu_type; // 메뉴 종류
	
}
