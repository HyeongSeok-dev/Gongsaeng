package kr.co.gongsaeng.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gongsaeng.vo.BoardVO;

@Controller
public class CsController {
	
	@GetMapping("admin/cs/notice")
	public String csNotice(@RequestParam(defaultValue = "1") int pageNum,
			HttpSession session, Model model, BoardVO board) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		// 페이징 처리를 위해 조회 목록 갯수 조절 시 사용될 변수 선언
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		
		// BoardService - getNoticeList() 메서드 호출하여 게시물 목록 조회 요청
		// => 파라미터 : 검색타입, 검색어, 시작행번호, 게시물 목록갯수
		// => 리턴타입 : List<BoardVO>(boardList)
		List<BoardVO> boardList = service.getTogetherList(sId, startRow, listLimit);
		
		return "admin/cs/notice";
	}
	@GetMapping("admin/cs/notice/register")
	public String csNoticeRegisterForm() {
		return "admin/cs/notice_register";
	}
	@GetMapping("admin/cs/notice/detail")
	public String csNoticeDetail() {
		return "admin/cs/notice_detail";
	}
	
	@GetMapping("cs/notice")
	public String notice() {
		return "cs/cs_notice";
	}

	@GetMapping("cs/faq")
	public String faq() {
		return "cs/cs_faq";
	}
	
	@GetMapping("admin/cs/faq")
	public String csFaq(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
//		List<BoardVO> boardList = service.getNotice();
		
		
//		model.addAttribute("boardList",boardList);
		return "admin/cs/faq";
	}
	

	@GetMapping("admin/cs/faq/register")
	public String csFaqRegister() {
		return "admin/cs/faq_register";
	}
	@GetMapping("admin/cs/faq/detail")
	public String csFaqDetail() {
		return "admin/cs/faq_detail";
	}

}
