package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class ReportVO {
	
	private int report_idx;
	private int review_idx;
	private int class_idx;
	private String member_id;
	private int report_reason;
	private String report_content;
	private String member_email;
	private int report_status;
	private String member_phone;
	private int report_category;
	private String report_date;
	
	// [관리자 페이지]
	// 클래스 신고
	private String class_title;
	private String banjangMember_id; //클래스신고시 피신고자
	private String reviewerMember_id; //리뷰신고시 피신고자
	private String com_name;
	private String review_content;
	
	// 피신고건수(company_detail)
	private int reportBeforCount;//전월 
	private int reportMonthlyCount;//금월 
	private int reportCount;//누적 
}
