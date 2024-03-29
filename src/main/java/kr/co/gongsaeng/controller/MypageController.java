package kr.co.gongsaeng.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.gongsaeng.service.MypageService;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.MyResVO;

@Controller
public class MypageController {

	@Autowired
	private MypageService service;

	@GetMapping("mypage/main")
	public String main(HttpSession session, Model model, MemberVO member, HttpServletRequest request)
			throws UnsupportedEncodingException {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);

		Map<String, String> myMainInfo = service.getmyMainInfo(member);
		List<Map<String, Object>> unReadChats = service.getUnreadChatInfo(member);
		List<Map<String, Object>> unReadAlert = service.getUnreadAlertInfo(member);
		List<Map<String, Object>> bookmarkList = service.getBookmarkInfo(member);
		List<Map<String, Object>> followingList = service.getFollowingInfo(member);

		JSONArray recentClasses = null;
		Cookie[] cookies = request.getCookies();
		List<Map<String, Object>> recentList = new ArrayList<>();

		System.out.println(cookies.toString());
		Cookie recentClassesCookie = null;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("recentClasses")) {
					System.out.println(cookie.getName());
					System.out.println(cookie.getValue());
					recentClassesCookie = cookie;
					break; // if문 안으로 이동
				}
			}
		}

		// ----------------------------------------------------------------------------------
//		if (recentClassesCookie != null) {
//			String decodedValue = URLDecoder.decode(recentClassesCookie.getValue(), "UTF-8");
//			recentClasses = new JSONArray(decodedValue);

//			for (int i = 0; i < recentClasses.length(); i++) {
//				JSONObject json = recentClasses.getJSONObject(i);
//				Map<String, Object> map = new HashMap<>();
//				Iterator<String> keys = json.keys();
//				while (keys.hasNext()) {
//					String key = keys.next();
//					map.put(key, json.get(key));
//				}
//				recentList.add(map);
//			}
//
//		}
		// ----------------------------------------------------------------------------------
	    
		if (recentClassesCookie != null) {
	        try {
	            String decodedValue = URLDecoder.decode(recentClassesCookie.getValue(), "UTF-8");
	            // 배열 형태의 문자열인지 확인
	            if (decodedValue.startsWith("[") && decodedValue.endsWith("]")) {
	                recentClasses = new JSONArray(decodedValue);
	                for (int i = 0; i < recentClasses.length(); i++) {
	                    JSONObject json = recentClasses.getJSONObject(i);
	                    Map<String, Object> map = new HashMap<>();
	                    Iterator<String> keys = json.keys();
	                    while (keys.hasNext()) {
	                        String key = keys.next();
	                        map.put(key, json.get(key));
	                    }
	                    recentList.add(map);
	                }
	            } else {
	                // 로그 출력 또는 오류 처리
	                System.err.println("Invalid JSON format in cookie");
	            }
	        } catch (JSONException e) {
	            // 로그 출력 또는 오류 처리
	            System.err.println("Error parsing JSON: " + e.getMessage());
	        }
	    }
	    // ----------------------------------------------------------------------------------	    
		model.addAttribute("myMainInfo", myMainInfo);
		model.addAttribute("unReadChats", unReadChats);
		model.addAttribute("unReadAlert", unReadAlert);
		model.addAttribute("recentList", recentList);
		model.addAttribute("bookmarkList", bookmarkList);
		model.addAttribute("followingList", followingList);

		return "mypage/my_main";
	}

	@GetMapping("mypage/reservation")
	public String reservation(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		List<MyResVO> resList = service.getResList(member);

		model.addAttribute("member", member);
		model.addAttribute("resList", resList);
		return "mypage/my_reservation";
	}

	@GetMapping("mypage/reservationDetail")
	public String reservationDetail(HttpSession session, Model model, MemberVO member, MyResVO res) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		MyResVO resInfo = service.getResInfo(res);

		resInfo.setTotal_price(resInfo.getPayment() + resInfo.getDiscount_payment());
		resInfo.setPoint((int) ((int) resInfo.getPayment() * 0.001));

		model.addAttribute("member", member);
		model.addAttribute("resInfo", resInfo);
		return "mypage/my_reservation_detail";
	}

	@GetMapping("mypage/reservationCancel")
	public String reservationCancel(HttpSession session, Model model, MemberVO member, MyResVO res) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		MyResVO resInfo = service.getResInfo(res);

		resInfo.setPoint((int) ((int) resInfo.getPayment() * 0.001));

		model.addAttribute("member", member);
		model.addAttribute("resInfo", resInfo);
		return "mypage/my_reservation_cancel";
	}

	@PostMapping("mypage/reservationCancelPro")
	public String reservationCancelPro(HttpSession session, Model model, MemberVO member,
			@RequestParam Map<String, String> map) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		System.out.println(map);

		Map<String, Object> payInfo = service.getPayInfo(map);

		if (payInfo.get("pay_status").equals("2")) {
			model.addAttribute("msg", "이미 취소되었습니다.");

			return "fail_back";
		}

		boolean isCanceled = service.cancelReservation(payInfo);

		if (!isCanceled) {
			model.addAttribute("msg", "취소요청이 실패되었습니다. 다시한번 확인해주세요");

			return "fail_back";
		}

		model.addAttribute("msg", "취소가 완료되었습니다. 캐쉬화면에서 출금을 진행하세요");
		model.addAttribute("targetURL", "cash");

		return "forward";
	}

	@GetMapping("mypage/alert")
	public String alert(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		List<Map<String, Object>> alertList = service.getAlertList(member);

		service.changeAlertReadStatus(member);

		model.addAttribute("member", member);
		model.addAttribute("alertList", alertList);
		return "mypage/my_alert";
	}

	@GetMapping("mypage/chat")
	public String messages(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		return "mypage/my_chat";
	}

	@GetMapping("mypage/coupon")
	public String coupon(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		List<Map<String, Object>> couponList = service.getCouponList(member);

		model.addAttribute("member", member);
		model.addAttribute("couponList", couponList);

		return "mypage/my_coupon";
	}

	@GetMapping("mypage/cash")
	public String cash(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		List<Map<String, Object>> cashList = service.getCashList(member);
		Map<String, String> totalCash = service.getmyMainInfo(member);

		String rNum = RandomStringUtils.randomNumeric(32);
		session.setAttribute("state", rNum);

		model.addAttribute("member", member);
		model.addAttribute("cashList", cashList);
		model.addAttribute("totalCash", totalCash);
		return "mypage/my_cash";
	}

//	@GetMapping("mypage/point")
//	public String point(HttpSession session, Model model, MemberVO member) {
//		String sId = (String) session.getAttribute("sId");
//		if (sId == null) {
//			model.addAttribute("msg", "로그인이 필요합니다");
//			model.addAttribute("targetURL", "/gongsaeng/member/login");
//
//			return "forward";
//		}
//		member.setMember_id(sId);
//		member = service.getMemberInfo(member);
//		List<Map<String, Object>> pointList = service.getPointList(member);
//		Map<String, String> totalPoint = service.getmyMainInfo(member);
//		
//		model.addAttribute("member", member);
//		model.addAttribute("pointList", pointList);
//		model.addAttribute("totalPoint",totalPoint);
//		return "mypage/my_point";
//	}

	@GetMapping("mypage/bookmark")
	public String bookmark(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		List<Map<String, Object>> bookmarkList = service.getBookmarkInfo(member);

		member = service.getMemberInfo(member);
		model.addAttribute("member", member);
		model.addAttribute("bookmarkList", bookmarkList);
		return "mypage/my_bookmark";
	}

	@GetMapping("mypage/following")
	public String following(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		List<Map<String, Object>> followingList = service.getFollowingInfo(member);

		model.addAttribute("member", member);
		model.addAttribute("followingList", followingList);
		return "mypage/my_following";
	}

	@GetMapping("mypage/recent")
	public String recent(HttpSession session, Model model, MemberVO member, HttpServletRequest request)
			throws UnsupportedEncodingException {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		System.out.println("mypage/recent");

		JSONArray recentClasses = null;
		Cookie[] cookies = request.getCookies();
		List<Map<String, Object>> recentList = new ArrayList<>();

		System.out.println(cookies.toString());
		Cookie recentClassesCookie = null;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("recentClasses")) {
					System.out.println(cookie.getName());
					System.out.println(cookie.getValue());
					recentClassesCookie = cookie;
					break; // if문 안으로 이동
				}
			}
		}

		if (recentClassesCookie != null) {
			String decodedValue = URLDecoder.decode(recentClassesCookie.getValue(), "UTF-8");
			recentClasses = new JSONArray(decodedValue);

			for (int i = 0; i < recentClasses.length(); i++) {
				JSONObject json = recentClasses.getJSONObject(i);
				Map<String, Object> map = new HashMap<>();
				Iterator<String> keys = json.keys();
				while (keys.hasNext()) {
					String key = keys.next();
					map.put(key, json.get(key));
				}
				recentList.add(map);
			}
		}

		model.addAttribute("member", member);
		model.addAttribute("recentList", recentList);

		return "mypage/my_recent";
	}

	@GetMapping("mypage/reviewWrite")
	public String reviewWrite(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		List<MyResVO> resList = service.getReviewWriteableResList(member);

		model.addAttribute("member", member);
		model.addAttribute("resList", resList);

		return "mypage/my_review_write";
	}

	@GetMapping("mypage/reviewList")
	public String reviewList(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		List<Map<String, String>> reviewList = service.getReviewList(member);

		model.addAttribute("member", member);
		model.addAttribute("reviewList", reviewList);
		return "mypage/my_review_list";
	}

	@GetMapping("mypage/report")
	public String report(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
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
	public String reportPro(HttpSession session, Model model, MemberVO member, @RequestParam Map<String, String> map) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		map.put("member_id", sId);
		int insertCount = service.registReportClass(map);

		if (insertCount > 0) {
			model.addAttribute("msg", "신고가 접수되었습니다.");
			return "popup_close";
		} else {
			model.addAttribute("msg", "오류발생. 다시시도해주세요.");
			return "fail_back";
		}
	}

	@GetMapping("mypage/community")
	public String community(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);
		List<Map<String, String>> myCommunityList = service.getMyCommunityList(member);

		model.addAttribute("member", member);
		model.addAttribute("myCommunityList", myCommunityList);

		return "mypage/my_community";
	}

	@GetMapping("mypage/modifyProfile")
	public String modifyProfile(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		member.setMember_id(sId);
		member = service.getMemberInfo(member);

		String email = member.getMember_email();

		String[] emailArr = email.split("@");

		member.setMember_email1(emailArr[0]);
		member.setMember_email2(emailArr[1]);
		model.addAttribute("member", member);

		return "mypage/my_modifyProfile";
	}

	@PostMapping("mypage/modifyProfilePro")
	public String modifyProfilePro(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}

		System.out.println(member);
		// 프로필 사진 변경하기
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
		System.out.println("원본파일명 : " + mFile.getOriginalFilename());

		member.setMember_img("");

		String imgName = UUID.randomUUID().toString().substring(0, 8) + "_" + mFile.getOriginalFilename();
		System.out.println(imgName);
		if (!mFile.getOriginalFilename().equals("")) {
			member.setMember_img(subDir + "/" + imgName);
		}

		System.out.println("실제 업로드 파일명 : " + member.getMember_img());
		// memberService - getmember() 메서드 호출하여 회원 정보 조회 요청(패스워드 비교용)
		// => 파라미터 : memberInfo 객체 리턴타입 : memberInfo(dbmember)

		// BCryptPasswordEncoder 클래스를 활용하여 입력받은 기존 패스워드와 DB 패스워드 비교
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		System.out.println("비밀번호" + member.getMember_passwd());
		if (!(member.getMember_passwd() == null || member.getMember_passwd().equals(""))) {
			member.setMember_passwd(passwordEncoder.encode(member.getMember_passwd()));
		}

		member.setMember_email(member.getMember_email1() + "@" + member.getMember_email2());
		// memberService - modifymember() 메서드 호출하여 회원 정보 수정 요청
		// => 파라미터 : memberInfo 객체, 새 패스워드(newPasswd) 리턴타입 : int(updateCount)
		int updateCount = service.modifymember(member);

		// 회원 정보 수정 요청 결과 판별
		// => 실패 시 "fail_back" 페이지 포워딩 처리("회원정보 수정 실패!")
		// => 성공 시 "memberInfo" 서블릿 리다이렉트
		if (updateCount > 0) { // 성공 시
			session.setAttribute("msg", "회원정보 수정이 완료되었습니다.");
			if (!mFile.getOriginalFilename().equals("")) {
				try {
					mFile.transferTo(new File(saveDir, imgName));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					model.addAttribute("msg", "회원정보 수정 실패!");
					return "fail_back";
				}
			}
			model.addAttribute("msg", "회원정보가 수정되었습니다!");
			model.addAttribute("targetURL", "modifyProfile");
			return "forward";
		} else { // 실패 시
			model.addAttribute("msg", "회원정보 수정 실패!");
			return "fail_back";
		}

	}

	@ResponseBody
	@PostMapping("mypage/withdraw")
	public String withdraw(HttpSession session, Model model, MemberVO member) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}

		member.setMember_id(sId);
		MemberVO dbmember = service.getMemberInfo(member);
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

		if (!passwordEncoder.matches(member.getMember_passwd(), dbmember.getMember_passwd())) {
			return "false";
		}

		int updateCount = service.withdrawMember(member);

		if (updateCount > 0) {
			session.invalidate();
			return "true";
		} else {
			return "fail";
		}
	}

	@ResponseBody
	@GetMapping("mypage/deleteBookmark")
	public String deleteBookmark(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		System.out.println(map);
		int deleteCount = service.deleteBookmark(map);

		if (deleteCount > 0) {
			return "true";
		} else {
			return "false";
		}
	}

	@ResponseBody
	@GetMapping("mypage/addBookmark")
	public String addBookmark(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		System.out.println(map);
		map.put("member_id", sId);

		Map<String, Object> bookMark = service.getTargetBookmarkInfo(map);

		if (bookMark == null || bookMark.size() == 0) {

			int insertCount = service.addBookmark(map);

			if (insertCount > 0) {
				return "true";
			} else {
				return "fail";
			}
		}
		
		return "false";
	}

	@ResponseBody
	@GetMapping("mypage/deletefollowing")
	public String deletefollowing(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		System.out.println(map);
		int deleteCount = service.deletefollowing(map);

		if (deleteCount > 0) {
			return "true";
		} else {
			return "false";
		}
	}

	@ResponseBody
	@GetMapping("mypage/deleteAlert")
	public String deleteAlert(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}
		System.out.println(map);
		int deleteCount = service.deleteAlert(map);

		if (deleteCount > 0) {
			return "true";
		} else {
			return "false";
		}
	}

}
