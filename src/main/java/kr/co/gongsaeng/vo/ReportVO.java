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
	private String report_email;
	private int report_status;
	
	// admin 신고수 조회
	private int reportCount;
}
