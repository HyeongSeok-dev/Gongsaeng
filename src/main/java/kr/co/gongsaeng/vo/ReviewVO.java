package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class ReviewVO {
	private int review_idx;
	private String member_id;
	private String review_subject;
	private String review_content;	
	private int review_score;
	private int class_idx;
	
	
	
	
	//------------------------------------------------
	private String review_img_1;
	private int review_status;
}
