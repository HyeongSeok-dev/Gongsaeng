package kr.co.gongsaeng.handler;

import java.net.URI;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;


import kr.co.gongsaeng.vo.ResponseTokenVO;

@Component
public class BankApiClient {
	
	private static final Logger logger = LoggerFactory.getLogger(BankApiClient.class);

	//토큰 api
	public ResponseTokenVO requestAccessToken(Map<String, String> authResponse) {
		//금융결제원 오픈 api요청 작업처리
		URI uri = UriComponentsBuilder
				.fromUriString("https://testapi.openbanking.or.kr/oauth/2.0/token") // 기본 주소
				.encode()
				.build() // UriComponents 객체 생성
				.toUri();
		
		//요청에 필요한 파라미터를 객체활용하여 설정
		LinkedMultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		
		//파라미터 전달
		parameters.add("code", authResponse.get("code"));
		parameters.add("client_id", "4066d795-aa6e-4720-9383-931d1f60d1a9");
		parameters.add("client_secret", "36b4a668-94ba-426d-a291-771405e498e4");
		parameters.add("redirect_uri", "http://localhost:8081/gongsaeng/callback");
		parameters.add("grant_type", "authorization_code");
		
		//요청에 사용될 파라미터를 관리하는 객체 요청
		HttpEntity<LinkedMultiValueMap<String, String>> httpEntity =
				new HttpEntity<LinkedMultiValueMap<String,String>>(parameters);
		
		// REST API 요청을 위해 RestTemplate 객체 활용
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<ResponseTokenVO> responseEntity
			= restTemplate.exchange(uri, HttpMethod.POST, httpEntity, ResponseTokenVO.class);
		
		//응답정보 확인
		logger.info("응답 코드 : " + responseEntity.getStatusCode());
		logger.info("응답 헤더 : " + responseEntity.getHeaders());
		logger.info("응답 본문 : " + responseEntity.getBody());
		
		return responseEntity.getBody();
	}

	//==================================================================================
	//사용자 정보조회 api요청
	public Map<String, Object> requestUserInfo(Map<String, String> map) {
		
		HttpHeaders headers = new HttpHeaders();
		//1. 사용자 정보 조회시 엑세스 토믄 값을 헤더에 담아 전송
		headers.add("Authorization", "Bearer" + map.get("account_access_token"));
		//2. 헤더 정보를 갖는 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		//3. 요청에 필요한 URI정보 생성
		URI uri = UriComponentsBuilder
				.fromUriString("https://testapi.openbanking.or.kr/v2.0/user/me")
				.queryParam("user_seq_no", map.get("user_seq_no")) // 파라미터(사용자번호)
				.encode() // 파라미터에 대한 인코딩 처리
				.build() // UriComponents 객체 생성
				.toUri(); // URI 타입 객체로 변환
		//4. RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		//5. Http요청 수행
		ResponseEntity<Map<String, Object>> responseEntity
		 = restTemplate.exchange(uri, HttpMethod.GET, httpEntity, new ParameterizedTypeReference<Map<String, Object>>() {});
		
		return responseEntity.getBody();
	}


	//==================================================================================
	//출금이체api
	public Map<String, Object> requestAccountDetail(Map<String, String> map) {
		return null;
	}
	
	
}//BankApiClient
