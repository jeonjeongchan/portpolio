package com.jeon.Portfolio.cart.service;

import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {

	@Id
	private int cart_no; // 장바구니 번호
	private int cart_count; // 장바구니 수량
	private String user_id; // 사용자 아이디
	private String user_name; // 사용자 이름
	private int menu_no; // 메뉴 번호
	private String menu_name; // 메뉴 이름
	private String menu_photo; // 메뉴 사진
	private int menu_price; // 메뉴 단가
	private int money; // 주문 가격
	private int sumMoney; // 주문 가격
	private String useyn; // 활성화 비활성화
	


}
