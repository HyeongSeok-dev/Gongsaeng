package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class CouponVO {
	private int coupon_idx;
	private String coupon_name;
	private String member_id;
	private int com_idx;
	private double coupon_value;
	private String coupon_Issue_date;
	private String coupon_valid_date;
	private int coupon_status;
	private String coupon_min_price;
}
