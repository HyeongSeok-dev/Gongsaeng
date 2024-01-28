package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class MemberVO {
	private String member_id;
	private String member_passwd;
	private String member_nick;
	private String member_email;
	private String member_email1;
	private String member_email2;
	private String member_name;
	private String member_birthday;
	private int member_gender;
	private String member_phone;
	private String member_img;
	private int member_status;
	private int member_category;
	private String member_alert_status;
	private String member_reg_date;
	
}
