package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.AccountVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Mapper
public interface AdminMapper {
	
	// member.jsp
	// 회원목록조회
	List<MemberVO> selectMemberList();
	// 필터링 목록조회
	List<MemberVO> selectMemberFilterList(MemberVO member);
	
	
	// member_detail.jsp
	// 회원정보조회
	MemberVO selectMember(String member_id);
	// 계좌 조회
	AccountVO selectAccount(String member_id);
	// 결제정보 조회
	PaymentVO selectPayCount(String member_id);
	// 리뷰수 조회
	ReviewVO selectReviewCount(String member_id);
	// 반장만)사업체 조회
	CompanyVO selectCompany(String member_id);
	// 반장만)클래스등록수 조회
	ClassVO selectClassCount(String member_id);
	
	// reservation_class.jsp
	// 특정회원의 클래스 결제(예약)내역
	List<PaymentVO> selectClassPayList(String member_id);
	



	

}
