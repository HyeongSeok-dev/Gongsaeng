package kr.co.gongsaeng.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gongsaeng.service.ReviewService;

@Controller
public class ReviewController {
	
//	@Autowired
//	private ReviewService service;
	
	
	@GetMapping("review/write")
	public String write(HttpSession session, Model model, int class_idx) {
		
		
//		 String sId = "dlwohgks7310";
//		    session.setAttribute("sId", sId);
//		    session.getAttribute(sId);
//		    
//		if (sId == null){
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/login");
//			return "forward";
//		}
		// ---------------------------------------------------------------------
		
	    // user_id를 사용하여 member 테이블에서 user_idx 찾기
//	    Integer userIdx = service.findUserIdx(userId);		
		
		// 작성자 방문횟수 계산
//		int visitCount = service.getReservationCount(userIdx, comId);
		
		// 예약번호 1개당 1개의 리뷰만 작성 가능
//		List<Map<String, String>> res_list = service.getReservationList(userIdx, comId, res_idx);
//		model.addAttribute("res_list",res_list);
//		System.out.println("res_list >>>>>>>>>>>>>>>>>>>>>>>" + res_list);
		
//	    model.addAttribute("comId", comId);
//	    model.addAttribute("comName", comName);
//	    model.addAttribute("visitCount", visitCount);
		
		return "review/review_write";
	}
	
	@GetMapping("review/report")
	public String report() {
		return "review/review_report";
	}
	@GetMapping("review/detail")
	public String detail() {
		return "review/review_detail";
	}
	@GetMapping("review/modify")
	public String modify(
//			ReviewVO review,
						@RequestParam("review_num") int reviewNum,
						@RequestParam("com_id") int comId,
						Model model,
						HttpSession session) {
		
		// 글 삭제와 권한 판별 동일(세션 아이디 없을 경우 처리)
		String sId = (String) session.getAttribute("sId");
		if (sId == null)  {
			model.addAttribute("msg","로그인이 필요합니다!");
			model.addAttribute("targetURL","/zzimkong/login");
			return "forward";
		}
		// ReviewService - getRivews() 메서드 재사용하여 게시물 1개 정보 조회
		// => 별도의 새로운 ReviewVO타입 변수 선언 없이 기존 ReviewVO 타입 변수(review) 재사용
		// ~> 조회수는 필요없는거 같아서 생략(231227)
		
		// 조회된 게시물의 작성자가 세션아이디와 다를 경우 "잘못된 접근입니다" 처리
		// 관리자는 자신의 게시물이 아니더라도 수정가능(세션아이디가 관리자가 아닐 경우 추가!)
		
		// 리뷰 정보 가져오기
//		review = service.getReview(reviewNum);
//		if(review == null || !sId.equals(review.getUser_id()) && !sId.equals("admin")){
//			model.addAttribute("msg","잘못된 접근입니다!");
//			return "fail_back";
//		}
		
		// 업체 이름 가져오기
//	    String comName = service.getCompanyName(comId);
//	    model.addAttribute("comName", comName);
//	    model.addAttribute("review", review);
		
		return "review/review_modify";
	}
	@GetMapping("review/complete")
	public String complete(@RequestParam("com_id") int comId, Model model) {
//		List<ReviewVO> reviews = service.getAllReviews(comId);
	    model.addAttribute("comId", comId);
//	    model.addAttribute("reviews", reviews);
		return "review/review_complete";
	}
	@GetMapping("review/comment")
	public String comment( @RequestParam("com_id") int comId, 
							 @RequestParam("review_num") int reviewNum,
							 Model model, HttpSession session) {
		// review_num과 com_id를 모델에 추가
		model.addAttribute("reviewNum", reviewNum);
		model.addAttribute("com_id", comId);
		
		String userId = (String) session.getAttribute("user_id");
		// 현재 로그인한 사용자의 ID를 세션에서 가져옴
		String sId = (String)session.getAttribute("sId");
		
	    // 세션에 com_id와 user_id를 설정
		session.setAttribute("com_id", comId);
		session.setAttribute("user_id", sId);
		
		// 업체 이름 불러오기
//		String comName = service.getCompanyName(comId);
//		model.addAttribute("comName",comName);
		
//		MemberVO member = service.getUserInfo(sId);
//		model.addAttribute("member",member);
		model.addAttribute("userId",userId);
		
		
		// --------------------------------------------------------------------------
		// [ 댓글 기능 추가 ]
		// 현재 게시물에 포함되어 있는 댓글 목록 조회(댓글은 페이징 처리 생략)
		// BoardService - getTinyReplyBoardList() 메서드 호출하여 댓글 목록 조회 요청
		// => 파라미터 : 글번호   리턴타입 : List<Map<String, Object>>(tinyReplyBoardList)
//		List<Map<String, Object>> tinyReplyReviewList = service.getTinyReplyReviewList(reviewNum);
//				System.out.println(tinyReplyBoardList);
		
		// Model 객체에 댓글 목록 객체(List) 추가
//		model.addAttribute("tinyReplyReviewList", tinyReplyReviewList);
		// --------------------------------------------------------------------------
		
		
		return "review/review_comment";
	}
	
	@GetMapping("product/detail")
	public String productDetail() {
		return "product_detail";
	}
}
