package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.AccountVO;
import kr.co.gongsaeng.vo.AdminVO;
import kr.co.gongsaeng.vo.BoardVO;
import kr.co.gongsaeng.vo.CashVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.CouponVO;
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
	// 회원정보수정
	int updateModifyMember(MemberVO member);
	// 반장승인
	int updateMemberCategory(String member_id);
	int updateStatusApproval(String member_id);
	// 반장거부
	int updateStatusRejection(String member_id);
	
	
	// reservation_class.jsp
	// 특정회원의 클래스 결제(예약)내역
	List<PaymentVO> selectClassPayList(String member_id);
	//review.jsp
	List<ReviewVO> selectMemberReviewList(String member_id);

	// company.jsp
	// 사업체 목록 
	List<CompanyVO> selectCompanyList();
	
	// class.jsp
	// 클래스 목록
	List<ClassVO> selectClassList();
	
	// account_member.jsp
	// 등록계좌 목록
	List<AccountVO> selectAccountList();
	
	// OPay_*.jsp
	// 페이 충전송금 목록
	List<CashVO> selectCashList();
	
	//event.jsp
	List<BoardVO> selectEventList();
	
	//coupon.jsp
	List<CouponVO> selectCouponList();
	
	//report_class.jsp
	List<ReportVO> selectReportClassList();
	
	//report_review.jsp
	List<ReportVO> selectReportReviewList();
	
	//cs_notice.jsp
	List<BoardVO> selectNoticeList();
	
	// company_refund.jsp
	List<PaymentVO> selectRefundList();
	
	// main.jsp
	// 오늘 총 매출
	String selectTotalPayment();
	// 오늘 예약 건수
	String selectCountPayment();
	// 신규회원수
	String selectNewMemberCount();
	// 누적 회원수
	String selectCulmulativeMemberCount();
	// 신규 반장수
	String selectNewBanjangCount();
	// 누적 반장수
	String selectCulmulativeBanjangCount();
	// 이번달 예약건수
	String selectMonthlyPayCount();
	// 누적 예약건수
	String selectCumulativePayCount();
	// 이번달 총매출
	String selectMonthlyTotalPay();
	// 누적 총매출
	String selectCumulativeTotalPay();
	// 이번달 환급금
	String selectMonthlyRefund();
	// 누적 환급금
	String selectCumulativeRefund();
	// 이번달 환급 수익
	String selectMonthlyRefundFee();
	// 누적 환급 수익
	String selectCumulativeRefundFee();
	// 사업체 가입 신청
	String selectNewComRegCount();
	// 사업체 환급 신청
	String selectComRefundApp();
	// 클래스 신고
	String selectNewClassReport();
	// 리뷰 신고
	String selectNewReviewReport();
	// 채팅문의
	String selectNewQnaChat();
	
	//그래프 올해 매출
	AdminVO selectThisYearPay();
	
	
	



	

}
