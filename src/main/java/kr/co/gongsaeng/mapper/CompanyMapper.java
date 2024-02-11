package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BoardVO;
import kr.co.gongsaeng.vo.CompanyClassVO;
import kr.co.gongsaeng.vo.CompanyReviewDetailVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
import kr.co.gongsaeng.vo.ViewReportDetailByCompanyVO;

@Mapper
public interface CompanyMapper {

	// 반장회원 정보 조회
	MemberVO selectMember(MemberVO member);

	// 반장회원 등록
	int insertCompany(CompanyVO company);

	// member_id로 com_idx 찾기
	Integer findComIdxBysId(String sId);

	// 매출내역(com_idx)
	List<Map<String, Object>> selectSaleList(Integer comIdx);

	// 클래스명 출력
	String selectClassTitle(int classIdx);

	// 매출내역 삭제
	int deleteSaleList(String payNum);

	// 정산 내역 출력
	int selectIncome(Integer comIdx);

	// 계좌정보 출력
	List<CompanyVO> selectCompanyAccountInfo(int comIdx);

	// 정산내역 출력
	List<PaymentVO> selectCompanyPaymentInfo(Integer comIdx);

	// 정산신청 상태 변경
	int updatePayCalStatus(@Param("payNum") String payNum, @Param("payCalStatus") int payCalStatus);

	// 회원 목록 출력
	List<CompanyClassVO> selectCompanyClassMember(Integer comIdx);

	// 리뷰 목록 출력
	List<CompanyReviewDetailVO> selectCompanyReviewDetail(Integer comIdx);

	// 정산 신청 완료 금액
	int selectSumPayment(Integer comIdx);

	// 메인 - (1-1) 월별 매출(클래스 판매 금액)
	Integer selectSumMonthlySales(Integer comIdx);

	// 메인 - (1-2) 월별 매출(할인쿠폰 금액)
	int selectSumMonthlyCoupons(Integer comIdx);

	// 메인 - (2-1) 클래스 누적 정산 금액(클래스 총 정산 금액)
	int selectSumTotalSales(Integer comIdx);

	// 메인 - (2-2) 클래스 누적 정산 금액(클래스 총 정산 금액)
	int selectSumTotalRefund(Integer comIdx);

	// 메인 - (3-1) 월간 클래스 등록 현황
	int selectSumMonthlyNumberOfClass(Integer comIdx);

	// 메인 - (4-1) 월간 클래스 취소 현황(취소 건수)
	int selectCountMonthlyCancelClass(Integer comIdx);

	// 메인 - (4-2) 월간 클래스 취소 현황(취소 금액)
	int selectSumMonthlyCancelClass(Integer comIdx);

	// 메인 - (5) 운영중인 클래스 현황
	int selectCountClass(String memberId);

	// 메인 - (6) 클래스 신고 현황
	List<ReportVO> countReport(String memberId);

	// 메인 - (7) 작가 공지사항
	List<BoardVO> getCompanyBoard(int i, int j);

	// 클래스 내역 페이징 처리
	int selectClassListCount(String sId);

	// 신고 세부사항
	List<ViewReportDetailByCompanyVO> selectReportDetail(String sId);




	

}
