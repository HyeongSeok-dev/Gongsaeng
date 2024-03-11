package kr.co.gongsaeng.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CompanyClassVO {
	private String member_id;
	private String member_name;
	private int member_gender;
	private int class_idx;
	private String class_title;
	private Date class_start_date;
	private Date class_end_date;
	private Date pay_date;
	private int com_idx;
	private String classStatus;
	private String member_nick;
	private String member_birthday;
	private String member_email;
	private String member_phone;
	private String member_img;
	private int member_status;
}
