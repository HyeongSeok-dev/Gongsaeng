package kr.co.gongsaeng.vo;

import java.sql.Date;
import java.sql.Time;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ClassVO {
	private int class_idx;
	private String member_id;
	private String class_title;
	private int class_category;
	private int class_times;
	private int class_price;
	private Date class_date;
	private Time class_start_time;
	private Time class_end_time;
	private Date class_start_date;
	private Date class_end_date;
	private String class_day;
	private int class_member_count;
	// ------------------------------------------------------------------------------------
	// String 타입으로 지정하는 파일 관련 멤버변수는 실제 파일이 아닌 파일의 이름을 다룰 용도로 사용
	// => 따라서, form 태그 내의 파일의 name 속성값과 달라야함(DB 컬럼명과 동일하게 설정)
	private String class_pic1;
	private String class_pic2;
	private String class_pic3;
	private String class_curriculum1;
	private String class_curriculum2;
	private String class_curriculum3;
	// ------------------------------------------------------------------------------------
	// 업로드되는 실제 파일을 다룰 MultipartFile 타입 멤버변수 추가
	// => 멤버변수명은 form 태그 내의 파일의 name 속성값과 동일해야함
	private MultipartFile file1;
	private MultipartFile file2;
	private MultipartFile file3;
	private MultipartFile file4;
	private MultipartFile file5;
	private MultipartFile file6;
	// ------------------------------------------------------------------------------------
	private String class_post_code;
	private String class_address1;
	private String class_address2;
	// ------------------------------------------------------------------------------------
	private String class_curriculum_detail1;
	private String class_curriculum_detail2;
	private String class_curriculum_detail3;
	// ------------------------------------------------------------------------------------	
	private int class_main_category;
	private int class_sub_category;
	private int class_offering;
	private String class_caution;
	private String class_tag;
	private String class_question1;
	private String class_answer1;
	private String class_question2;
	private String class_answer2;
	private String class_question3;
	private String class_answer3;
	
	private String class_introduction;

	private String dayString;
	
	
	// [관리자 페이지]
	// 회원(반장) 상세페이지
	private String totalClass; // 총 등록
	private String oneDayClass; // 원데이 등록
	private String regularClass; // 정기 등록
	
	// 클래스 목록페이지
	private String com_name; // 사업체이름
	private String classReportCount; // 신고받은 수
	
}
