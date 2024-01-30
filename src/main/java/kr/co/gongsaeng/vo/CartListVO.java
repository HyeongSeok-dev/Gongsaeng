package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class CartListVO {
	private String member_id; //회원아이디
	private int cart_idx; //장바구니 번호
	private int class_idx; //클래스번호
	private String class_title; //클래스이름
	private String class_pic1; //클래스 대표사진
	private int class_price; //클래스 가격
	private int res_person; //예약 인원수
	private int payment; //총결제금액

}//cartVO
