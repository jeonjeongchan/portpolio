package com.jeon.Portfolio.user.service;

import java.sql.Date;

import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {

	@Id
	private String user_id;
	private String user_password;
	private String user_password_check;
	private String user_name;
	private String user_grant;
	private String user_phonenumber;
	private String hp1;
	private String hp2;
	private String hp3;
	private int user_point;
	private Date user_regdate;
	

	
	


}
