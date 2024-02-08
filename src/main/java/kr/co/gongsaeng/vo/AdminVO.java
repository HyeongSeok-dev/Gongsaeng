package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class AdminVO {
	private int year;
	private int month;
	private int date;
	private String dayOfWeek;
	private String totalPayment; //현재 총매
	private String countPayment; //현재 예약수
//	private String currentVisitors; // 현재 방문자 수
//	private String cumulativeVisitors; // 누적 방문자 수
	private String newMemberCount; // 현재 신규 가입자 수
	private String cumulativeMemberCount; //누적 가입자 수
	private String newBanjangCount; //현재 신규 반장 가입자 수
	private String cumulativeBanjangCount; //누적 반장 가입자 수
	private String monthlyPayCount; //이번달 예약 건수
	private String cumulativePayCount; //누적 예약 건수
	private String monthlyTotalPay; //이번달 결제 총 금액
	private String cumulativeTotalPay; //누적 결제 총 금액
	private String monthlyRefund; //이번달 환급금
	private String cumulativeRefund; //누적 환급금
	private String monthlyRefundFee; //이번달 환급 수익
	private String cumulativeRefundFee; //누적 환급 수익
	private String newComRegCount; //사업체 가입 신청
	private String newComRefundApp; //사업체 환급 신청
	private String newClassReport; //클래스 신고
	private String newReviewReport; //리뷰 신고
	private String newQnaChat; //채팅문의
	
	// 월별 매출
	private String jan;
	private String feb;
	private String mar;
	private String apr;
	private String may;
	private String jun;
	private String jul;
	private String aug;
	private String sep;
	private String oct;
	private String nov;
	private String dec;
	
	
}
