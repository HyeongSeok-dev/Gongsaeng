package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class MailAuthInfoVO {
	private int mail_auth_idx;
	private String member_id;
	private String mail_auth_code;
	private String mail_auth_email;
}
