package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.CartMapper;
import kr.co.gongsaeng.vo.CartListVO;

@Service
public class CartService {

	@Autowired
	private CartMapper mapper;
	
	//장바구니 물건넣기
	public int addToCart(int class_idx, String member_id) {
		return mapper.insertCart(class_idx, member_id);
	}

	//장바구니 물건삭제
	public String deleteFromCart(int cart_idx) {
		return mapper.deletCart(cart_idx);
	}

	//장바구니 리스트
	public List<CartListVO> getCartListSelect(String member_id) {
		
		List<CartListVO> result = mapper.allCartList(member_id);
		
		return result;
	}

	public String updateCart(int cart_idx, int resPerson) {
		return mapper.updateCart(cart_idx, resPerson);
	}

	//장바구니 수량변경
	


	
} //class CartService
