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
	private int review_score;
	private int class_idx;
	private Date review_regdate;
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
	
	
	
	
	//------------------------------------------------
	private String review_img_1;
	
	// ------------------------------------------------------------------------------------
		// 업로드되는 실제 파일을 다룰 MultipartFile 타입 멤버변수 추가
		// => 멤버변수명은 form 태그 내의 파일의 name 속성값과 동일해야함
	private MultipartFile file1;
	private int review_status;
	private String com_name;
		// ------------------------------------------------------------------------------------
}
