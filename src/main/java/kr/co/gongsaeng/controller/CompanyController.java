package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController {
	
	@GetMapping("company/dashboard")
	public String ceo_dashboard() {
		return "company/company_dashboard";
	}
		
	@GetMapping("company/class/register")
	public String company_register() {
		return "company/company_register";
	}

	@GetMapping("company/class/register1")
	public String company_register1() {
		return "company/company_register1";
	}

	@GetMapping("company/class/register2")
	public String company_register2() {
		return "company/company_register2";
	}

	@GetMapping("company/class/register3")
	public String company_register3() {
		return "company/company_register3";
	}

	@GetMapping("company/class/register4")
	public String company_register4() {
		return "company/company_register4";
	}
	
	@GetMapping("company/class")
	public String company_class() {
		return "company/company_class";
	}

	@GetMapping("company/reservation")
	public String company_reservation() {
		return "company/company_reservation";
	}

	@GetMapping("company/reservation2")
	public String company_reservation2() {
		return "company/company_reservation2";
	}
		
	@GetMapping("company/sales")
	public String company_sales() {
		return "company/company_sales";
	}
	
	@GetMapping("company/sales2")
	public String company_sales2() {
		return "company/company_sales2";
	}

	@GetMapping("company/income")
	public String company_income() {
		return "company/company_income";
	}
	
	@GetMapping("company/income/list")
	public String company_income_list() {
		return "company/company_income_list";
	}

	@GetMapping("company/member")
	public String company_member() {
		return "company/company_member";
	}
	
	@GetMapping("company/review")
	public String company_review() {
		return "company/company_review";
	}
	
	@GetMapping("company/community")
	public String company_community() {
		return "company/company_community";
	}
	
	@GetMapping("company/notification")
	public String company_notification() {
		return "company/company_notification";
	}
	
	@GetMapping("company/inquiry")
	public String company_inquiry() {
		return "company/company_inquiry";
	}
	
	@GetMapping("company/coupon")
	public String company_coupon() {
		return "company/company_coupon";
	}
	
	
	
}
