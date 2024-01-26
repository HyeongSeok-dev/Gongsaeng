package kr.co.gongsaeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("admin")
	public String admin() {
		return "admin/main";
	}
	@GetMapping("admin2")
	public String admin2() {
		return "admin/main2";
	}

	@GetMapping("admin/dashboard")
	public String dashboard() {
		return "admin/dashboard";
	}
	@GetMapping("admin/member")
	public String member() {
		return "admin/member";
	}
	@GetMapping("admin/member/detail")
	public String memberDetail() {
		return "admin/member_detail";
	}
	@GetMapping("admin/company")
	public String company() {
		return "admin/company";
	}
	@GetMapping("admin/company/class")
	public String companyClass() {
		return "admin/class";
	}
	@GetMapping("admin/account/member")
	public String accountMember() {
		return "admin/account_member";
	}
	@GetMapping("admin/account/BMember")
	public String accountBMember() {
		return "admin/account_BMember";
	}
	@GetMapping("admin/OPay/deposit/withdraw")
	public String OPayDepositWithdraw() {
		return "admin/OPay_deposit_withdraw";
	}
	@GetMapping("admin/OPay/use")
	public String OPayUse() {
		return "admin/OPay_use";
	}
	@GetMapping("admin/report")
	public String report() {
		return "admin/report";
	}
	@GetMapping("admin/marketing/event")
	public String event() {
		return "admin/event";
	}
	@GetMapping("admin/marketing/event/register")
	public String eventRegister() {
		return "admin/event_register";
	}
	@GetMapping("admin/marketing/coupon")
	public String coupon() {
		return "admin/coupon";
	}
	@GetMapping("admin/marketing/coupon/register")
	public String eventCoupon() {
		return "admin/coupon_register";
	}
	@GetMapping("admin/cs")
	public String cs() {
		return "admin/cs";
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
