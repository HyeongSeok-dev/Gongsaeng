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
		return "redirect: ../";
	}
	
	@GetMapping("member/findId")
	public String findId() {
		return "member/find_id";
	}

	@PostMapping("member/findIdPro")
	public String findIdPro() {
		return "";
	}
	
	@GetMapping("member/findPasswd")
	public String findPasswd() {
		return "member/find_passwd";
	}
	
	@PostMapping("member/findPasswdPro")
	public String findPasswdPro() {
		return "";
	}
	
	@GetMapping("member/joinAgree")
	public String joinAgree() {
		return "member/join_agree";
	}
	
	@GetMapping("member/join")
	public String join() {
		return "member/join";
	}
	
	@PostMapping("member/joinPro")
	public String joinPro() {
		return "";
	}
	
	
}
