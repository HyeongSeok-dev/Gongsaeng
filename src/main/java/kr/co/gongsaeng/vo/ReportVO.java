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
	private String banjangMember_id;
	private String reviewerMember_id;
	private String com_name;
}
