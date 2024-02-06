package kr.co.gongsaeng.handler;

import java.net.URI;
import java.util.Map;

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

import kr.co.gongsaeng.vo.ResponseLoginTokenVO;

@Component
public class LoginApiClient {
	
	@Value("${kakao_base_auth_url}")
	private String kakao_base_auth_url;
	@Value("${kakao_client_id}")
	private String kakao_client_id;
	@Value("${kakao_redirect_uri}")
	private String kakao_redirect_uri;
	@Value("${kakao_base_api_url}")
	private String kakao_base_api_url;
	@Value("${naver_base_auth_url}")
	private String naver_base_auth_url;
	@Value("${naver_client_id}")
	private String naver_client_id;
	@Value("${naver_client_secret}")
	private String naver_client_secret;
	@Value("${naver_redirect_uri}")
	private String naver_redirect_uri;
	@Value("${naver_base_api_url}")
	private String naver_base_api_url;

	public ResponseLoginTokenVO requestKakaoAccessToken(Map<String, String> map) {
		// TODO Auto-generated method stub
		
		URI uri = UriComponentsBuilder
				.fromUriString(kakao_base_auth_url) // 기본 주소
				.path("/oauth/token") // 상세 주소(path() 메서드 여러개 호출하여 분리도 가능)
				.encode()
				.build() // UriComponents 객체 생성
				.toUri();
	
		LinkedMultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		
		parameters.add("grant_type", "authorization_code");
		parameters.add("client_id", kakao_client_id);
		parameters.add("redirect_uri", kakao_redirect_uri);
		parameters.add("code", map.get("code"));
		
		// HttpEntity 객체를 활용하여 요청에 사용될 파라미터를 관리하는 객체를 요청 형식에 맞게 변환
		// => 헤더 정보와 바디 정보를 함께 관리해 주는 객체
		// => 제네릭타입은 파라미터를 관리하는 객체 타입으로 지정하고
		//    생성자 파라미터로 파라미터 관리 객체 전달
		// => 바디 정보만 설정하고 헤더 정보는 기본 헤더 사용하므로 헤더 생략 
		HttpEntity<LinkedMultiValueMap<String, String>> httpEntity = 
				new HttpEntity<LinkedMultiValueMap<String,String>>(parameters);
		
		// REST API 요청을 위해 RestTemplate 객체 활용
		// 1) RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		// 2) RestTemplate 객체의 exchange() 메서드 호출하여 POST 방식 요청 수행 가능
		//    파라미터 : 요청 URL 을 관리하는 URI 객체, 요청 메서드(HttpMethod.XXX)
		//               요청 정보를 관리하는 HttpEntity 객체
		//               요청에 대한 응답 전달 시 JSON 타입의 응답 데이터를 자동으로 파싱할 클래스
		//    => 이 메서드 호출 시점에 실제 HTTP 요청 발생함
		//    리턴타입 : 응답 정보를 관리할 ResponseEntity<T> 타입이며, 
		//               이 때 제네릭타입은 XXX.class 로 지정한 클래스 타입 지정
		//               (주의! JSON 타입 응답 데이터 자동 파싱을 위해 Gson, Jackson 등 라이브러리 필요)
		//               (자동 파싱 불가능할 경우 org.springframework.web.client.UnknownContentTypeException: Could not extract response: no suitable HttpMessageConverter found for response type [class com.itwillbs.mvc_board.vo.ResponseTokenVO] and content type [application/json;charset=UTF-8] 예외 발생)
		ResponseEntity<ResponseLoginTokenVO> responseEntity 
				= restTemplate.exchange(uri, HttpMethod.POST, httpEntity, ResponseLoginTokenVO.class);
		return responseEntity.getBody();
	}
	

	public Map<String, Object> requestKaKaoMemberInfo(ResponseLoginTokenVO responseToken) {
		// TODO Auto-generated method stub
		
		HttpHeaders headers = new HttpHeaders();
		// 헤더명 : "Authorization", 헤더값 : "Bearer" 문자열 뒤에 엑세스토큰 결합(공백으로 구분)
		headers.add("Authorization", "Bearer " + responseToken.getAccess_token());
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		// 2. 헤더 정보를 갖는 HttpEntity 객체 생성(제네릭타입은 String 지정)
		//    => 파라미터 : 헤더 정보가 저장되어 있는 HttpHeaders 객체
		//    => GET 방식 요청에서는 파라미터만 존재할 경우 body 생략이 가능함
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		
		// 3. 요청에 필요한 URI 정보 생성
		//    => GET 방식 요청에 사용할 파라미터는 UriComponentsBuilder 의 queryParam() 메서드 활용
		URI uri = UriComponentsBuilder
					.fromUriString(kakao_base_api_url + "/v2/user/me") // 기본 주소 + 상세주소
					.encode() // 파라미터에 대한 인코딩 처리
					.build() // UriComponents 객체 생성
					.toUri(); // URI 타입 객체로 변환
		
		// 4. RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		
		// 5. RestTemplate 객체의 exchange() 메서드 호출하여 HTTP 요청 수행(GET 방식)
		// => 파라미터 : URI 객체, 요청방식, HttpEntity 객체, 응답데이터 관리 클래스(ResponseUserInfoVO)
		// => 리턴타입 : ResponseEntity<ResponseUserInfoVO>
//		ResponseEntity<ResponseUserInfoVO> responseEntity
//				= restTemplate.exchange(uri, HttpMethod.GET, httpEntity, ResponseUserInfoVO.class);
		
		// 만약, 응답데이터를 Map 타입으로 처리할 경우
		// => 응답 처리 클래스 타입을 ParameterizedTypeReference 클래스의 익명 객체 생성 형태로
		//    제네릭타입을 Map<String, Object> 타입 지정
		ResponseEntity<Map<String, Object>> responseEntity
				= restTemplate.exchange(uri, HttpMethod.GET, httpEntity, new ParameterizedTypeReference<Map<String, Object>>() {});
					
		
		return responseEntity.getBody();
	}

	public ResponseLoginTokenVO requestNaverAccessToken(Map<String, String> map) {
		
		URI uri = UriComponentsBuilder
				.fromUriString(naver_base_auth_url) // 기본 주소
				.path("/oauth2.0/token") // 상세 주소(path() 메서드 여러개 호출하여 분리도 가능)
				.encode()
				.build() // UriComponents 객체 생성
				.toUri();
	
		LinkedMultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		
		parameters.add("grant_type", "authorization_code");
		parameters.add("client_id", naver_client_id);
		parameters.add("client_secret", naver_client_secret);
		parameters.add("code", map.get("code"));
		parameters.add("state", map.get("state"));
		
		// HttpEntity 객체를 활용하여 요청에 사용될 파라미터를 관리하는 객체를 요청 형식에 맞게 변환
		// => 헤더 정보와 바디 정보를 함께 관리해 주는 객체
		// => 제네릭타입은 파라미터를 관리하는 객체 타입으로 지정하고
		//    생성자 파라미터로 파라미터 관리 객체 전달
		// => 바디 정보만 설정하고 헤더 정보는 기본 헤더 사용하므로 헤더 생략 
		HttpEntity<LinkedMultiValueMap<String, String>> httpEntity = 
				new HttpEntity<LinkedMultiValueMap<String,String>>(parameters);
		
		// REST API 요청을 위해 RestTemplate 객체 활용
		// 1) RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		// 2) RestTemplate 객체의 exchange() 메서드 호출하여 POST 방식 요청 수행 가능
		//    파라미터 : 요청 URL 을 관리하는 URI 객체, 요청 메서드(HttpMethod.XXX)
		//               요청 정보를 관리하는 HttpEntity 객체
		//               요청에 대한 응답 전달 시 JSON 타입의 응답 데이터를 자동으로 파싱할 클래스
		//    => 이 메서드 호출 시점에 실제 HTTP 요청 발생함
		//    리턴타입 : 응답 정보를 관리할 ResponseEntity<T> 타입이며, 
		//               이 때 제네릭타입은 XXX.class 로 지정한 클래스 타입 지정
		//               (주의! JSON 타입 응답 데이터 자동 파싱을 위해 Gson, Jackson 등 라이브러리 필요)
		//               (자동 파싱 불가능할 경우 org.springframework.web.client.UnknownContentTypeException: Could not extract response: no suitable HttpMessageConverter found for response type [class com.itwillbs.mvc_board.vo.ResponseTokenVO] and content type [application/json;charset=UTF-8] 예외 발생)
		ResponseEntity<ResponseLoginTokenVO> responseEntity 
				= restTemplate.exchange(uri, HttpMethod.POST, httpEntity, ResponseLoginTokenVO.class);
		return responseEntity.getBody();
	}


	public Map<String, Object> requestNaverMemberInfo(ResponseLoginTokenVO responseToken) {
		
		HttpHeaders headers = new HttpHeaders();
		// 헤더명 : "Authorization", 헤더값 : "Bearer" 문자열 뒤에 엑세스토큰 결합(공백으로 구분)
		headers.add("Authorization", "Bearer " + responseToken.getAccess_token());
		
		// 2. 헤더 정보를 갖는 HttpEntity 객체 생성(제네릭타입은 String 지정)
		//    => 파라미터 : 헤더 정보가 저장되어 있는 HttpHeaders 객체
		//    => GET 방식 요청에서는 파라미터만 존재할 경우 body 생략이 가능함
		HttpEntity<String> httpEntity = new HttpEntity<String>(headers);
		
		// 3. 요청에 필요한 URI 정보 생성
		//    => GET 방식 요청에 사용할 파라미터는 UriComponentsBuilder 의 queryParam() 메서드 활용
		URI uri = UriComponentsBuilder
					.fromUriString(naver_base_api_url + "/v1/nid/me") // 기본 주소 + 상세주소
					.encode() // 파라미터에 대한 인코딩 처리
					.build() // UriComponents 객체 생성
					.toUri(); // URI 타입 객체로 변환
		
		// 4. RestTemplate 객체 생성
		RestTemplate restTemplate = new RestTemplate();
		
		// 5. RestTemplate 객체의 exchange() 메서드 호출하여 HTTP 요청 수행(GET 방식)
		// => 파라미터 : URI 객체, 요청방식, HttpEntity 객체, 응답데이터 관리 클래스(ResponseUserInfoVO)
		// => 리턴타입 : ResponseEntity<ResponseUserInfoVO>
//		ResponseEntity<ResponseUserInfoVO> responseEntity
//				= restTemplate.exchange(uri, HttpMethod.GET, httpEntity, ResponseUserInfoVO.class);
		
		// 만약, 응답데이터를 Map 타입으로 처리할 경우
		// => 응답 처리 클래스 타입을 ParameterizedTypeReference 클래스의 익명 객체 생성 형태로
		//    제네릭타입을 Map<String, Object> 타입 지정
		ResponseEntity<Map<String, Object>> responseEntity
				= restTemplate.exchange(uri, HttpMethod.GET, httpEntity, new ParameterizedTypeReference<Map<String, Object>>() {});
					
		
		return responseEntity.getBody();
	}



}
