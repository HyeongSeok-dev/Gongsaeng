package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MypageController {
	
	@GetMapping("mypage/main")
	public String main() {
		return "mypage/my_main";
	}

	@GetMapping("mypage/reservation")
	public String reservation() {
		return "mypage/my_reservation";
	}
	@GetMapping("mypage/reservationDetail")
	public String reservationDetail() {
		return "mypage/my_reservation_detail";
	}
	@GetMapping("mypage/reservationCancel")
	public String reservationCancel() {
		return "mypage/my_reservation_cancel";
	}
	@PostMapping("mypage/reservationCancelPro")
	public String reservationCancelPro() {
		return "";
	}
	@GetMapping("mypage/alert")
	public String alert() {
		return "mypage/my_alert";
	}
	@GetMapping("mypage/messages")
	public String messages() {
		return "mypage/my_messages";
	}
	@GetMapping("mypage/coupon")
	public String coupon() {
		return "mypage/my_coupon";
	}
	@GetMapping("mypage/cash")
	public String cash() {
		return "mypage/my_cash";
	}
	@GetMapping("mypage/point")
	public String point() {
		return "mypage/my_point";
	}
	@GetMapping("mypage/bookmark")
	public String bookmark() {
		return "mypage/my_bookmark";
	}
	@GetMapping("mypage/following")
	public String following() {
		return "mypage/my_following";
	}
	@GetMapping("mypage/recent")
	public String recent() {
		return "mypage/my_recent";
	}
	@GetMapping("mypage/reviewWrite")
	public String reviewWrite() {
		return "mypage/my_review_write";
	}
	@GetMapping("mypage/reviewList")
	public String reviewList() {
		return "mypage/my_review_list";
	}
	@GetMapping("mypage/report")
	public String report() {
		return "mypage/my_report";
	}
	@PostMapping("mypage/reportPro")
	public String reportPro() {
		return "";
	}
	@GetMapping("mypage/community")
	public String community() {
		return "mypage/my_community";
	}
	@GetMapping("mypage/communityRecent")
	public String communityRecent() {
		return "mypage/my_communityRecent";
	}
	@GetMapping("mypage/modifyProfile")
	public String modifyProfile() {
		return "mypage/my_modifyProfile";
	}
	@PostMapping("mypage/modifyProfilePro")
	public String modifyProfilePro() {
		return "";
	}
	@GetMapping("mypage/withdraw")
	public String withdraw() {
		return "mypage/my_withdraw";
	}
	@PostMapping("mypage/withdrawPro")
	public String withdrawPro() {
		return "";
	}
}
