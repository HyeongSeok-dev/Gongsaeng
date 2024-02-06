package kr.co.gongsaeng.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.handler.LoginApiClient;
import kr.co.gongsaeng.vo.ResponseLoginTokenVO;

@Service
public class LoginService {
	
	@Autowired
	private LoginApiClient loginApiClient;
	
	public ResponseLoginTokenVO requestKakaoAccessToken(Map<String, String> map) {
		// TODO Auto-generated method stub
		return loginApiClient.requestKakaoAccessToken(map);
	}

	public Map<String, Object> requestKaKaoMemberInfo(ResponseLoginTokenVO responseToken) {
		// TODO Auto-generated method stub
		return loginApiClient.requestKaKaoMemberInfo(responseToken);
	}
	
	public ResponseLoginTokenVO requestNaverAccessToken(Map<String, String> map) {
		// TODO Auto-generated method stub
		return loginApiClient.requestNaverAccessToken(map);
	}

	public Map<String, Object> requestNaverMemberInfo(ResponseLoginTokenVO responseToken) {
		// TODO Auto-generated method stub
		return loginApiClient.requestNaverMemberInfo(responseToken);
	}
	
}
