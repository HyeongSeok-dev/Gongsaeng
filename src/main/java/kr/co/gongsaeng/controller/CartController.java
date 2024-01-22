package kr.co.gongsaeng.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class CartController {
	
	//장바구니
	@GetMapping("cart")
	public String cart() {
		return "cart/cart";
	}
	
}//CartController


