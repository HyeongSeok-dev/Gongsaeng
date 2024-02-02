package kr.co.gongsaeng.controller;


import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gongsaeng.service.AdminService;
import kr.co.gongsaeng.vo.AccountVO;
import kr.co.gongsaeng.vo.AdminInfo;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
import lombok.Getter;

@Controller
public class AdminController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private AdminService service;
	
	@GetMapping("admin")
	public String admin(HttpSession session, Model model) {
		
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/member/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
		return "admin/main";
	}
	@GetMapping("admin/dashboard")
	public String dashboard() {
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/member/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
		return "admin/dashboard";
	}
	
	@GetMapping("admin/member")
	public String memberListForm(HttpSession session, Model model) {

//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/member/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
		
		// [회원목록(신고수 join) 조회]
		List<MemberVO> memberList = service.getMemberList();
		log.info("목록조회(신고수 join) memberList : " + memberList);
		
		model.addAttribute("memberList", memberList);
		
		return "admin/member/member";
	}
	
	@ResponseBody
	@GetMapping("admin/memberTableFilter")
	public String memberTableChange(HttpSession session, MemberVO member) {
		
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/member/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		log.info("member : >>" + member);
		log.info("member_status_str >> " + member.getMember_status_str());
//		// [회원목록 조회]
//		List<MemberVO> memberFilterList = service.getMemberFilterList(member);
//		log.info("목록조회 memberList : " + memberFilterList);
	
		// [리뷰 신고수 조회]
//		List<ReportVO> reportCountList = service.getReportCountList();
//		log.info("신고수조회 reportCountList : " + reportCountList);
		
		List<MemberVO> memberList = service.getMemberList();
		log.info("목록조회(신고수 join) memberList : " + memberList);
		
		JSONObject jsonObject = new JSONObject(member);
		return jsonObject.toString();
	}
	
//	@GetMapping("memberSearch")
//	public String memberSearch() {
//		
//	}
	
	
	@GetMapping("admin/member/detail")
	public String memberDetailForm(HttpSession session, Model model, @RequestParam String member_id) {
	
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
		// [회원 상세정보 조회]
		MemberVO member = service.getMember(member_id);
		
		// 1. 이메일 아이디와 주소 나눠서 변수에 저장
		String[] emailStr = member.getMember_email().split("@");
		member.setMember_email1(emailStr[0]);
		member.setMember_email2(emailStr[1]);
		System.out.println("email 1 >>> " + emailStr[0]);
		System.out.println("email 2 >>> " + emailStr[1]);
		
		// [ 계좌 조회 ]
		AccountVO account = service.getAccount(member_id);
		
		// AdminInfo 객체에 저장할 정보
		// [ 예약수(결제수) 조회 ]
		AdminInfo adminInfo = service.getPayCount(member_id);
		// [ 리뷰수 조회 ]
		adminInfo = service.getReviewCount(member_id);
		
		// 반장일때
		if(member.getMember_category() == 2) {
			// [ 사업체 조회 ]
			CompanyVO company = service.getCompany(member_id);
			// [ 등록 클래스 조회 ]
			adminInfo = service.getClassCount(member_id);
		
		model.addAttribute("company", company);
		}
		
		System.out.println("adminInfo >>>" + adminInfo);
		model.addAttribute("member", member);
		model.addAttribute("account", account);
		model.addAttribute("adminInfo", adminInfo);
		return "admin/member/member_detail";
	}

	@GetMapping("admin/member/review")
	public String memberDetailCompany(HttpSession session, Model model, @RequestParam String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		return "admin/member/review";
	}
	
	@GetMapping("admin/member/reservation/class")
	public String memberDetailClass(HttpSession session, Model model, @RequestParam String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		List<PaymentVO> classPayList = service.getClassPayList(member_id);
		
		model.addAttribute("classPayList", classPayList);
				
		return "admin/member/reservation_class";
	}
	//----------------------------------
	@GetMapping("admin/company")
	public String company() {
		return "admin/company/company";
	}
	@GetMapping("admin/company/refund")
	public String companyRefund() {
		return "admin/company/company_refund";
	}
	@GetMapping("admin/company/detail")
	public String companyDetail() {
		return "admin/company/company_detail";
	}
	@GetMapping("admin/company/class")
	public String companyClass() {
		return "admin/company/class";
	}
	@GetMapping("admin/company/class/detail")
	public String companyClassDetail() {
		return "admin/company/class_detail";
	}
	@GetMapping("admin/OPay/account")
	public String accountMember() {
		return "admin/OPay/account_member";
	}
	@GetMapping("admin/OPay/account/detail")
	public String accountMemberDetail() {
		return "admin/OPay/account_member_detail";
	}
	@GetMapping("admin/OPay/deposit/withdraw")
	public String OPayDepositWithdraw() {
		return "admin/OPay/OPay_deposit_withdraw";
	}
	@GetMapping("admin/OPay/deposit/withdraw/detail")
	public String OPayDepositWithdrawDetail() {
		return "admin/OPay/OPay_deposit_withdraw_detail";
	}
	@GetMapping("admin/OPay/use")
	public String OPayUse() {
		return "admin/OPay/OPay_use";
	}
	@GetMapping("admin/OPay/detail")
	public String OPayDetail() {
		return "admin/OPay/OPay_detail";
	}
	@GetMapping("admin/report/class")
	public String reportClass() {
		return "admin/report/report_class";
	}
	@GetMapping("admin/report/review")
	public String reportReview() {
		return "admin/report/report_review";
	}
	@GetMapping("admin/report/detail")
	public String reportClassDetail() {
		return "admin/report/report_detail";
	}
	@GetMapping("admin/marketing/event")
	public String eventForm() {
		
		
		return "admin/marketing/event";
	}
	@GetMapping("admin/marketing/event/detail")
	public String eventDetailForm() {
		return "admin/marketing/event_detail";
	}
	@GetMapping("admin/marketing/coupon")
	public String couponForm() {
		return "admin/marketing/coupon";
	}
	@GetMapping("admin/cs/chat")
	public String csChat() {
		return "admin/cs/chat";
	}
	@GetMapping("admin/cs/faq")
	public String csFaq() {
		return "admin/cs/faq";
	}
	@GetMapping("admin/cs/notice")
	public String csNotice() {
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
	@GetMapping("admin/cs/faq/register")
	public String csFaqRegister() {
		return "admin/cs/faq_register";
	}
	@GetMapping("admin/cs/faq/detail")
	public String csFaqDetail() {
		return "admin/cs/faq_detail";
	}
	
	//---------------------------
	@GetMapping("admin/dashboard2")
	public String dashboard2() {
		return "admin/dashboard2";
	}
	@GetMapping("admin/typography")
	public String typography() {
		return "admin/typography";
	}
	@GetMapping("admin/upgrade")
	public String upgrade() {
		return "admin/upgrade";
	}
	@GetMapping("admin/icons")
	public String icons() {
		return "admin/icons";
	}
	@GetMapping("admin/notifications")
	public String notifications() {
		return "admin/notifications";
	}
	@GetMapping("admin/tables")
	public String tables() {
		return "admin/tables";
	}
	@GetMapping("admin/user2")
	public String user2() {
		return "admin/user2";
	}
//	@GetMapping("admin/map")
//	public String map() {
//		return "admin/map";
//	}
	
	
			
}
