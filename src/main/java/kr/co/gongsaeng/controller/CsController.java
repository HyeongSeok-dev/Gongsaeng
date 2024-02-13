package kr.co.gongsaeng.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gongsaeng.service.CsService;
import kr.co.gongsaeng.vo.BoardVO;
import kr.co.gongsaeng.vo.PageInfo;

@Controller
public class CsController {
	@Autowired
	private CsService service;
	
	// [ 관리자페이지 공지사항 조회 ]
	@GetMapping("admin/cs/notice")
	public String csNotice(@RequestParam(defaultValue = "1") int pageNum,
			HttpSession session, Model model, BoardVO board) {
		
		String sId = (String) session.getAttribute("sId");
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
		
		// BoardService - getAnList() 메서드 호출하여 게시물 목록 조회 요청
		// => 파라미터 : 검색타입, 검색어, 시작행번호, 게시물 목록갯수
		// => 리턴타입 : List<BoardVO>(AnList)
		List<BoardVO> adntList = service.getAdntList(sId, startRow, listLimit);
		
		// --------------------------------------------------------------------
		// 검색된 예약 내역의 수를 바탕으로 페이지네이션 생성
		// BoardService - getNoticeListCount() 메서드 호출하여 전체 게시물 목록 갯수 조회 요청
		// => 파라미터 : 검색타입, 검색어
		// => 리턴타입 : int(listCount)
		int listCount = service.getAdntListCount(sId);
		int pageListLimit = 5; // 페이지에서 보이는 페이지 번호를 5개로 지정
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 계산된 페이징 처리 관련 값을 PageInfo 객체에 저장
		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		
		// 게시물 목록과 페이징 정보 저장
		model.addAttribute("adntList", adntList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "admin/cs/notice";
	}
	
	// [ 공지사항 글쓰기 ]
	@GetMapping("admin/cs/notice/register")
	public String csNoticeRegisterForm(HttpSession session, Model model) {
		return "admin/cs/notice_register";
	}
	
	@PostMapping("admin/cs/notice/registPro")
	public String csNoticeRegistPro(BoardVO board, @RequestParam(defaultValue = "1") String pageNum,
			HttpSession session, Model model, HttpServletRequest request) {
	
	board.setMember_id("admin1234");
	// BoardService - registAdnt() 메서드 호출하여 게시물 등록 작업 요청
	// => 파라미터 : BoardVO 객체   리턴타입 : int(insertCount)
	int insertCount = service.registAdnt(board);
	System.out.println(board);
	
	// 게시물 등록 작업 요청 결과 판별
	if(insertCount == 0) {
		model.addAttribute("msg", "등록 실패!");
		return "fail_back";
	}
	
	model.addAttribute("msg", "글이 등록되었습니다.");
	model.addAttribute("targetURL", "./?pageNum=" + pageNum);
	return "forward";
}
	
	// [ 공지사항 상세/수정 ]	
	@GetMapping("admin/cs/notice/detail")
	public String csNoticeDetail(BoardVO board, @RequestParam int board_idx, HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		
		// 조회된 게시물의 작성자(member_id)와 세션 아이디가 다를 경우 "잘못된 접근입니다" 처리
		// => 단, 관리자는 자신의 게시물이 아니더라도 수정 가능해야하므로
		//    세션아이디가 관리자가 아닐 경우라는 조건도 추가
//		if(board == null || !sId.equals(board.getMember_id()) && !sId.equals("admin1234")) {
//			model.addAttribute("msg", "잘못된 접근입니다");
//			return "fail_back";
//		}
		
		board = service.getNoticeDetail(board_idx);
		System.out.println(board);
		
		model.addAttribute("board", board);
		
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
