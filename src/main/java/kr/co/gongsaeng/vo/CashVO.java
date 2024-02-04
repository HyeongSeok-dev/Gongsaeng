package kr.co.gongsaeng.vo;


import lombok.Data;

@Data
public class CashVO {
	private int cash_idx;
	private String member_id;
	private int cash_value;
	private int cash_category;
	private String cash_reason;
	private String cash_date;
	
}
