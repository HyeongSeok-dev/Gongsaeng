package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import kr.co.gongsaeng.vo.*;

@Mapper
public interface PaymentMapper {

	//상세페이지에서 결제하기버튼 눌렀을때 출력되는 리스트
	List<PaymentVO> classList(int class_idx);

	//쿠폰리스트 출력
	List<CouponVO> couponListSelect(String member_id);

	//account 테이블, cash테이블 조인해서 모든정보 가지고오기
	List<CashVO> allListSelect(String member_id);

	//결제정보 인서트
	int insertPayment(@Param("payment") PaymentVO payment, 
			@Param("sId") String sId);



}
