package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.CartListVO;


@Mapper
public interface CartMapper {

	//장바구니에 물건넣기
	String insertCart(int class_idx, String memberId);

	//장바구니 물건삭제
	String deletCart(int cart_idx);
	
	//장바구니 리스트
	List<CartListVO> allCartList(@Param("member_id") String member_id);
	
	//장바구니 수량수정
	String updateCart(int cart_idx, int resPerson);

	

}//CartMapper
