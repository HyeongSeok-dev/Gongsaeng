package kr.co.gongsaeng.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class CommunityController {
	
	@GetMapping("community/together")
	public String together() {
		return "community/cm_together";
	}
	
	@GetMapping("community/question")
	public String question() {
		return "community/cm_question";
	}
	
	@GetMapping("community/myHome")
	public String myHome() {
		return "community/cm_myHome";
	}
	
	@GetMapping("community/modify")
	public String modify() {
		return "community/cm_modify";
	}
	
	@GetMapping("community/delete")
	public String delete() {
		return "community/cm_delete";
	}
	
	@GetMapping("community/reply")
	public String reply() {
		return "community/cm_reply";
	}


}
