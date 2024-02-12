package kr.co.gongsaeng.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardVO {
	private int board_idx;
	private String member_id;
	private String board_subject;
	private String board_content;
	private Timestamp board_date;
	private int board_main_category;
	private int board_sub_category;
	// ------------------------------------------------------------------------------------
	// String 타입으로 지정하는 파일 관련 멤버변수는 실제 파일이 아닌 파일의 이름을 다룰 용도로 사용
	// => 따라서, form 태그 내의 파일의 name 속성값과 달라야함(DB 컬럼명과 동일하게 설정)
	private String board_img1;
	private String board_img2;
	private String board_img3;
	// ------------------------------------------------------------------------------------
	// 업로드되는 실제 파일을 다룰 MultipartFile 타입 멤버변수 추가
	// => 멤버변수명은 form 태그 내의 파일의 name 속성값과 동일해야함
	private MultipartFile file1;
	private MultipartFile file2;
	private MultipartFile file3;
	private int board_readcount;
	
	private String member_img;
	private String member_nick;
}
