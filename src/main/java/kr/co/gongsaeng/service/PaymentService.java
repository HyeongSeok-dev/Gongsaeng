package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.PaymentMapper;
import kr.co.gongsaeng.vo.CouponVO;
import kr.co.gongsaeng.vo.PaymentVO;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentMapper mapper;

	//상세페이지에서 결제하기버튼 눌렀을때 출력되는 리스트
	public List<PaymentVO> getPaymentListSelect(int class_idx) {
		
		List<PaymentVO> result = mapper.paymentList(class_idx);
		
		return result;
	}

	//쿠폰리스트 출력
	public List<CouponVO> getCouponListSelect(String member_id) {
		
		List<CouponVO> result = mapper.couponListSelect(member_id);
		
		return result;
	}


	
}
