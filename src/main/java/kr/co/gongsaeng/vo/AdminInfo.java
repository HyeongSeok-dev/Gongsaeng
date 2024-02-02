package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class AdminInfo {
	
	private String classRes; // 총 수업 예약
	private String oneDayRes;
	private String regularRes;
	private String classMonthRes; // 이달 수업 예약
	private String oneDayMonthRes;
	private String regularMonthRes;
	
	private String reviewMonth; // 리뷰 이달
	private String reviewTotal; // 리뷰 누적
	private String reviewReport; // 리뷰 피신고건수
	
	//반장
	private String totalClass; // 총 등록
	private String oneDayClass; // 원데이 등록
	private String regularClass; // 정기 등록
}
