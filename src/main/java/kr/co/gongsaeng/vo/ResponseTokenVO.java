package kr.co.gongsaeng.vo;

import lombok.Data;

// 2.1.2. 토큰발급 API - 사용자 토큰발급 API (3-legged) 응답 데이터를 파싱할 VO 클래스 정의
// => 멤버변수로 응답 데이터와 1:1 로 대응하는 변수 선언
//    (주의! 응답 데이터의 파라미터명과 동일한 이름의 멤버변수 선언 필수!)
@Data
public class ResponseTokenVO {
	private String access_token;
	private String token_type;
	private String expires_in;
	private String refresh_token;
	private String scope;
	private String user_seq_no;
}
