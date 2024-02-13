package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class CartListVO {
	private int cart_idx; //장바구니 번호 -cart
	private String member_id; //회원아이디 -cart
	private int class_idx; //클래스번호 -cart
	private String res_visit_date; //방문일자 -cart
	private String res_visit_time; //방문시간 -cart
	private String res_member_count; //예약 인원수 -cart
	private String class_pic1; //클래스 대표사진 -class
	private String class_title; //클래스이름 -class
	private int class_price; //클래스 가격 -class

}//cartVO
