package kr.co.gongsaeng.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewVO {
	private int review_idx;
	private String member_id;
	private String review_subject;
	private String review_content;	
	private double review_score;
	private int class_idx;
	private String review_regdate;
	private String review_img_1;
	private int review_status;
	private String pay_num;
	private int review_kind;
	private int review_detail;
	private int review_cheap;
	private int review_explanation;
	private int review_interior;
	private int review_trendy;
	private int review_large;
	private int review_meeting;
	private int review_comfortable;
	private int review_parking;
	private int review_clean_toilet;
	private int review_etc_fast;
	private int review_no_keyword;
	
	
	private String member_email;
	private String member_phone;
	
	//------------------------------------------------
	// 신고 테이블
		private int report_reason;
		private int report_person;
		private String report_content;
		private boolean report_category;
		private int report_status;
		
		private double avg_score;
		private int reviewCount;
		private int fiveStarCount;
		private int fourStarCount;
		private int threeStarCount;
		private int twoStarCount;
		private int oneStarCount;
	// ------------------------------------------------------------------------------------
		// 업로드되는 실제 파일을 다룰 MultipartFile 타입 멤버변수 추가
		// => 멤버변수명은 form 태그 내의 파일의 name 속성값과 동일해야함
	private MultipartFile file1;
	private String com_name;
	// ------------------------------------------------------------------------------------
	private int point_idx;
}
