package kr.co.gongsaeng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import kr.co.gongsaeng.service.CartService;
import kr.co.gongsaeng.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	//장바구니
//	@GetMapping("cart")
//	public String cart() {
//		return "cart/cart";
//	}
	
	//장바구니에 물건넣기
	 @GetMapping("cart")
	    public @ResponseBody String addToCart(@RequestParam String class_idx, @RequestParam String memberId) {
	        try {
	            cartService.addToCart(class_idx, memberId);
	            return "";
	        } catch (Exception e) {
	            return "";
	        }
	    }
	
}//CartController


