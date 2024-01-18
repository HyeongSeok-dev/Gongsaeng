package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("member/login")
	public String member_login() {
		return "member/login";
	}
}
