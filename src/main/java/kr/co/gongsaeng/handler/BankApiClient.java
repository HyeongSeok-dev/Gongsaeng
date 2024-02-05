package kr.co.gongsaeng.handler;

import java.net.URI;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
	
	@Autowired
	private BankValueGenerator bankValueGenerator;
	
	@Value("${client_id}")
	private String client_id;
	
	@Value("${client_secret}")
	private String client_secret;
	
	@Value("${base_url}")
	private String base_url;
	
	@Value("${cntr_account_num}")
	private String cntr_account_num;
	
	
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
		parameters.add("client_id", client_id);
		parameters.add("client_secret", client_secret);
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
	public ResponseTokenVO requestAccessTokenForAdmin(Map<String, String> authResponse) {
		//금융결제원 오픈api요청 작업 처리
		//post방식 요청을 수행하기위한 url정보생성
		URI uri =  UriComponentsBuilder
				.fromUriString("https://testapi.openbanking.or.kr/oauth/2.0/token") // 기본 주소
				.encode()
				.build() // UriComponents 객체 생성
				.toUri();
		//post방식이라 body에 포함시켜 전달
		LinkedMultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		
		parameters.add("client_id", "4066d795-aa6e-4720-9383-931d1f60d1a9");
		parameters.add("client_secret", "36b4a668-94ba-426d-a291-771405e498e4");
		parameters.add("scope", "oob");
		parameters.add("grant_type", "client_credentials");	
		
		HttpEntity<LinkedMultiValueMap<String, String>> httpEntity =
				new HttpEntity<LinkedMultiValueMap<String,String>>(parameters);
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<ResponseTokenVO> responseEntity = 
				restTemplate.exchange(uri, HttpMethod.POST, httpEntity, ResponseTokenVO.class);
		
		//응답정보확인
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
		headers.add("Authorization", "Bearer" + map.get("access_token"));
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
	//잔액조회 api요청
	public Map<String, Object> requestAccountDetail(Map<String, String> map) {
		//파라미터로 사용할 난수 생성하여 리턴받기
		String bank_tran_id = bankValueGenerator.getBankTranId(); 
		logger.info("은행 거래 고유 번호(bank_tran_id) : " + bank_tran_id);
		
		String tran_dtime = bankValueGenerator.getTranDTime();
		logger.info("요청 일시(tran_dtime) : " + tran_dtime);
		
		//사용자 정보 조회시 엑세스 토큰 값을 헤더에 담아 전송하므로 헤더에 정보추가
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + map.get("access_token"));
		
		//헤더 정보를 갖는 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		
		//요청에 필요한 URI정보생성
		URI uri = UriComponentsBuilder
				.fromUriString(base_url + "/v2.0/account/balance/fin_num")
				.queryParam("bank_tran_id", bank_tran_id) // 거래고유번호(참가기관)
				.queryParam("fintech_use_num", map.get("fintech_use_num")) // 핀테크이용번호
				.queryParam("tran_dtime", tran_dtime) // 요청일시
				.encode() // 파라미터에 대한 인코딩 처리
				.build() // UriComponents 객체 생성
				.toUri(); // URI 타입 객체로 변환
		
		//객체생성
		RestTemplate restTemplate = new RestTemplate();
		
		//HTTP요청 수행
		ResponseEntity<Map<String, Object>> responseEntity
			= restTemplate.exchange(uri, HttpMethod.GET, httpEntity, new ParameterizedTypeReference<Map<String, Object>>() {});
		
		//getBody()호출하여 응답데이터 리턴
		return responseEntity.getBody();
	}

	
	
}//BankApiClient
