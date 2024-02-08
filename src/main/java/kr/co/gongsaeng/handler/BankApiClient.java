package kr.co.gongsaeng.handler;

import java.net.URI;
import java.util.Map;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
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

	//출금이체API
	public Map<String, Object> requestWithdraw(Map<String, String> map) {
		
		//사용자 정보 조회시 토큰값 담아 전송 헤더에 정보 추가
		HttpHeaders headers = new HttpHeaders();
		//엑세스 토큰 전달
		headers.setBearerAuth(map.get("access_token"));
		//컨텐츠 타입 설정(변경)
		headers.setContentType(MediaType.APPLICATION_JSON);
		//요청에 필요한 URL정보 생성 -> 문자열로 바로지정
		String url = base_url + "/v2.0/transfer/withdraw/fin_num"; 
		//요청파라미터를 json형식으로 생성, 출금정보를 저장할 객체생성
		JSONObject jo = new JSONObject();
		//JSONObject객체의 put메서드 호출하여 요청 파라미터 저장
		jo.put("bank_tran_id", bankValueGenerator.getBankTranId());
		
		// ------------ 핀테크 이용기관 정보 -------------
		// 약정계좌번호를 약정계좌관리 메뉴의 "출금계좌" 항목에 등록 필수!
		jo.put("cntr_account_type", "N"); // 약정 계좌/계정 구분("N" : 계좌, "C" : 계정 => N 고정)
	//				jo.put("cntr_account_num", "23062003999"); // 약정 계좌/계정 번호(핀테크 서비스 기관의 계좌번호)
		jo.put("cntr_account_num", cntr_account_num); // 약정 계좌/계정 번호(핀테크 서비스 기관의 계좌번호)
		jo.put("dps_print_content", map.get("id")); // 입금계좌인자내역(결제 요청 사용자 아이디 활용)
		
		// ------------ 요청 고객(출금 대상) 정보 ------------
		jo.put("fintech_use_num", map.get("fintech_use_num")); // 출금계좌 핀테크이용번호
		jo.put("wd_print_content", "공생_페이충전"); // 출금계좌인자내역
		jo.put("tran_amt", map.get("tran_amt")); // 거래금액 
		jo.put("tran_dtime", bankValueGenerator.getTranDTime()); // 요청일시(자동생성)
		jo.put("req_client_name", map.get("req_client_name")); // 요청고객 성명(출금계좌 예금주명)
		jo.put("req_client_fintech_use_num", map.get("fintech_use_num")); // 요청고객 핀테크이용번호(출금계좌)
		// => 주의! 은행기관코드&계좌번호 또는 핀테크이용번호 둘 중 하나만 설정
		jo.put("req_client_num", map.get("id").toUpperCase()); // 요청고객 회원번호(아이디 활용) => 단, 영문자는 모두 대문자로 변환 
		jo.put("transfer_purpose", "ST"); // 이체용도(송금(TR), 결제(ST), 충전(RC) 등) 
		
		// ----------- 수취 고객(실제 최종 입금 대상) 정보 -----------
		// 최종적으로 이 돈을 수신하는 계좌에 대한 정보
		// 이 정보(3개)는 피싱 등의 사고 발생 시 지급 정지를 위한 정보(현재 검증수행은 X)
		jo.put("recv_client_name", "이연태"); // 
		jo.put("recv_client_bank_code", "004"); // 
		jo.put("recv_client_account_num", "23062003999"); // 
		logger.info(">>>>> 출금 이체 요청 JSON 데이터 : " + jo.toString());
		
		//HttpEntity 객체 생성
		HttpEntity<String> httpEntity = new HttpEntity<String>(jo.toString(), headers);
		//RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		//exchange()메서드 호출 HTTP요청 수행
		ResponseEntity<Map<String, Object>> responseEntity
			= restTemplate.exchange(url, HttpMethod.POST, httpEntity, new ParameterizedTypeReference<Map<String, Object>>() {});
		//getbody()메서드 호출하여 응답 데이터 리턴
		return responseEntity.getBody();
	}

	
	
}//BankApiClient
