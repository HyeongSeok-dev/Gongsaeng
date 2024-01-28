package kr.co.gongsaeng.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import kr.co.gongsaeng.service.BankService;
import kr.co.gongsaeng.vo.ResponseTokenVO;

@Controller
public class paymentController {
	
	@Autowired
	private BankService bankService;
	
	//로그출력을 위한 기본 라이브러리
	private static final Logger logger = LoggerFactory.getLogger(paymentController.class);
	
	//결제하기
	@GetMapping("payment")
	public String payment(HttpSession sesison, Model model) {
		//랜던값 활용 난수 생성
		String rNum = RandomStringUtils.randomNumeric(32);
		sesison.setAttribute("state", rNum);
		
		return "payment/payment";
	}
	
	//약관동의
	@GetMapping("payment/agree")
	public String paymentAgree() {
		return "payment/payment_agree";
	}
	
	//페이충전
	@GetMapping("payment/charge")
	public String charge() {
		return "payment/charge";
	}
	
	//페이충전-계좌선택
	@GetMapping("payment/charge/account")
	public String chargeAccount() {
		return "payment/charge_account";
	}
	
	//callback
	@GetMapping("callback")
	public String callback(@RequestParam Map<String, String> authResponse, HttpSession session, Model model) {
		logger.info("authResponse : " + authResponse.toString());
		
		//=======================================================================
		//응답 데이터중 state값이 요청시 사용된 값인지 판별
		if(session.getAttribute("state") == null || !session.getAttribute("state").equals(authResponse.get("state"))) {
			model.addAttribute("msg", "잘못된 요청입니다.");
			return "fail_back";
		}
		
		//확인완료된 세션 state값 삭제
		session.removeAttribute("state");
		
		//=======================================================================
		//토큰발급 API
		ResponseTokenVO responseToken = bankService.requestAccessToken(authResponse);
		logger.info("엑세스토큰 : " + responseToken);
		
		// ResponseTokenVO 객체가 null 이거나 엑세스토큰 값이 null 일 경우 에러 처리
		// "forward.jsp" 페이지로 포워딩 시 "isClose" 값을 true 로 설정하여 전달
		// => state 값 갱신 위해 "FintechMain" 서블릿 주소 설정
		if(responseToken == null || responseToken.getAccess_token() == null) {
			model.addAttribute("msg", "토큰 발급 실패! 다시 인증하세요!");
			model.addAttribute("isClose", true);
			model.addAttribute("targetURL", "FintechMain");
			return "forward";
		}
		
		// BankApiService - registAccessToken() 메서드 호출하여 토큰 관련 정보 저장 요청
		String id = (String)session.getAttribute("sId");
				
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("token", responseToken);
		bankService.registAccessToken(map);
		
		// 세션 객체에 엑세스 토큰(access_token), 사용자번호(user_seq_no) 저장
		session.setAttribute("access_token", responseToken.getAccess_token());
		session.setAttribute("user_seq_no", responseToken.getUser_seq_no());
		
		// "forward.jsp" 페이지 포워딩을 통해
		// "계좌 인증 완료" 메세지 출력 후 인증 창 닫고 FintechUserInfo 서블릿 요청
		model.addAttribute("msg", "계좌 인증 완료!");
		model.addAttribute("isClose", true);
		model.addAttribute("targetURL", "FintechUserInfo");
		
		return "forward";
	}
	
	
	
	
	
	
}//paymentController


