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
	
	@GetMapping("product/detail")
	public String productDetail() {
		return "product_detail";
	}
}
