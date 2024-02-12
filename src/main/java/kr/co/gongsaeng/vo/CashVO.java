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
	
	private String account_date; //계좌등록일
	private String user_seq_no; //시퀀스 번호
	private String access_token; //엑세스토큰
}
