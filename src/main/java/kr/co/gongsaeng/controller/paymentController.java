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
	
}//paymentController


