package kr.co.gongsaeng.mapper;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface CartMapper {

	//장바구니에 물건넣기
	String insertCart(String class_idx, String memberId);

	

}//CartMapper
