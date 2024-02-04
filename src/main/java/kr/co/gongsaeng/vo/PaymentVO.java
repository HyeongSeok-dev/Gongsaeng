package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class PaymentVO {
	
	private String pay_num;
	private int res_num;
	private int res_person;
	private int com_idx;
	private int class_idx;
	private String member_id;
	private int payment;
	private int discount_payment;
	private String pay_method;
	private String pay_date;
	private String pay_card_co;
	private String per_Info_consent;
	private int pay_status;
	private int pay_category;
	private int pay_cal_staus;
	
	//[ 관리자 페이지 ]
	// 회원상세 페이지
	private String classRes; // 총 수업 예약
	private String oneDayRes;
	private String regularRes;
	private String classMonthRes; // 이달 수업 예약
	private String oneDayMonthRes;
	private String regularMonthRes;
	
	//회원 예약(결제)내역 페이지
	private String com_name;
	private String class_name;
	private String class_category;
}
