package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class CompanyReviewDetailVO {
	private int com_idx;
	private String class_title;
	private String member_id;
	private Double review_score;
	private String review_content;
	private String review_regdate;
}
