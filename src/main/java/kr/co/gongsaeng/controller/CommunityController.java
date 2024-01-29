package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommunityController {
	
	@GetMapping("community/write")
	public String write() {
		return "community/cm_write";
	}
	
	@GetMapping("community/together")
	public String together() {
		return "community/cm_together";
	}
	
	@GetMapping("community/togetherDetail")
	public String togetherDetail() {
		return "community/cm_togetherDetail";
	}

	@GetMapping("community/question")
	public String question() {
		return "community/cm_question";
	}
	
	@GetMapping("community/questionDetail")
	public String questionDetail() {
		return "community/cm_questionDetail";
	}
	
	@GetMapping("community/myHome")
	public String myHome() {
		return "community/cm_myHome";
	}
	
	@GetMapping("community/myHomeDetail")
	public String myHomeDetail() {
		return "community/cm_myHomeDetail";
	}
	
	@GetMapping("community/modify")
	public String modify() {
		return "community/cm_modify";
	}
	
	@GetMapping("community/delete")
	public String delete() {
		return "community/cm_delete";
	}
	

}

