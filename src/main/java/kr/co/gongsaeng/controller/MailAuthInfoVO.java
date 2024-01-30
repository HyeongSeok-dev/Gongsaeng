package kr.co.gongsaeng.controller;

import lombok.Data;

@Data
public class MailAuthInfoVO {
	private int auth_idx;
	private String user_id;
	private String auth_code;
	private String user_email;
}
