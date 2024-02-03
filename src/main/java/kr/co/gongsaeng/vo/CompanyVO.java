package kr.co.gongsaeng.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CompanyVO {
		
	private int com_idx;	
	private String com_img;
	// ------------------------------
	private MultipartFile file1;
	// ------------------------------
	private String member_id;
	private String com_name;
	private String com_category;
	private String com_post_code;
	private String com_address1;
	private String com_address2;
	private String com_tel;
	private String com_email;
	private String com_introduction;
	private String com_bank;
	private String com_account;
	private String com_account_name;
	private int com_status;
	private String com_date;
	
}
