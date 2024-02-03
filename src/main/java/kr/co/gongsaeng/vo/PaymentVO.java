package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class PaymentVO {
	
	
	//[ 관리자 페이지 ]
	// 회원상세 페이지
	private String classRes; // 총 수업 예약
	private String oneDayRes;
	private String regularRes;
	private String classMonthRes; // 이달 수업 예약
	private String oneDayMonthRes;
	private String regularMonthRes;
}
