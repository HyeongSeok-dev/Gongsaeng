package kr.co.gongsaeng.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gongsaeng.service.ProductService;
import kr.co.gongsaeng.vo.BookmarkVO;
import kr.co.gongsaeng.vo.CartVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;

	@GetMapping("product/detail")
	public String productDetail(HttpSession session, Model model, @RequestParam("class_idx") int classIdx, ClassVO cla,
			CompanyVO com, PaymentVO pay, HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		// 세션 값 저장해두기
		String sId = (String) session.getAttribute("sId");
		session.setAttribute("member_id", sId);

		// 클래스불러오기
		cla = service.getClassAll(classIdx);
		System.out.println("클라스" + cla);

		// 업체정보 들고오기
		com = service.getCompanyAll(cla);
		System.out.println(com);

		// 클래스에 맞는 리뷰 들고오기
		List<ReviewVO> reviews = service.getReviewInfo(cla);
		System.out.println("립휴" + reviews);

		// 클래스에 맞는 예약된 인원 들고오기
		List<PaymentVO> pays = service.getResMemberCount(classIdx);
		int totalResMember = 0;

		for (PaymentVO payss : pays) {
			int resMember = payss.getRes_member_count();
			totalResMember += resMember;
			System.out.println("pay>>>" + resMember);
		}

		int availableSeats = cla.getClass_member_count() - totalResMember;
		System.out.println("예약 가능 인원: " + availableSeats);

//		int availableSeats = cla.getClass_member_count() - resMember;

		SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
		String startTime = formatter.format(cla.getClass_start_time());
		String endTime = formatter.format(cla.getClass_end_time());

//		 상품페이지에 넣을 쿠키 추가 코드
		JSONObject recentClass = new JSONObject();
		recentClass.put("class_idx", cla.getClass_idx());
		recentClass.put("imageUrl", cla.getClass_pic1());
		recentClass.put("class_title", cla.getClass_title().replace("\"", "\\\""));

		String encodedRecentClass = URLEncoder.encode(recentClass.toString(), "UTF-8");
		boolean recentClassesExist = false;

		// recentClasses 쿠키 존재 여부 확인
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("recentClasses")) {
					recentClassesExist = true;

					// 쿠키 값 파싱
					String decodedValue = URLDecoder.decode(cookie.getValue(), "UTF-8");

					// JSON 문자열 파싱
					JSONArray recentClasses;
					try {
						recentClasses = new JSONArray(decodedValue);
					} catch (JSONException e) {
						recentClasses = new JSONArray(); // 빈 배열 생성
						recentClasses.put(new JSONObject(decodedValue));
					}

					// 해당 상품 idx 존재 여부 확인
					boolean exists = false;
					for (int i = 0; i < recentClasses.length(); i++) {
						JSONObject classInfo = recentClasses.getJSONObject(i);
						if (classInfo.getInt("class_idx") == cla.getClass_idx()) {
							exists = true;
							break;
						}
					}

					System.out.println("exists : " + exists);
					if (!exists) {
						// 쿠키에 들어간 상품 정보 수
						int size = recentClasses.length();
						System.out.println(size);

						System.out.println("전 recentClasses" + recentClasses);
						System.out.println("recentClass" + recentClass);
						// 최근 상품 정보를 맨 앞에 추가
						recentClasses.put(recentClass);

						JSONArray reversedClasses = new JSONArray();

						// 루프를 사용하여 배열 순서 뒤집기
						for (int i = recentClasses.length() - 1; i >= 0; i--) {
							reversedClasses.put(recentClasses.get(i));
						}

						System.out.println("후 reversedClasses" + reversedClasses);

						// 쿠키 값 업데이트
						String encodedrecentClasses = URLEncoder.encode(reversedClasses.toString(), "UTF-8");

						cookie.setValue(encodedrecentClasses);
						cookie.setPath("/");
						cookie.setSecure(false);
						cookie.setMaxAge(60 * 60 * 24 * 7);

						response.addCookie(cookie);

						// 최근 상품 정보 개수 제한 (예: 최대 10개)
						if (size > 10) {
							recentClasses.remove(size - 1);
						}
					}
				}
			}
		}

		if (!recentClassesExist) {

			// recentClasses 쿠키가 없는 경우
			// 쿠키 생성
			System.out.println("존재안함");
			Cookie cookie = new Cookie("recentClasses", encodedRecentClass);

			// 쿠키 유효기간 설정 (예: 7일)
			cookie.setPath("/");
			cookie.setSecure(false);
			cookie.setMaxAge(60 * 60 * 24 * 7);

			// 응답에 쿠키 추가
			response.addCookie(cookie);

		}

		// 북마크
		if (sId != null) {
			BookmarkVO bookmark = service.getBookmark(sId, cla.getClass_idx());
			if (bookmark != null) {
				model.addAttribute("isLiked", "true");
			} else {
				model.addAttribute("isLiked", "false");
			}
		}

		String classDay = cla.getClass_day(); // 월수금일
		java.sql.Date sqlStartDate = cla.getClass_start_date();
		java.sql.Date sqlEndDate = cla.getClass_end_date();// class_end_date를 가져옵니다.

		LocalDate startDate = sqlStartDate.toLocalDate();
		LocalDate endDate = sqlEndDate.toLocalDate();

		// 요일을 영어에서 한글로 변환하는 맵
		Map<String, String> dayOfWeekInKorean = new HashMap<>();
		dayOfWeekInKorean.put("MONDAY", "월");
		dayOfWeekInKorean.put("TUESDAY", "화");
		dayOfWeekInKorean.put("WEDNESDAY", "수");
		dayOfWeekInKorean.put("THURSDAY", "목");
		dayOfWeekInKorean.put("FRIDAY", "금");
		dayOfWeekInKorean.put("SATURDAY", "토");
		dayOfWeekInKorean.put("SUNDAY", "일");

//        List<LocalDate> dates = new ArrayList<>();
//
//        for (LocalDate date = startDate; !date.isAfter(endDate); date = date.plusDays(1)) {
//            int dayOfWeek = date.getDayOfWeek().getValue() % 7; // 주의 첫 번째 요일을 월요일로 설정
//            if (classDay.charAt(dayOfWeek) == '1') {
//                dates.add(date);
//            }
//        }

		List<String> dateAndDayOfWeeks = new ArrayList<>();

		for (LocalDate date = startDate; !date.isAfter(endDate); date = date.plusDays(1)) {
			int dayOfWeekIndex = date.getDayOfWeek().getValue() % 7; // 주의 첫 번째 요일을 월요일로 설정
			if (classDay.charAt(dayOfWeekIndex) == '1') {
				String monthAndDay = date.getMonthValue() + "월 " + date.getDayOfMonth() + "일"; // 월과 일만 출력
				String dayOfWeek = dayOfWeekInKorean.get(date.getDayOfWeek().name());
				dateAndDayOfWeeks.add(monthAndDay + " (" + dayOfWeek + ")"); // 날짜와 요일을 함께 저장
			}
		}

		System.out.println("dateAndDayOfWeeks>>>" + dateAndDayOfWeeks);
		model.addAttribute("dateAndDayOfWeeks", dateAndDayOfWeeks);
//		System.out.println("dates>>>" + dates);
//        model.addAttribute("dates", dates);
		model.addAttribute("availableSeats", availableSeats);
		model.addAttribute("startTime", startTime);
		model.addAttribute("endTime", endTime);
		model.addAttribute("reviews", reviews);
		model.addAttribute("cla", cla);
		model.addAttribute("company", com);

		return "product_detail";
	}

	@ResponseBody
	@GetMapping("product/issueCoupon")
	public String issueCoupon(HttpSession session, Model model, @RequestParam("com_idx") String comIdx) {
		String sId = (String) session.getAttribute("sId");
		if (sId == null) {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("targetURL", "/gongsaeng/member/login");

			return "forward";
		}

		Map<String, String> issuedCoupon = service.getIssuedCoupon(sId, comIdx);
		Map<String, String> followingStatus = service.getFollowingStatus(sId, comIdx);

		if (issuedCoupon != null) {
			if (followingStatus != null) {
				return "fail";
			} else {
				service.registFollowing(sId, comIdx);
				return "following";
			}
		}

		int insertCount = service.registCoupon(sId, comIdx);

		if (insertCount > 0) {
			return "success";
		} else {
			return "error";
		}

	}

	@PostMapping("product/cartPro")
	public String cartPro(@RequestParam("class_idx") int class_idx, @RequestParam("member_id") String member_id,
			@RequestParam("res_visit_date") String res_visit_date,
			@RequestParam("res_visit_time") String res_visit_time,
			@RequestParam("res_member_count") int res_member_count) {

		// 장바구니에서 물건찾기
		CartVO cart = service.findCart(class_idx, member_id, res_visit_date);
		System.out.println("cart>>>" + cart);

		int insertCart = service.addToCart(class_idx, member_id, res_visit_date, res_member_count, res_visit_time);

		return "redirect:/cart";
	}// addToCart

	@PostMapping("product/add-to-cart")
	public String addToCart(@RequestParam("resVisitDate") String resVisitDate,
			@RequestParam("classIdx") String classIdx, @RequestParam("memberId") String memberId,
			@RequestParam("resVisitTime") String resVisitTime, @RequestParam("resMemberCount") int resMemberCount) {

		CartVO existingCart = service.getSelectCart(resVisitDate, classIdx, memberId);
		if (existingCart != null) {
			int plusCart = service.getUpdateResMemberCount(memberId, classIdx, resVisitDate, resVisitTime,
					resMemberCount);
		} else {
			int insertCart = service.registerInsertCart(resVisitDate, classIdx, memberId);
		}
		return "cart/cart"; // 뷰 이름 반환
	}

	@ResponseBody
	@PostMapping("product/favor")
	public String favor(HttpSession session, BookmarkVO bookmark, @RequestParam int class_idx) {

		String sId = "";

		if (session.getAttribute("sIdx") == null) {
			return "notLogin";
		}
		sId = (String) session.getAttribute("sId");

		bookmark = service.getBookmark(sId, class_idx);
		if (bookmark == null) {
			int insertCount = service.registBookmark(sId, class_idx);
			return "true";
		} else {
			int deleteCount = service.removeBookmark(sId, class_idx);
			return "false";
		}

	}

}
