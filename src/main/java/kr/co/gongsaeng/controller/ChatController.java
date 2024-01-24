package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {
	
	@GetMapping("chat/detail")
	public String detail() {
		return "chat/chat_detail";
	}
	
	@GetMapping("chat/list")
	public String list() {
		return "chat/chat_list";
	}
	
	
}
