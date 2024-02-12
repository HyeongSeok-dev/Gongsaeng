	package kr.co.gongsaeng.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import kr.co.gongsaeng.service.CartService;
import kr.co.gongsaeng.service.PaymentService;
import kr.co.gongsaeng.vo.*;

@Controller
public class PaymentController {
	
	@Autowired
	private BankService bankService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private CartService cartService;
	
	//로그출력을 위한 기본 라이브러리
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	//결제하기
	@GetMapping("payment")
	public String payment(@RequestParam("type") String type, @RequestParam("total") int total, HttpSession session, Model model) {
		//============================================================================
		//랜던값 활용 난수 생성
		String rNum = RandomStringUtils.randomNumeric(32);
		session.setAttribute("state", rNum);
		
		System.out.println(rNum);
		System.out.println("state : " + session.getAttribute("state"));
		
		//============================================================================
		//결제하는 클래스내역 조회 
		
		System.out.println("결제하는 아이디 : " + session.getAttribute("sId"));
		String member_id = session.getAttribute("sId").toString();		
		
		//장바구니에 목록이 없을경우 상세페이지에서 넘어온 클래스내역 출력
//		int class_idx = (int) session.getAttribute("class_idx");
		int class_idx = 1; //하드코딩
		System.out.println("바로결제하기에서 넘어오는 class_idx : " + class_idx);
		
		if (type.equals("cart")) {
			//장바구니에서 넘어올때
            model.addAttribute("List", cartService.getCartListSelect(member_id));
        } else if (type.equals("pay")) {
        	//상세페이지에서 넘어올때
            model.addAttribute("List", paymentService.getClassListSelect(class_idx));
        }
				
		//============================================================================
		//쿠폰내역 조회
		List<CouponVO> couponList = paymentService.getCouponListSelect(member_id);
		model.addAttribute("couponList", couponList);
		
		//============================================================================
		//최종결제금액 파라미터로 넘김
		model.addAttribute("total", total);
		
		//account 테이블, cash테이블 조인해서 모든정보 가지고오기
		List<CashVO> allList = paymentService.getAllListSelect(member_id);
		model.addAttribute("allList", allList);
		
		logger.info("allList.toString()  : " + allList.toString());
		
		return "payment/payment";
	}
	
	//약관동의
	@GetMapping("payment/charge/agree")
	public String chargeAgree() {
		return "payment/charge_agree";
	}
	
	//메인화면
	@PostMapping("payment/charge/main")
	public String chargeMain() {
		return "payment/charge_main";
	}
	
	//페이충전-계좌선택
//	@GetMapping("payment/charge/account")
//	public String chargeAccount() {
//		return "payment/charge_account";
//	}
	
	//페이충전-충전완료
	@GetMapping("payment/charge/complete")
	public String chargeComplete() {
		return "payment/charge_complete";
	}
	
	//페이충전-환급완료
	@GetMapping("payment/payback/complete")
	public String paybackComplete() {
		return "payment/payback_complete";
	}
	
	//callback
	@GetMapping("callback")
	public String callback(@RequestParam Map<String, String> authResponse, HttpSession session, Model model) {
		logger.info("authResponse : " + authResponse.toString());
		logger.info("session>>>>>>>>>>>>> : " + session.getAttribute("state"));
		
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
			model.addAttribute("targetURL", "/gongsaeng");
			return "forward";
		}
		
		//==============================================================================
		//데이터베이스에 은행명과 계좌 등록일저장
		Map<String, String> accessTokenMap = new HashMap<String, String>(); 
		//요청에 사용할 엑세스 토큰(세션)을 map객체에 추가
		accessTokenMap.put("access_token", responseToken.getAccess_token());
		accessTokenMap.put("user_seq_no", responseToken.getUser_seq_no());
		
		Map<String, Object> bankDetail = bankService.requestUserInfo(accessTokenMap);
		
		//res_list 배열요소를 저장하기 위해 배열분해
		Map<String, Object> res_list = null;
		for(Map<String, Object> map : (ArrayList<Map<String, Object>>)bankDetail.get("res_list")) {
			res_list = map;
		}
		//==============================================================================
		
		// BankApiService - registAccessToken() 메서드 호출하여 토큰 관련 정보 저장 요청
		String id = (String)session.getAttribute("sId");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("token", responseToken);
		map.put("name", bankDetail.get("user_name")); //사용자이름
		map.put("fintech", res_list.get("fintech_use_num")); //펜테크번호
		map.put("account", res_list.get("account_num_masked")); //계좌번호
		map.put("bank", res_list.get("bank_name")); //은행명
		bankService.registAccessToken(map);
		
		// 세션 객체에 엑세스 토큰(access_token), 사용자번호(user_seq_no) 저장
		session.setAttribute("access_token", responseToken.getAccess_token());
		session.setAttribute("user_seq_no", responseToken.getUser_seq_no());
		
		// "forward.jsp" 페이지 포워딩을 통해
		// "계좌 인증 완료" 메세지 출력 후 인증 창 닫고 서블릿 요청
		model.addAttribute("msg", "계좌 인증 완료!");
		model.addAttribute("isClose", true);
		model.addAttribute("targetURL", "payment/charge/account");
		
		return "forward";
	}
	
	//사용자 정보조회API
	@GetMapping("payment/charge/account")
	public String paymentChargeAccount(HttpSession session, Model model) {
		
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인 필수");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			return "forward";
		}else if(session.getAttribute("access_token") == null) {
			model.addAttribute("msg", "계좌 인증 필수");
			model.addAttribute("targetURL", "/gongsaeng");
			return "forward";
		}
		
		//map객체에 저장된 엑세스 토큰과 사용자 번호 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("user_seq_no", (String)session.getAttribute("user_seq_no"));
		
		Map<String, Object> userInfo = bankService.requestUserInfo(map);
		logger.info(">>>>>> userInfo : " + userInfo);
		
		model.addAttribute("userInfo", userInfo);
		
		return "payment/charge_account";
	}
	
	//잔액조회 API
	@PostMapping("payment/charge/BankAccountDetail")
	public String accountDetail(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		
		//로그인, 계좌인증 필수처리
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인 필수");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			return "forward";
		}else if(session.getAttribute("access_token") == null) {
			model.addAttribute("msg", "계좌 인증 필수");
			model.addAttribute("targetURL", "/gongsaeng");
			return "forward";
		}
		
		//요청에 사용할 엑세스 토큰(세션)을 map객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		//계좌상세정보 조회요청
		Map<String, Object> accountDetail = bankService.requestAccountDetail(map);
		
		logger.info("accountDetail>>>>>>>>>>>>>>>>>>>>>" + accountDetail);
		
		// 조회결과(Map 객체, 이름, 계좌번호) 저장
		model.addAttribute("accountDetail", accountDetail);
		model.addAttribute("user_name", map.get("user_name"));
		model.addAttribute("account_num_masked", map.get("account_num_masked"));
		
		return "payment/charge_main";
	}
	
	//출금이체API
	@PostMapping("payment/charge/BankPayment")
	public String bankPayment(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("sId");
		
		//로그인, 계좌인증 필수처리
		if(id == null) {
			model.addAttribute("msg", "로그인 필수");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			return "forward";
		}else if(session.getAttribute("access_token") == null) {
			model.addAttribute("msg", "계좌 인증 필수");
			model.addAttribute("targetURL", "/gongsaeng");
			return "forward";
		}
		
		//요청에 필요한 엑세스토큰과 세션아이디를 Map객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		map.put("id", id);
		
		//페이 충전에 대한 지불(출금이체)요청
		Map<String, Object> withdrawResult = bankService.requestWithdraw(map);
		logger.info("withdrawResult>>>>>>>>>>>>>>>>>>>>>>>" + withdrawResult);
		
		//요청결과를 model객체에 저장
		model.addAttribute("withdrawResult", withdrawResult);
		
		return "payment/charge_complete";
	}
	
	
	
}//paymentController


