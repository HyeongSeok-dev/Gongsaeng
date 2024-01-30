package kr.co.gongsaeng.mapper;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface CartMapper {

	//장바구니에 물건넣기
	String insertCart(int class_idx, String memberId);

	//장바구니 물건삭제
	String deletCart(int class_idx);

	

}//CartMapper
