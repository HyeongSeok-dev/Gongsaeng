package kr.co.gongsaeng.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CompanyClassVO {
	private String member_id;
	private String member_name;
	private int memeber_gender;
	private int class_idx;
	private String class_title;
	private Date class_start_date;
	private Date class_end_date;
	private String pay_date;
	private int com_idx;
	private String classStatus;
}
