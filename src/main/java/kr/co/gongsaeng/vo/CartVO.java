package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class CartVO {
	private int cart_idx; //장바구니 번호 -cart
	private String member_id; //회원아이디 -cart
	private int class_idx; //클래스번호 -cart
	private String res_visit_date; //클래스번호 -cart

	
    private String resVisitDate;
    private String classIdx;
    private String memberId;
    private String resVisitTime;
    private int resMemberCount;
}//cartVO
