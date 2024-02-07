package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.CouponVO;
import kr.co.gongsaeng.vo.PaymentVO;

@Mapper
public interface PaymentMapper {

	//상세페이지에서 결제하기버튼 눌렀을때 출력되는 리스트
	List<PaymentVO> paymentList(int class_idx);

	//쿠폰리스트 출력
	List<CouponVO> couponListSelect(String member_id);


}
