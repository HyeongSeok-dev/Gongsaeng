package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {
	
	@GetMapping("member/login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("member/loginPro")
	public String loginPro() {
		return "redirect: index";
	}
	
	@GetMapping("member/joinAgree")
	public String joinAgree() {
		return "member/join_agree";
	}
}
