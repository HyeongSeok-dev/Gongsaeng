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
	private int pay_cal_staus; //환급상태
	private int res_visit_date; // 예약일
	private int refund_request_date; //환급신청일
	private int refund_date; //환급완료일
	
	
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
	private String class_title;
	private String class_category;
	
	//사업체 환급금 목록 페이지
	private int requestAmount; //신청금액
	private int refundableAmount; //환급 가능금액 
}
