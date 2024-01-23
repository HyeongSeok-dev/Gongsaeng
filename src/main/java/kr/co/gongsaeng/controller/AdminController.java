package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("admin/main")
	public String main() {
		return "admin/main";
	}
	@GetMapping("admin/dashboard")
	public String dashboard() {
		return "admin/dashboard";
	}
	@GetMapping("admin/member")
	public String member() {
		return "admin/member";
	}
	@GetMapping("admin/company")
	public String company() {
		return "admin/company";
	}
	@GetMapping("admin/account")
	public String account() {
		return "admin/account";
	}
	@GetMapping("admin/report")
	public String report() {
		return "admin/report";
	}
	@GetMapping("admin/event")
	public String event() {
		return "admin/event";
	}
	@GetMapping("admin/cs")
	public String cs() {
		return "admin/cs";
	}
	
	
			
}
