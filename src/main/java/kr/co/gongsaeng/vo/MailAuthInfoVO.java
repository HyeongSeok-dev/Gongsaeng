package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class MailAuthInfoVO {
	private int auth_idx;
	private String member_id;
	private String auth_code;
	private String member_email;
}
