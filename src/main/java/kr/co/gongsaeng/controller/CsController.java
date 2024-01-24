package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CsController {
	
	@GetMapping("cs/notice")
	public String notice() {
		return "cs/cs_notice";
	}

	@GetMapping("cs/faq")
	public String faq() {
		return "cs/cs_faq";
	}
	
	@GetMapping("cs/qna")
	public String qna() {
		return "cs/cs_qna";
	}

}
