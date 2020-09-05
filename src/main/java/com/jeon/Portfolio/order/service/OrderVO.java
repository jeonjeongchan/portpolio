package com.jeon.Portfolio.order.service;

import java.sql.Date;

import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVO {

	@Id
	private int order_no; // 장바구니 번호
	private String user_id; // 사용자 아이디
	private String user_name; // 사용자 이름
	private int menu_no; // 메뉴 번호
	private String menu_name; // 메뉴 이름
	private int menu_price; // 메뉴 단가
	private int order_count; // 장바구니 수량
	private int money; // 주문 가격
	private int order_sum_money; // 주문 총 가격
	private Date order_date; // 주문 날짜
	private int order_menu_price; // 주문 가격
	private String menu_photo; // 메뉴 사진


}
