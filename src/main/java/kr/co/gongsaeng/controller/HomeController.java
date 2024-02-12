package kr.co.gongsaeng.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gongsaeng.service.CartService;
import kr.co.gongsaeng.service.SearchService;
import kr.co.gongsaeng.vo.CartListVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Controller
public class HomeController {
	@Autowired
	private CartService cartService;
	@Autowired
	private SearchService searchService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home(Locale locale, Model model, HttpSession session) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		/////// 여기까지가 기존 코드

		// 세션 아이디가 없을 경우 : 초기화
		String member_id = "";
		
		// 세션 아이디가 존재할 경우
		if(session.getAttribute("sId") != null) {
			member_id = session.getAttribute("sId").toString();
			
			// 장바구니 갯수
			List<CartListVO> cartList = cartService.getCartListSelect(member_id);
			model.addAttribute("cartList", cartList);
	    }

	    // 메인에 클래스 정보 뿌리기
		// 최신순
	    List<ClassVO> recentClassList = searchService.getRecentClassList(member_id);
	    model.addAttribute("recentClassList", recentClassList);
	    // 인기순
	    List<ClassVO> popularClassList = searchService.getPopularClassList(member_id);
	    model.addAttribute("popularClassList", popularClassList);
	    // 마감임박순
	    List<ClassVO> deadlineSoonClassList = searchService.getDeadlineSoonClassList(member_id);
	    model.addAttribute("deadlineSoonClassList", deadlineSoonClassList);
	    // 최신 리뷰
	    List<ReviewVO> recentReviewList = searchService.getRecentReviewList();
	    model.addAttribute("recentReviewList", recentReviewList);
	    

	    return "main";
	}

	@ResponseBody
	@GetMapping("/insertBookmark")
	public String insertBookmark(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		
		String member_id = session.getAttribute("sId").toString();
		map.put("member_id", member_id);
		
		int insertCount = searchService.insertBookmark(map);
		
		if (insertCount > 0) {
			return "true";
		} else {
			return "false";
		}
		
	}
	
	
	

}
