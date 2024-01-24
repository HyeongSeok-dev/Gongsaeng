package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {
	
	@GetMapping("review/write")
	public String write() {
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
	public String modify() {
		return "review/review_modify";
	}
	@GetMapping("review/complete")
	public String complete() {
		return "review/review_complete";
	}
	@GetMapping("review/comment")
	public String comment() {
		return "review/review_comment";
	}
	
	@GetMapping("product/detail")
	public String productDetail() {
		return "product_detail";
	}
}
