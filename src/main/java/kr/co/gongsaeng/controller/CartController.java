package kr.co.gongsaeng.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import kr.co.gongsaeng.service.CartService;
import kr.co.gongsaeng.vo.CartListVO;
import kr.co.gongsaeng.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	
	//장바구니
	@GetMapping("cart")
	public String cart(HttpSession session) {
		
		String member_id = session.getAttribute("sId").toString();		
		//장바구니 리스트 불러오기
		List<CartListVO> cartList = cartService.getCartListSelect(member_id);
		
		return "cart/cart";
	}
	
	//장바구니 비었을때
	@GetMapping("cart/empty")
	public String cartEmpty() {
		return "cart/cart_empty";
	}
	
	//장바구니에 물건넣기
	@PostMapping("addCart")
    public @ResponseBody String addToCart(@RequestParam int class_idx, @RequestParam String member_id) {
        try {
            cartService.addToCart(class_idx, member_id);
            return "true";
        } catch (Exception e) {
            return "false";
        }
    }
	 
	 //장바구니 물건삭제
	@PostMapping("deleteCart")
	public String deleteCart(@RequestParam int class_idx) {
	    try {
	        cartService.deleteFromCart(class_idx);
	        return "true";
	    } catch (Exception e) {
	        return "false";
	    }
	}
	
	
}//CartController


