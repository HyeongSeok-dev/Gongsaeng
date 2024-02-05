function kakaoLogin() {
	// 새 창을 사용하여 사용자 인증 페이지 요청
	let requestUri = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
						+ "response_type=code"
						+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
						+ "&redirect_uri=http://localhost:8081/mvc_board/callback"
						+ "&scope=login inquiry transfer"
						+ "&state=${sessionScope.state}"
						+ "&auth_type=0";
	window.open(requestUri, "authWindow", "width=600, height=800");
}