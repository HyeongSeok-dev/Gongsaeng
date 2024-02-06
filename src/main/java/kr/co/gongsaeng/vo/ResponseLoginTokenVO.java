package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class ResponseLoginTokenVO {
	//공통정보
	String token_type;
	String access_token;
	String id_token;
	int expires_in;
	String refresh_token;
	
	//카카오쪽 정보
	int refresh_token_expires_in;
	String scope;
	
	//네이버쪽 정보
	String error;
	String error_description;
}
