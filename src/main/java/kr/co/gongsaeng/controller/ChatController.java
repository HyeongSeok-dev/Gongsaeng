package kr.co.gongsaeng.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.gongsaeng.service.MypageService;
import kr.co.gongsaeng.vo.MemberVO;

@Controller
public class ChatController {
	@Autowired
	MypageService service;
	
	@GetMapping("chat/detail")
	public String detail() {
		return "chat/chat_detail";
	}
	
	@GetMapping("chat/list")
	public String list() {
		return "chat/chat_list";
	}
	
	@GetMapping("chat/chatBot")
	public String chatBot(HttpSession session,MemberVO member, Model model) {
		
		String sId = (String) session.getAttribute("sId");
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "chat/chat_bot";
	}
	
	
}
