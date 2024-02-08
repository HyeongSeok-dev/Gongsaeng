package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class MyResVO {
	private String pay_num;
	private String res_num;
	private int com_idx;
	private int class_idx;
	private String member_id;
	private int payment;
	private int discount_payment;
	private String pay_method;
	private String pay_date;
	private String pay_card_co;
	private int pay_status;
	private int pay_category;
	private int pay_cal_status;
	private String refund_request_date;
	private String refund_date;
	private String res_visit_date;
	private String res_visit_time;
	private String res_request;
	private int res_member_count;
	private String class_start_time;
	private String class_end_time;
	private int class_category;
	private String class_start_date;
	private String class_end_date;

	
	private String class_pic1;
	private String com_name;
	private String class_title;
	private String com_post_code;
	private String com_address1;
	private String com_address2;
	private String member_name;
	private String member_phone;
	private int total_price;
	private int point;
	
	
}
