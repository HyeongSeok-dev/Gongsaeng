package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gongsaeng.vo.CartListVO;
import kr.co.gongsaeng.vo.CartVO;


@Mapper
public interface CartMapper {

	//장바구니에 물건넣기
	int insertCart(@Param ("class_idx") int class_idx, @Param ("memberId") String memberId, 
			@Param ("date") String date, @Param ("persons") int persons);

	//장바구니 물건삭제
	int deletCart(@Param ("cart_idx") int cart_idx);
	
	//장바구니 리스트
	List<CartListVO> cartList(@Param("member_id") String member_id);
	
	//장바구니 수량수정
	int updateCart(int cart_idx, int resPerson);

	//장바구니 찾기
	CartVO findCart(int class_idx, String member_id, String date);

	//수량 더하기
	Object cartPlus(int cart_idx);



}//CartMapper
