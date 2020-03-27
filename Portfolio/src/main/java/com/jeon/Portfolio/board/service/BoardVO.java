package com.jeon.Portfolio.board.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {

	private int board_no;
	private String board_title;
	private String board_content;
	private String user_id;
	private String board_regdate;
	private int board_cnt;
	
	

}
