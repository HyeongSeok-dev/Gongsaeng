package kr.co.gongsaeng.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVO {
	private String member_id;
	private String member_passwd;
	private String member_nick;
	private String member_email;
	private String member_email1;
	private String member_email2;
	private String member_name;
	private String member_birthday;
	private int member_gender;
	private String member_phone;
	private String member_img;
	private int member_status;
	private int member_category;
	private String member_alert_status;
	private String member_date;
	
	private MultipartFile m_file;
	private String rememberId;
	
	// [관리자페이지] 
	// 회원목록 회원분류추가
	private String com_status;
	// 회원목록 신고수 조회
	private int reportCount;
	// 필터링을 위한 체크박스
	private String[] member_status_str;
	// 알림수신상태
	private String alert_1;
	private String alert_2;
	private String alert_3;
	private String alert_4;
}
