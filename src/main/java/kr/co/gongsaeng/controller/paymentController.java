package kr.co.gongsaeng.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class paymentController {
	
	//결제하기
	@GetMapping("payment")
	public String payment() {
		return "payment/payment";
	}
	
	//약관동의
	@GetMapping("payment/agree")
	public String paymentAgree() {
		return "payment/payment_agree";
	}
	
	//페이충전
	@GetMapping("charge")
	public String charge() {
		return "payment/charge";
	}
	
	//페이충전-계좌선택
	@GetMapping("charge/account")
	public String chargeAccount() {
		return "payment/charge_account";
	}
	
}//paymentController


