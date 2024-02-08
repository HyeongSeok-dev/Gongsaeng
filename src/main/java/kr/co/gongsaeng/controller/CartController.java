package kr.co.gongsaeng.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.annotation.RequestScope;

import kr.co.gongsaeng.service.CartService;
import kr.co.gongsaeng.vo.CartListVO;
import kr.co.gongsaeng.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	
	//장바구니
	@GetMapping("cart")
	public String cart(HttpSession session, Model model) {
		
		System.out.println("장바구니 아이디 : " + session.getAttribute("sId"));
		
		String member_id = session.getAttribute("sId").toString();		
		//장바구니 리스트 불러오기
		List<CartListVO> cartList = cartService.getCartListSelect(member_id);
		model.addAttribute("cartList", cartList);
		
		return "cart/cart";
	}
	
//	//장바구니에서 찾기
//	@ResponseBody
//	@GetMapping("findCart")
//	public CartVO findCart(int class_idx, String member_id, String date) {
//		 try {
//	         // 장바구니에서 해당 상품 찾기
//			 CartVO cart = cartService.findCart(class_idx, member_id, date);
//		         return cart;
//		 	} catch (Exception e) {
//		        return null;
//		    }
//	}
	
//	//장바구니에 물건넣기
//	@ResponseBody
//	@PostMapping("addCart")
//    public String addToCart(@RequestParam int class_idx, @RequestParam String member_id, @RequestParam String date, @RequestParam int res_person) {
//		
//		//장바구니에서 물건찾기
//		CartVO cart = cartService.findCart(class_idx, member_id, date);
//		if(cart == null) { // 장바구니에 일치하는게 없으면 추가
//		
//            int insertCart = cartService.addToCart(class_idx, member_id, date, res_person);
//            
//	            if(insertCart > 0) { //성공
//	            	return "true";
//	            }else {
//	            	return "false";
//	            }   
//         
//		}else {
//			
//			//일치하는게 있으면 수량 +1
//			int plusCart = cartService.cartPlus(cart.getCart_idx());
//			
//			if(plusCart > 0) {
//				return "true";
//			}else {
//				return "false";
//			}
//			
//		}
//    }//addToCart
	 
	 //장바구니 물건삭제
	@ResponseBody
	@PostMapping("deleteCart")
	public String deleteCart(@RequestParam int cart_idx) {
	       int deletCart = cartService.deleteFromCart(cart_idx);
	       if(deletCart > 0) { //성공
	    	   return "true";
	       }else {
	    	   return "false";
	       }
	}
	
	//장바구니 수량변경
	@ResponseBody
	@PostMapping("updateCart")
	public String updateCart(@RequestParam int cart_idx, @RequestParam int res_person) {
	        int updateCart = cartService.updateCart(cart_idx, res_person);
	        if(updateCart > 0) {
	        	return "true";
	        }else {
	        	return "false";
	        }
	}
	
	
	
}//CartController


