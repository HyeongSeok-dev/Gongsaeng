package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.CartMapper;
import kr.co.gongsaeng.vo.CartListVO;
import kr.co.gongsaeng.vo.CartVO;

@Service
public class CartService {

	@Autowired
	private CartMapper mapper;
	
//	//장바구니 물건찾기
//	public CartVO findCart(int class_idx, String member_id, String date) {
//		return mapper.findCart(class_idx, member_id, date);
//	}
//	
//	//장바구니 물건넣기
//	public int addToCart(int class_idx, String member_id, String date, int res_person) {
//		return mapper.insertCart(class_idx, member_id, date, res_person);
//	}

//	//수량추가
//	public int cartPlus(int cart_idx) {
//		return mapper.cartPlus(cart_idx);
//	}
	
	//장바구니 물건삭제
	public int deleteFromCart(int cart_idx) {
		return mapper.deletCart(cart_idx);
	}

	//장바구니 리스트
	public List<CartListVO> getCartListSelect(String member_id) {
		
		List<CartListVO> result = mapper.cartList(member_id);
		
		return result;
	}

	//수량수정
	public int updateCart(int cart_idx, int res_person) {
		return mapper.updateCart(cart_idx, res_person);
	}


	

	


	
} //class CartService
