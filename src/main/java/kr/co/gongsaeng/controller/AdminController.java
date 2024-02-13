package kr.co.gongsaeng.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;

import kr.co.gongsaeng.service.AdminService;
import kr.co.gongsaeng.vo.AccountVO;
import kr.co.gongsaeng.vo.AdminFilterVO;
import kr.co.gongsaeng.vo.AdminVO;
import kr.co.gongsaeng.vo.BoardVO;
import kr.co.gongsaeng.vo.CashVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.CouponVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
import kr.co.gongsaeng.vo.ReviewVO;
import lombok.Getter;
import retrofit2.http.POST;

@Controller
public class AdminController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private AdminService service;
	
	@GetMapping("admin")
	public String admin(HttpSession session, Model model, Map<String, Object> map) {
		
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/member/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
		// 현재 날짜 정보 불러오기
		Calendar cal = Calendar.getInstance();
		
		AdminVO admin = new AdminVO();
		admin.setMonth(cal.get(Calendar.MONTH) + 1);
		admin.setYear(cal.get(Calendar.YEAR));
		admin.setDate(cal.get(Calendar.DATE));

		int intDay = cal.get(Calendar.DAY_OF_WEEK);
		switch(intDay) {
		case 0: admin.setDayOfWeek("일");
		case 1: admin.setDayOfWeek("월");
		case 2: admin.setDayOfWeek("화");
		case 3: admin.setDayOfWeek("수");
		case 4: admin.setDayOfWeek("목");
		case 5: admin.setDayOfWeek("금");
		case 6: admin.setDayOfWeek("토");
		case 7: admin.setDayOfWeek("일");
		}
//		String dayOfWeek = "";
//		switch(intDay) {
//			case 0: dayOfWeek = "일";
//			case 1: dayOfWeek = "월";
//			case 2: dayOfWeek = "화";
//			case 3: dayOfWeek = "수";
//			case 4: dayOfWeek = "목";
//			case 5: dayOfWeek = "금";
//			case 6: dayOfWeek = "토";
//			case 7: dayOfWeek = "일";
//		}
		
//		String year = Integer.toString(cal.get(Calendar.YEAR));
//		String month = Integer.toString(cal.get(Calendar.MONTH) + 1);
//		String date = Integer.toString(cal.get(Calendar.DATE));
		
		// 현재 결제 금액 / 예약 건수
		String totalPayment = service.getTotalPayment();
		admin.setTotalPayment(totalPayment);
		
		// 현재 예약수
		String countPayment = service.getCountPayment();
		admin.setCountPayment(countPayment);
		
//		// 현재 방문자 수
//		String currentVisitors = service.getCurrentvisit();
//		map.put("", );
//
//		// 누적 방문자 수
//		String cumulativeVisitors = service.getCumulativeVisitors();
//		map.put("", );

		// 현재 신규 가입자 수
		String newMemberCount = service.getNewMemberCount();
		admin.setNewMemberCount(newMemberCount);
		System.out.println(">>>>" + admin.getNewMemberCount());
		// 누적 가입자 수 
		String cumulativeMemberCount = service.getCulmulativeMemberCount();
		admin.setCumulativeMemberCount(cumulativeMemberCount);
		
		// 현재 신규 반장 가입자 수
		String newBanjangCount = service.getNewBanjangCount();
		admin.setNewBanjangCount(newBanjangCount);
		
		// 누적 반장 가입자 수
		String cumulativeBanjangCount = service.getCulmulativeBanjangCount();
		admin.setCumulativeBanjangCount(cumulativeBanjangCount);
		
		// 이번달 예약 건수
		String monthlyPayCount = service.getMonthlyPayCount();
		admin.setMonthlyPayCount(monthlyPayCount);
		
		// 누적 예약 건수
		String cumulativePayCount = service.getCumulativePayCount();
		admin.setCumulativePayCount(cumulativePayCount);
		
		// 이번달 결제 총 금액 
		String monthlyTotalPay = service.getMonthlyTotalPay();
		admin.setMonthlyTotalPay(monthlyTotalPay);
		
		// 누적 결제 총 금액
		String cumulativeTotalPay = service.getCumulativeTotalPay();
		admin.setCumulativeTotalPay(cumulativeTotalPay);
		
		// 이번달 환급금
		String monthlyRefund = service.getMonthlyRefund();
		admin.setMonthlyRefund(monthlyRefund);
		
		// 누적 환급금
		String cumulativeRefund = service.getCumulativeRefund();
		admin.setCumulativeRefund(cumulativeRefund);
		
		// 이번달 환급 수익
		String monthlyRefundFee = service.getMonthlyRefundFee();
		admin.setMonthlyRefundFee(monthlyRefundFee);
		
		// 누적 환급 수익
		String cumulativeRefundFee = service.getCumulativeRefundFee();
		admin.setCumulativeRefundFee(cumulativeRefundFee);
		
		// 사업체 가입 신청
		String newComRegCount = service.getNewComRegCount();
		admin.setNewComRegCount(newComRegCount);
		
		// 사업체 환급 신청
		String newComRefundApp = service.getComRefundApp();
		admin.setNewComRefundApp(newComRefundApp);
		
		// 클래스 신고
		String newClassReport = service.getNewClassReport();
		admin.setNewClassReport(newClassReport);
		
		// 리뷰 신고
		String newReviewReport = service.getNewReviewReport();
		admin.setNewReviewReport(newReviewReport);
		
		// 채팅문의
		String newQnaChat = service.getNewQnaChat();
		admin.setNewQnaChat(newQnaChat);
		
		// 그래프 올해 월별매출 구하기
		AdminVO thisYearPay = service.getThisYearPay();
		// 그래프 올해 월별환급수익 구하기
		AdminVO thisYearRef = service.getThisYearRef();
		// 그래프 올해 월별 신규사업체수 구하기
		AdminVO thisYearCom = service.getThisYearCom();
		// 그래프 올해 월별 신규회원수 구하기
		AdminVO thisYearMem = service.getThisYearMem();
		map.put("thisYearPay",thisYearPay);
		map.put("thisYearRef",thisYearRef);
		map.put("thisYearCom",thisYearCom);
		map.put("thisYearMem",thisYearMem);

		map.put("admin",admin);
		
		return "admin/main";
	}
	
	//=============================================대쉬보드 일단 삭제
//	@GetMapping("admin/dashboard/member")
//	public String dashboardMember(HttpSession session, Model model) {
////		if(session.getAttribute("sId") == null) {
////			model.addAttribute("msg", "로그인이 필요합니다");
////			model.addAttribute("targetURL", "/gongsaeng/member/login");
////			return "forward";
////		} else if(!session.getAttribute("sId").equals("admin")) {
////			model.addAttribute("msg", "잘못된 접근 입니다.");
////			return "fail_back";
////		}
//		
//		return "admin/dashboard/member";
//	}
//	@GetMapping("admin/dashboard/sales")
//	public String dashboardSales(HttpSession session, Model model) {
////		if(session.getAttribute("sId") == null) {
////			model.addAttribute("msg", "로그인이 필요합니다");
////			model.addAttribute("targetURL", "/gongsaeng/member/login");
////			return "forward";
////		} else if(!session.getAttribute("sId").equals("admin")) {
////			model.addAttribute("msg", "잘못된 접근 입니다.");
////			return "fail_back";
////		}
//		
//		return "admin/dashboard/sales";
//	}
//	@GetMapping("admin/dashboard/company")
//	public String dashboardCompany(HttpSession session, Model model) {
////		if(session.getAttribute("sId") == null) {
////			model.addAttribute("msg", "로그인이 필요합니다");
////			model.addAttribute("targetURL", "/gongsaeng/member/login");
////			return "forward";
////		} else if(!session.getAttribute("sId").equals("admin")) {
////			model.addAttribute("msg", "잘못된 접근 입니다.");
////			return "fail_back";
////		}
//		
//		return "admin/dashboard/company";
//	}
	
	//========================================[ 회원 관리 ]
	// 회원 목록
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
	public String memberTableChange(HttpSession session, Model model , AdminFilterVO map) {
		
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/member/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		log.info("map : >>" + map);
//		// [필터 회원목록 조회]
//		if(map.get("member_status0") == null && map.get("member_category0") == null) {
//			System.out.println("모두 전체선택 해제");
//			String checkStatus = "notAll";
//			List<MemberVO> memberList = service.getFilterMemberList(checkStatus, map);
//			JSONObject jsonObject = new JSONObject(memberList);
//			return jsonObject.toString();
//		} else if(map.get("member_status0") == null && map.get("member_category0").equals("0")) {
//			System.out.println("회원상태 전체선택 해제, 회원분류 전체선택");
//			String checkStatus = "categoryAll";
//			List<MemberVO> memberList = service.getFilterMemberList(checkStatus, map);
//			JSONObject jsonObject = new JSONObject(memberList);
//			return jsonObject.toString();
//		} else if(map.get("member_category0") == null && map.get("member_status0").equals("0")) {
//			System.out.println("회원분류 전체선택 해제, 회원상태 전체선택");
//			String checkStatus = "statusAll";
//			List<MemberVO> memberList = service.getFilterMemberList(checkStatus, map);
//			JSONObject jsonObject = new JSONObject(memberList);
//			return jsonObject.toString();
//		} else {
//			return"";
//		}
		
		if(map.getMember_status0() == null && map.getMember_category0().equals("0")) {
			System.out.println("회원상태 전체선택 해제, 회원분류 전체선택");
			String checkStatus = "categoryAll";
			List<MemberVO> memberList = service.getFilterMemberList(checkStatus, map);
			JSONObject jsonObject = new JSONObject(memberList);
			return jsonObject.toString();
		} else if(map.getMember_category0() == null && map.getMember_status0().equals("0")) {
			System.out.println("회원분류 전체선택 해제, 회원상태 전체선택");
			String checkStatus = "statusAll";
			List<MemberVO> memberList = service.getFilterMemberList(checkStatus, map);
			JSONObject jsonObject = new JSONObject(memberList);
			return jsonObject.toString();
		} else {
			System.out.println("모두 전체선택 해제");
			String checkStatus = "notAll";
			List<MemberVO> memberList = service.getFilterMemberList(checkStatus, map);
			JSONObject jsonObject = new JSONObject(memberList);
			return jsonObject.toString();
		}
		
//		List<MemberVO> memberFilterList = service.getMemberFilterList(member, company);
//		log.info("목록조회 memberList : " + memberFilterList);
//	
		
//		List<MemberVO> memberList = service.getMemberList();
//		log.info("목록조회(신고수 join) memberList : " + memberList);
		
//		JSONObject jsonObject = new JSONObject(member);
//		return jsonObject.toString();
		
		
	}
	
	@ResponseBody
	@GetMapping("memberSearch")
	public String memberSearch(HttpSession session, @RequestParam Map<String, Object> map) {
		
//		// [필터 회원목록 조회]
		if(map.get("member_status0") == null && map.get("member_category0") == null) {
			System.out.println("모두 전체선택 해제");
			
		} else if(map.get("member_status0") == null && map.get("member_category0").equals("0")) {
//			System.out.println("회원상태 전체선택 해제");
			
			  System.out.println("회원상태 전체선택 해제, 회원분류 전체선택");
		   
		} else if(map.get("member_category0") == null && map.get("member_status0").equals("0")) {
//			System.out.println("카테고리 전체선택 해제");
			
				System.out.println("회원분류 전체선택 해제, 회원상태 전체선택");
		}
//		JSONObject jsonObject = new JSONObject(member);
//		return jsonObject.toString();
		return "";
	}
	
	
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
		
		// 2. 알림수신상태 정보
		if(member.getMember_alert_status().charAt(0) == '1') {
			member.setAlert_1("일반 동의");
		} else {
			member.setAlert_1("일반 미동의");
		}
		
		if(member.getMember_alert_status().charAt(1) == '1') {
			member.setAlert_2("공지사항 동의");
		} else {
			member.setAlert_2("공지사항 미동의");
		}
		
		if(member.getMember_alert_status().charAt(2) == '1') {
			member.setAlert_3("광고 동의");
		} else {
			member.setAlert_3("광고 미동의");
		}
		
		if(member.getMember_alert_status().charAt(3) == '1') {
			member.setAlert_4("이메일 동의");
		} else {
			member.setAlert_4("이메일 미동의");
		}
		
		// [ 계좌 조회 ]
		AccountVO account = service.getAccount(member_id);
		
		// AdminInfo 객체에 저장할 정보
		// [ 예약수(결제수) 조회 ]
		PaymentVO payCount = service.getPayCount(member_id);
		System.out.println("payCount >>>" + payCount);
		// [ 리뷰수 조회 ]
		ReviewVO reviewCount = service.getReviewCount(member_id);
		
		
		// [ 사업체 조회 ]
		CompanyVO company = service.getCompany(member_id);
		if(company != null) {
			model.addAttribute("company", company);
		}
		// [ 등록 클래스 조회 ]
		ClassVO classCount = service.getClassCount(member_id);
		if(classCount != null) {
			model.addAttribute("classCount", classCount);
		}
		
		
		System.out.println("reviewCount >>>" + reviewCount);
		System.out.println("classCount >>>" + classCount);
		System.out.println("company >>>" + company);
		model.addAttribute("member", member);
		model.addAttribute("account", account);
		model.addAttribute("payCount", payCount);
		model.addAttribute("reviewCount", reviewCount);
		return "admin/member/member_detail";
	}
	
	// 반장신청 승인
	@ResponseBody
	@GetMapping("admin/member/companyApproval")
	public String companyApproval(HttpSession session, Model model,
									@RequestParam(defaultValue = "") String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		int updateCount = service.companyApproval(member_id);
		
		if(updateCount > 0) {
			return "true";
		}
		return "false";
	}

	// 반장신청 거부
	@ResponseBody
	@GetMapping("admin/member/companyRejection")
	public String companyRejection(HttpSession session, Model model,
									@RequestParam(defaultValue = "") String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}

		int updateCount = service.companyRejection(member_id);

		if(updateCount > 0) {
			return "true";
		}
		return "false";
	}
	
	// 회원정보 수정
	@PostMapping("admin/member/modifyPro") 
	public String memberDetailModifyPro(HttpSession session, Model model, MemberVO member) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		// 이메일 합치기
		log.info("member>>" + member);
		member.setMember_email(member.getMember_email1() + "@" + member.getMember_email2());
		
		// [회원 이미지 업로드]
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		String subDir = "";
		LocalDate now = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		subDir = now.format(dtf);
		saveDir += File.separator + subDir;
		
		try {
			Path path = Paths.get(saveDir); // 파라미터로 업로드 경로 전달
			Files.createDirectories(path); // 파라미터로 Path 객체 전달
		} catch (IOException e) {
			e.printStackTrace();
		}
		MultipartFile mFile = member.getM_file();
		System.out.println("원본파일명1 : " + mFile.getOriginalFilename());
		
		member.setMember_img("");
		
		String imgName = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile.getOriginalFilename();
		
		if(!mFile.getOriginalFilename().equals("")) {
			member.setMember_img(subDir + "/" + imgName);
		}
		System.out.println("실제 업로드 파일명 : " + member.getMember_img());
//		
		int updateMember = service.modifyMember(member);
		
		if(updateMember > 0) {
			try {
				if(!mFile.getOriginalFilename().equals("")) {
					mFile.transferTo(new File(saveDir, imgName));
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			log.info("회원수정 성공");
			return "redirect:detail?member_id=" + member.getMember_id();
		} else {
			log.info("회원수정 실패");
			model.addAttribute("msg", "회원수정에 실패하셨습니다");
			return "fail_back";
		}
		
		
	}
	
	// 회원상세페이지의 특정회원 예약내역
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
		// 회원아이디
		String class_idx ="";
		List<PaymentVO> classPayList = service.getClassPayList(member_id, class_idx);
		
//		CompanyVO com = null;
//		ClassVO gclass = null;
//		
//		for(PaymentVO classPay : classPayList ) {
//			
//			classPay.getClass_idx();
//		}
		
		
		model.addAttribute("classPayList", classPayList);
		model.addAttribute("member_id", member_id);
				
		return "admin/member/reservation_class";
	}
	
	// 회원상세의 특정회원 남긴리뷰내역
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
		String class_idx = "";
		List<ReviewVO> memberReviewList = service.getMemberReviewList(member_id,class_idx);
		
		model.addAttribute("memberReviewList",memberReviewList);
		model.addAttribute("member_id",member_id);
		return "admin/member/review";
	}
	
	// 회원상세 사업체 등록 클래스 목록
		@GetMapping("admin/member/class")
		public String memberComClassForm(HttpSession session, Model model,@RequestParam String member_id ) {
//			if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
			
			List<ClassVO> classList = service.getClassList(member_id);
			
			
			log.info("classList?>>>" + classList);
			model.addAttribute("classList", classList);
			return "admin/company/class";
		}
	//=================================================[ 사업체 관리 ]
	//사업체 목록
	@GetMapping("admin/company")
	public String companyForm(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		List<CompanyVO> comList = service.getCompanyList();
		
		model.addAttribute("comList",comList);
		return "admin/company/company";
	}

	// 사업체 환급금 목록
	@GetMapping("admin/company/refund")
	public String companyRefundForm(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		// 환급금 상태
		String com_idx = "";
		List<PaymentVO> refundList = service.getRefundList(com_idx);
		
		log.info("><refundList>" + refundList);
		
		model.addAttribute("refundList", refundList);
		return "admin/company/company_refund";
	}
	
	// 사업체 상세 페이지
	@GetMapping("admin/company/detail")
	public String companyDetail(HttpSession session, Model model, @RequestParam String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		// 사업체 정보
		CompanyVO com = service.getCompany(member_id);
		
//		 사업체 환급금 조회
		PaymentVO refund = service.getRegRefund(com.getCom_idx()); 
		
		// 등록 클래스수 조회
		ClassVO regClass = service.getRegClassCount(com.getMember_id());
		
		// 클래스 예약 내역 조회
		PaymentVO regPay = service.getRegPay(com.getCom_idx());

		// 피신고건수
		ReportVO reportCount = service.getReportCount(member_id);		
		
//		// 등록 클래스별 신고수/리뷰수
//		int reviewStar = 0; //평균 별점
//		int reviewMontlyLike = 0; //금월 추천수 
//		int reviewLike = 0; //누적 추천수

		model.addAttribute("com",com);
		model.addAttribute("refund",refund);
		model.addAttribute("regClass",regClass);
		model.addAttribute("regPay",regPay);
		model.addAttribute("reportCount",reportCount);
		return "admin/company/company_detail";
	}
	
	// 사업체 정보 수정
	@PostMapping("admin/company/modifyPro")
	public String companyDetailModifyPro(HttpSession session, Model model, CompanyVO company) {
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/login");
//			return "forward";
//		} else if(!session.getAttribute("sId").equals("admin")) {
//			model.addAttribute("msg", "잘못된 접근 입니다.");
//			return "fail_back";
//		}
		
		// [회원 이미지 업로드]
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		String subDir = "";
		LocalDate now = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		subDir = now.format(dtf);
		saveDir += File.separator + subDir;
		
		try {
			Path path = Paths.get(saveDir); // 파라미터로 업로드 경로 전달
			Files.createDirectories(path); // 파라미터로 Path 객체 전달
		} catch (IOException e) {
			e.printStackTrace();
		}
		MultipartFile mFile = company.getFile1();
		System.out.println("원본파일명1 : " + mFile.getOriginalFilename());
		
		company.setCom_img("");
		
		String imgName = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile.getOriginalFilename();
		
		if(!mFile.getOriginalFilename().equals("")) {
			company.setCom_img(subDir + "/" + imgName);
		}
		
		int updateCount = service.modifyCompanyInfo(company);
		
		if(updateCount > 0) {
			try {
				if(!mFile.getOriginalFilename().equals("")) {
					mFile.transferTo(new File(saveDir, imgName));
				}
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			return "redirect:detail?member_id=" + company.getMember_id();
		} else {
			model.addAttribute("msg", "정보 수정 실패");
			return "fail_back";
		}
		
	}
	
	// 사업체상세(특정 사업체) 환급목록
	@GetMapping("admin/company/refund/member")
	public String companyMemberRefundForm(HttpSession session, Model model, @RequestParam String com_idx) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		// 환급금 상태
		List<PaymentVO> refundList = service.getRefundList(com_idx);
		
		log.info("><refundList>" + refundList);
		
		model.addAttribute("refundList", refundList);
		return "admin/company/company_refund";
	}
	
	@GetMapping("admin/company/reservation")
	public String companyReservation(HttpSession session, Model model , @RequestParam String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}		
		
		List<PaymentVO> resList = service.getComResList(member_id);
		
		model.addAttribute("resList" , resList);
		return "admin/company/reservation_class";
	}
	
	// 사업체 등록 클래스 목록
	@GetMapping("admin/company/class")
	public String companyClassForm(HttpSession session, Model model ) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		String member_id = "";
		List<ClassVO> classList = service.getClassList(member_id);
		
		
		log.info("classList?>>>" + classList);
		model.addAttribute("classList", classList);
		return "admin/company/class";
	}
	
	@GetMapping("admin/company/report/class")
	public String companyReportClassForm(HttpSession session, Model model, String member_id) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		String class_idx="";
		List<ReportVO> reportList = service.getReportClassList(member_id,class_idx);
		
		model.addAttribute("reportList", reportList);
		log.info("reportList>>>>" + reportList);
		return "admin/report/report_class";
	}
	
	// 사업체 클래스 상세
	@GetMapping("admin/company/class/detail")
	public String companyClassDetail(HttpSession session, Model model,@RequestParam String class_idx) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}		
		ClassVO comClass = service.getComClass(class_idx);
		ReviewVO reviewCount = service.getClassReviewCount(class_idx); 
		PaymentVO resCount = service.getClassResCount(class_idx); 
		String reportCount = service.getClassReportCount(class_idx); 
		
		String day = "";
		if(comClass.getClass_day().charAt(0) == '1') {
			day += "월";
		}
		if(comClass.getClass_day().charAt(1) == '1') {
			day += "화";
		}
		if(comClass.getClass_day().charAt(2) == '1') {
			day += "수";
		}
		if(comClass.getClass_day().charAt(3) == '1') {
			day += "목";
		}
		if(comClass.getClass_day().charAt(4) == '1') {
			day += "금";
		}
		if(comClass.getClass_day().charAt(5) == '1') {
			day += "토";
		}
		if(comClass.getClass_day().charAt(6) == '1') {
			day += "일";
		}
		
		if(comClass.getClass_offering() == null || comClass.getClass_offering() == "" || comClass.getClass_offering().trim().equals("0")) {
			System.out.println("if >>여기");
			comClass.setClass_offering("");
		} else {
			System.out.println("else >>여기");
			String offering = "";
			if(comClass.getClass_offering().charAt(0) == '1') {
				offering += "공방보유";
			}
			if(comClass.getClass_offering().charAt(1) == '1') {
				offering += "주차공간";
			}
			if(comClass.getClass_offering().charAt(2) == '1') {
				offering += "와이파이";
			}
			if(comClass.getClass_offering().charAt(3) == '1') {
				offering += "커피별도구매";
			}
			if(comClass.getClass_offering().charAt(4) == '1') {
				offering += "대중교통 용이";
			}
			if(comClass.getClass_offering().charAt(5) == '1') {
				offering += "택시,자가용 추천";
			}
			if(comClass.getClass_offering().charAt(6) == '1') {
				offering += "음료,간식 제공";
			}
			
			comClass.setClass_offering(offering);
		}

		comClass.setClass_day(day);
		System.out.println("day : " + day);
		model.addAttribute("comClass", comClass);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("resCount", resCount);
		model.addAttribute("reportCount", reportCount);
		return "admin/company/class_detail";
	}
	
	@GetMapping("admin/class/reservation")
	public String classDetailMember(HttpSession session, Model model, @RequestParam("class_idx") String class_idx) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		// 회원아이디
		String member_id ="";
		List<PaymentVO> classPayList = service.getClassPayList(member_id, class_idx);
		
		
		model.addAttribute("classPayList", classPayList);
		return "admin/member/reservation_class";
	}
	
	@GetMapping("admin/class/review")
	public String classDetailReview(HttpSession session, Model model, @RequestParam String class_idx) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		String member_id = "";
		List<ReviewVO> memberReviewList = service.getMemberReviewList(member_id, class_idx);
		
		model.addAttribute("memberReviewList",memberReviewList);
		model.addAttribute("member_id",member_id);
		return "admin/member/review";
	}
	
	@GetMapping("admin/class/report")
	public String classReportForm(HttpSession session, Model model,@RequestParam String class_idx) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		String member_id = "";
		List<ReportVO> reportList = service.getReportClassList(member_id, class_idx);
		
		model.addAttribute("reportList", reportList);
		log.info("reportList>>>>" + reportList);
		return "admin/report/report_class";
	}
	
	@PostMapping("admin/class/modifyPro")
	public String classModifyPro(HttpSession session, Model model, ClassVO gclass) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		

		// [사업체 이미지 업로드]
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		String subDir = "";
		LocalDate now = LocalDate.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		subDir = now.format(dtf);
		saveDir += File.separator + subDir;
		
		try {
			Path path = Paths.get(saveDir); // 파라미터로 업로드 경로 전달
			Files.createDirectories(path); // 파라미터로 Path 객체 전달
		} catch (IOException e) {
			e.printStackTrace();
		}
		MultipartFile file1 = gclass.getFile1(); //커리큘럼사진
		MultipartFile file2 = gclass.getFile2();
		MultipartFile file3 = gclass.getFile3();
		MultipartFile file4 = gclass.getFile4(); //클래스 대표사진
		MultipartFile file5 = gclass.getFile5();
		MultipartFile file6 = gclass.getFile6();
		
		gclass.setClass_pic1("");
		gclass.setClass_pic2("");
		gclass.setClass_pic3("");
		gclass.setClass_curriculum1("");
		gclass.setClass_curriculum2("");
		gclass.setClass_curriculum3("");
		
		String imgName1 = UUID.randomUUID().toString().substring(0, 8) + "_" + file1.getOriginalFilename();
		String imgName2 = UUID.randomUUID().toString().substring(0, 8) + "_" + file2.getOriginalFilename();
		String imgName3 = UUID.randomUUID().toString().substring(0, 8) + "_" + file3.getOriginalFilename();
		String imgName4 = UUID.randomUUID().toString().substring(0, 8) + "_" + file4.getOriginalFilename();
		String imgName5 = UUID.randomUUID().toString().substring(0, 8) + "_" + file5.getOriginalFilename();
		String imgName6 = UUID.randomUUID().toString().substring(0, 8) + "_" + file6.getOriginalFilename();
		
		if(!file1.getOriginalFilename().equals("")) {
			gclass.setClass_curriculum1(subDir + "/" + imgName1);
		}
		if(!file2.getOriginalFilename().equals("")) {
			gclass.setClass_curriculum2(subDir + "/" + imgName2);
		}
		if(!file3.getOriginalFilename().equals("")) {
			gclass.setClass_curriculum3(subDir + "/" + imgName3);
		}
		if(!file4.getOriginalFilename().equals("")) {
			gclass.setClass_pic1(subDir + "/" + imgName4);
		}
		if(!file5.getOriginalFilename().equals("")) {
			gclass.setClass_pic2(subDir + "/" + imgName5);
		}
		if(!file6.getOriginalFilename().equals("")) {
			gclass.setClass_pic3(subDir + "/" + imgName6);
		}

		int updateCount = service.modifyClass(gclass);
		
		if(updateCount >0) {
			try {
				if(!file1.getOriginalFilename().equals("")) {
					file1.transferTo(new File(saveDir, imgName1));
				}
				if(!file2.getOriginalFilename().equals("")) {
					file2.transferTo(new File(saveDir, imgName2));
				}
				if(!file3.getOriginalFilename().equals("")) {
					file3.transferTo(new File(saveDir, imgName3));
				}
				if(!file4.getOriginalFilename().equals("")) {
					file4.transferTo(new File(saveDir, imgName4));
				}
				if(!file5.getOriginalFilename().equals("")) {
					file5.transferTo(new File(saveDir, imgName5));
				}
				if(!file6.getOriginalFilename().equals("")) {
					file6.transferTo(new File(saveDir, imgName6));
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "admin/report/report_class";
		} else {
			model.addAttribute("msg", "클래스정보 수정 실패");
			return "fail_back";
		}
		
	}
	
	
	//==========================================[ O페이 ] 
	// 페이와 연동된 회원계좌목록
	@GetMapping("admin/OPay/account")
	public String accountMemberForm(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		List<AccountVO> accountList = service.getAccountList();
		
		model.addAttribute("accountList",accountList);
		return "admin/OPay/account_member";
	}
	
	// 회원계좌 상세페이지
	@GetMapping("admin/OPay/account/detail")
	public String accountMemberDetail(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		return "admin/OPay/account_member_detail";
	}
	
	// 페이 충전/송금 목록
	@GetMapping("admin/OPay/deposit/withdraw")
	public String OPayDepositWithdrawForm(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		
		List<CashVO> cashList = service.getCashList();
		model.addAttribute("cashList", cashList);
		return "admin/OPay/OPay_deposit_withdraw";
	}
	
	@GetMapping("admin/OPay/deposit/withdraw/detail")
	public String OPayDepositWithdrawDetail(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		return "admin/OPay/OPay_deposit_withdraw_detail";
	}
	
	// 페이 사용/환불 목록
	@GetMapping("admin/OPay/use")
	public String OPayUse(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}

		List<CashVO> cashList = service.getCashList();
		model.addAttribute("cashList", cashList);
		return "admin/OPay/OPay_use";
	}
	@GetMapping("admin/OPay/detail")
	public String OPayDetail(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		return "admin/OPay/OPay_detail";
	}
	
	//==============================================[ 신고관리 ]
	// 클래스신고 목록
	@GetMapping("admin/report/class")
	public String reportClass(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		String member_id = "";
		String class_idx = "";
		List<ReportVO> reportList = service.getReportClassList(member_id,class_idx);
		
		model.addAttribute("reportList", reportList);
		log.info("reportList>>>>" + reportList);
		return "admin/report/report_class";
	}
	
	// 리뷰신고 목록
	@GetMapping("admin/report/review")
	public String reportReview(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		List<ReportVO> reportList = service.getReportReviewList();
		
		model.addAttribute("reportList", reportList);
		return "admin/report/report_review";
	}
	
	// 신고 상세
	@GetMapping("admin/report/detail")
	public String reportClassDetail(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		return "admin/report/report_detail";
	}

	//===============================================[ 마케팅 센터 ]
	// 이벤트 목록
//	@GetMapping("admin/marketing/event")
//	public String eventForm(HttpSession session, Model model) {
////		if(session.getAttribute("sId") == null) {
////		model.addAttribute("msg", "로그인이 필요합니다");
////		model.addAttribute("targetURL", "/gongsaeng/login");
////		return "forward";
////	} else if(!session.getAttribute("sId").equals("admin")) {
////		model.addAttribute("msg", "잘못된 접근 입니다.");
////		return "fail_back";
////	}
//		List<BoardVO> eventList = service.getEventList();
//		
//		model.addAttribute("eventList", eventList);
//		return "admin/marketing/event";
//	}
//	@GetMapping("admin/marketing/event/detail")
//	public String eventDetailForm() {
//		return "admin/marketing/event_detail";
//	}
	
	//쿠폰 목록
	@GetMapping("admin/marketing/coupon")
	public String couponForm(HttpSession session, Model model) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		List<CouponVO> couponList = service.getCouponList();
		
		model.addAttribute("couponList",couponList);
		return "admin/marketing/coupon";
	}
	
	@PostMapping("admin/marketing/couponPro")
	public String couponFormPro(HttpSession session, Model model, @RequestParam Map<String, Object> map) {
//		if(session.getAttribute("sId") == null) {
//		model.addAttribute("msg", "로그인이 필요합니다");
//		model.addAttribute("targetURL", "/gongsaeng/login");
//		return "forward";
//	} else if(!session.getAttribute("sId").equals("admin")) {
//		model.addAttribute("msg", "잘못된 접근 입니다.");
//		return "fail_back";
//	}
		List<String> memberIdList = new ArrayList<String>();;
		System.out.println(map);
		
		if(map.get("member_id").equals("")) {
			memberIdList = service.getMemberIdList();
			map.put("member_id", memberIdList);
		}else {
			memberIdList.add(map.get("member_id").toString());
			map.put("member_id", memberIdList);
		}
		
		if(map.get("value_category").equals("%")) {
			map.replace("coupon_value", Double.parseDouble((String) map.get("coupon_value"))/100);
		}
		System.out.println(map);
		
		int insertCount = service.registCouponToAdmin(map);
		
		if(insertCount > 0) {
			model.addAttribute("msg", "쿠폰이 발급되었습니다.");
			service.registCouponAlert(map);
			model.addAttribute("targetURL", "coupon");
			return "forward";
		} else {
			model.addAttribute("msg", "오류발생 쿠폰발행을 다시 진행하세요");
			return "fail_back";
		}
		
	}
	
	//==========================================[ 공지사항 ]
	@GetMapping("admin/cs/chat")
	public String csChat() {
		return "admin/cs/chat";
	}
	
	//---------------------------[ sample ]
	@GetMapping("admin/icons")
	public String icons() {
		return "admin/backup/icons";
	}
			
}
