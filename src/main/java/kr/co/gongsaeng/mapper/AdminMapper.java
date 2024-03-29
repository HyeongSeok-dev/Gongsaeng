package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.AccountVO;
import kr.co.gongsaeng.vo.AdminFilterVO;
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
import retrofit2.http.PartMap;

@Mapper
public interface AdminMapper {
	
	// member.jsp
	// 회원목록조회
	List<MemberVO> selectMemberList();
	// 회원목록 전체체크 모두 해제되어있음
	List<MemberVO> selectFilterMemberNotAll(AdminFilterVO map);
	// 회원목록 전체체크 상태 해제되어있음
	List<MemberVO> selectFilterMemberCategoryAll(AdminFilterVO map);
	// 회원목록 전체체크 분류 해제되어있음
	List<MemberVO> selectFilterMemberStatusAll(AdminFilterVO map);
	
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
	int updateStatusApproval(String member_id);
	// 반장거부
	int updateStatusRejection(String member_id);

	
	
	// reservation_class.jsp
	// 특정회원의 클래스 결제(예약)내역
	List<PaymentVO> selectClassPayList(@Param("member_id")String member_id, @Param("class_idx")String class_idx);
	//review.jsp
	List<ReviewVO> selectMemberReviewList(@Param("member_id")String member_id, @Param("class_idx")String class_idx);

	// company.jsp
	// 사업체 목록 
	List<CompanyVO> selectCompanyList();
	
	// class.jsp
	// 클래스 목록
	List<ClassVO> selectClassList(String member_id);
	
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
	List<ReportVO> selectReportClassList(@Param("member_id")String member_id, @Param("class_idx")String class_idx);
	
	//report_review.jsp
	List<ReportVO> selectReportReviewList();
	
	//cs_notice.jsp
	List<BoardVO> selectNoticeList();
	
	// company_refund.jsp
	List<PaymentVO> selectRefundList(String com_idx);
	
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
	
	//그래프 올해 월별 매출
	AdminVO selectThisYearPay();
	//그래프 올해 월별 환급수익
	AdminVO selectThisYearRef();
	//그래프 올해 월별 사업체 가입수
	AdminVO selectThisYearCom();
	//그래프 올해 월별 회원 가입수
	AdminVO selectThisYearMem();
	
	// company_detail.jsp
	// 환급금
	PaymentVO selectRegRefund(int com_idx);
	// 등록 클래스수 
	ClassVO selectRegClassCount(String member_id);
	// 클래스 예약 내역
	PaymentVO selectRegPay(int com_idx);
	// 피신고건수
	ReportVO selectReportCount(String member_id);
	
	// 사업체 정보 수정
	int updateCompany(CompanyVO company);
	// 반장승인
	int updateMemberCategory(String member_id);
	
	// 사업체 예약 리스트
	List<PaymentVO> selectComResList(String class_idx);
	
	// 클래스 상세
	ClassVO selectComClass(String class_idx);
	ReviewVO selectClassReviewCount(String class_idx);
	PaymentVO selectClassResCount(String class_idx);
	String selectClassReportCount(String class_idx);
	int updateModifyClass(ClassVO gclass);
	
	
	List<String> selectMemberIdList();
	
	int insertCouponToAdmin(Map<String, Object> map);
	
	// company_refund.jsp
	int updateRefundApproval(String pay_num);
	int updateRefundRejection(String pay_num);
	String selectCompanyMember(String com_idx);
	void insertRfundResult(@Param("member_id") String member_id, @Param("cash_value") String cash_value,@Param("pay_num") String pay_num);
	int updateDoRefund(String pay_num);
	
	// company_refund_detail.jsp
	PaymentVO selectCompanyRefund(String pay_num);
	
	//report_idx.jsp
	ReportVO selectReportDetail(@Param("report_idx")int report_idx, @Param("class_idx")int class_idx, @Param("review_idx")int review_idx);
	// report_detail 수정
	int updateStatusModify(@Param("report_idx") int report_idx,@Param("report_status") int report_status);
	
	// 쿠폰등록 
	void insertCouponAlert(Map<String, Object> map);
	
	
	



	

}
