package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.PaymentMapper;
import kr.co.gongsaeng.vo.*;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentMapper mapper;

	//상세페이지에서 결제하기버튼 눌렀을때 출력되는 리스트
	public ClassVO getClassListSelect(int class_idx) {
		 
		ClassVO result = mapper.classList(class_idx);
		
		return result;
	}

	//쿠폰리스트 출력
	public List<CouponVO> getCouponListSelect(String member_id) {
		
		List<CouponVO> result = mapper.couponListSelect(member_id);
		
		return result;
	}

	//account 테이블, cash테이블 조인해서 모든정보 가지고오기
   public CashVO getAllListSelect(String member_id) {
		
		return mapper.allListSelect(member_id);
	}

   //결정정보 인서트
	public int paymentSuccess(PaymentVO payment, String sId) {
		return mapper.insertPayment(payment, sId);
	}

	//페이충전금액 인서트
	public int getOPayInsert(Map<String, Object> withdrawResult, String id) {
		return mapper.insertOPay(withdrawResult, id);
	}

	public int getForPayCom_idx(int class_idx) {
		String member_id = mapper.selectMember_id(class_idx);
		return mapper.selectCom_idx(member_id);
	}



	
	
	

	
}
