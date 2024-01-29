package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class AccountVO {
	private int account_idx; //계좌인덱스
	private String member_id; //회원아이디
	private String account_access_token; //엑세스 토큰
	private String account_user_seq_no; //시퀀스 번호
	private String account_user_ci; //사용자 식별번호
	private String account_user_name; //이용자이름
	private String account_fintech_use_num; //핀테크번호
	private String account_num_masked; //계좌번호

}//accountVO
