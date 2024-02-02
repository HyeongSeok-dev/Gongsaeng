package kr.co.gongsaeng.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.gongsaeng.service.MypageService;
import kr.co.gongsaeng.vo.MemberVO;

@Controller
public class MypageController {
	
	@Autowired
	MypageService service;
	
	@GetMapping("mypage/main")
	public String main(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_main";
	}

	@GetMapping("mypage/reservation")
	public String reservation(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_reservation";
	}
	@GetMapping("mypage/reservationDetail")
	public String reservationDetail(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_reservation_detail";
	}
	@GetMapping("mypage/reservationCancel")
	public String reservationCancel(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_reservation_cancel";
	}
	@PostMapping("mypage/reservationCancelPro")
	public String reservationCancelPro(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "";
	}
	@GetMapping("mypage/alert")
	public String alert(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_alert";
	}
	@GetMapping("mypage/messages")
	public String messages(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_messages";
	}
	@GetMapping("mypage/coupon")
	public String coupon(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_coupon";
	}
	@GetMapping("mypage/cash")
	public String cash(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		
		String rNum = RandomStringUtils.randomNumeric(32);
		session.setAttribute("state", rNum);
		
		return "mypage/my_cash";
	}
	@GetMapping("mypage/point")
	public String point(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_point";
	}
	@GetMapping("mypage/bookmark")
	public String bookmark(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_bookmark";
	}
	@GetMapping("mypage/following")
	public String following(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_following";
	}
	@GetMapping("mypage/recent")
	public String recent(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_recent";
	}
	@GetMapping("mypage/reviewWrite")
	public String reviewWrite(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_review_write";
	}
	@GetMapping("mypage/reviewList")
	public String reviewList(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_review_list";
	}
	@GetMapping("mypage/report")
	public String report(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_report";
	}
	@PostMapping("mypage/reportPro")
	public String reportPro(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "";
	}
	@GetMapping("mypage/community")
	public String community(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_community";
	}
	@GetMapping("mypage/communityRecent")
	public String communityRecent(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_communityRecent";
	}
	@GetMapping("mypage/modifyProfile")
	public String modifyProfile(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_modifyProfile";
	}
	@PostMapping("mypage/modifyProfilePro")
	public String modifyProfilePro(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "";
	}
	@GetMapping("mypage/withdraw")
	public String withdraw(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_withdraw";
	}
	@PostMapping("mypage/withdrawPro")
	public String withdrawPro(HttpSession session, Model model, MemberVO member) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");
			
			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "";
	}
}
