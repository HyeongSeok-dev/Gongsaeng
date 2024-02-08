package kr.co.gongsaeng.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gongsaeng.service.ProductService;
import kr.co.gongsaeng.vo.BookmarkVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	@GetMapping("product/detail")
	public String productDetail(HttpSession session, Model model,
			@RequestParam(defaultValue = "1") int classIdx, ClassVO cla, CompanyVO com) {
		
		// 세션 값 저장해두기
		String sId = (String) session.getAttribute("sId");
		session.setAttribute("member_id", sId);
		
		//클래스불러오기
		cla = service.getClassAll(classIdx);
		System.out.println("클라스" + cla);
		
		//업체정보 들고오기
		com = service.getCompanyAll(cla);
		System.out.println(com);
		
		//클래스에 맞는 리뷰 들고오기
		List<ReviewVO> reviews = service.getReviewInfo(cla);
		System.out.println("립휴" + reviews);
		
		
		
		//북마크
		if(sId != null) {
			BookmarkVO bookmark = service.getBookmark(sId,cla.getClass_idx());
			if(bookmark != null) {
				model.addAttribute("isLiked", "true");
			}else {
				model.addAttribute("isLiked", "false");
			}
		}
		
		model.addAttribute("reviews", reviews);
		model.addAttribute("cla", cla);
		model.addAttribute("company", com);
		
		
		return "product_detail";
	}

}
