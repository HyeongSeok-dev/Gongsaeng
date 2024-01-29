package kr.co.gongsaeng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.CartMapper;

@Service
public class CartService {

	@Autowired
	private CartMapper mapper;
	
	//장바구니 물건넣기
	public  String addToCart(String class_idx, String memberId) {
		return mapper.insertCart(class_idx, memberId);
	}

	

	
} //class CartService
