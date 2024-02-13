package kr.co.gongsaeng.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class PaymentVO {
	
	private String pay_num;
	private int res_num;
	private int com_idx;
	private int res_member_count;
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
	private int pay_cal_status; //환급상태
	private String res_visit_date; // 예약일
	private String res_visit_time; // 예약시간
	private Date refund_request_date; //환급신청일
	private Date refund_date; //환급완료일
//	private String res_visit_date; // 예약일
//	private String refund_request_date; //환급신청일
//	private String refund_date; //환급완료일
	
	
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
	
	// 환급목록 신청금액 수수료 최종환급금액
//	private String regPay;
//	private String payFee;
//	private String payRef;

	// 사업체 상세 페이지
	// 환급금
	private String refSum; // 가능
	private String monthlyRef; // 금월
	private String totalRef; // 누적
	
	// 예약건
	private String monthlyRes; //총 금월
	private String totalRes; //총 누적
	private String monthlyResCan; //총 금월 취소
	private String totalResCan; //총 누적 취소
	private String monthlyOneRes; //원데이 금월
	private String totalOneRes; //원데이 누적
	private String monthlyRegularRes; //정기 금월
	private String totalRegularRes; //정기 누적
	
	// [ 반장페이지(사업체) ]
    private int payMonth;
    private int payYear;
    private int totalSales;
	private String payment_date;
	private String total_payments;
	private String cancelDate;
	private String cancelCount;
	private String paydate;
	private String payDate;
    
}

