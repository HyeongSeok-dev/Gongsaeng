package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ClassMapper;
import kr.co.gongsaeng.mapper.CompanyMapper;
import kr.co.gongsaeng.vo.BoardVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyClassVO;
import kr.co.gongsaeng.vo.CompanyGenderRatioVO;
import kr.co.gongsaeng.vo.CompanyReviewDetailVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.CouponVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
import kr.co.gongsaeng.vo.ViewReportDetailByCompanyVO;
@Service
public class CompanyService {
	
	@Autowired
	private CompanyMapper mapper;

	// [ 반장회원 정보 조회(가입) ]
	public MemberVO getMember(MemberVO member) {

		return mapper.selectMember(member);
	}
	
	// [ 반장회원 정보 등록(가입) ]
	public int registCompany(CompanyVO company) {
		
		return mapper.insertCompany(company);
	}

	// [ member_id로 com_idx 찾기 ]
	public Integer findComIdxBysId(String sId) {

		return mapper.findComIdxBysId(sId);
	}

	// [ 매출내역 출력(com_idx) ]
	public List<Map<String, Object>> getSaleListByComIdx(Integer comIdx) {

		return mapper.selectSaleList(comIdx);
	}

	// [ 클래스명 출력 ]
	public String findClassNameByClassIdx(int classIdx) {

		return mapper.selectClassTitle(classIdx);
	}

	// [ 매출현황 삭제 ]
	public int removeSaleList(String payNum) {

		return mapper.deleteSaleList(payNum);
	}

	// [ 정산 금액 ]
	public int calculateIncome(Integer comIdx) {

		return mapper.selectIncome(comIdx);
	}

	// [ 계좌 정보 출력 ] 
	public List<CompanyVO> getCompanyAccountInfo(int comIdx) {

		return mapper.selectCompanyAccountInfo(comIdx);
	}

	// [ 정산 내역 출력 ]
	public List<PaymentVO> getCompanyPaymentInfo(Integer comIdx) {

		return mapper.selectCompanyPaymentInfo(comIdx);
	}

	// [ 정산신청 상태 변경 ]
	public int updatePayCalStatus(String payNum, int payCalStatus) throws Exception {
	 
		return mapper.updatePayCalStatus(payNum, payCalStatus);
	}

	// [ 회원 목록 출력 ]
	public List<CompanyClassVO> getPaymentClassMembers(Integer comIdx) {

		return mapper.selectCompanyClassMember(comIdx);
	}

	// [ 리뷰 상세 내역 출력 ]
	public List<CompanyReviewDetailVO> getReviewDetail(Integer comIdx) {
		
		return mapper.selectCompanyReviewDetail(comIdx);
	}

	// [ 정산신청 완료 금액 ] 
	public int calculatePayment(Integer comIdx) {
	
		return mapper.selectSumPayment(comIdx);
	}

	// [ 메인 - (1-1) 월간매출 - 클래스 판매 금액 ]
	public Integer calculateMonthlyBycomIdx(Integer comIdx) {

		
		return mapper.selectSumMonthlySales(comIdx);
	}

	// [ 메인 - (1-2) 월간매출 - 할인쿠폰 금액 ]
	public int calculateMonthlyCouponsBycomIdx(Integer comIdx) {
		
		return mapper.selectSumMonthlyCoupons(comIdx);
	}

	// [ 메인 - (2-1) 클래스 누적 정산 금액(클래스 총 정산 금액)]
	public int calculateTotalSales(Integer comIdx) {

		return mapper.selectSumTotalSales(comIdx);
	}

	// [ 메인 - (2-2) 클래스 누적 정산 금액(클래스 총 환불 금액)]
	public int calculateTotalRefund(Integer comIdx) {

		return mapper.selectSumTotalRefund(comIdx);
	}

	// [ 메인 - (3-1) 월간 클래스 등록 현황 ]
	public int calculateMonthlyNumberOfClass(Integer comIdx) {

		return mapper.selectSumMonthlyNumberOfClass(comIdx);
	}

	// [ 메인 - (4-1) 월간 클래스 취소 현황(취소 건수) ] 
	public int calculateMonthlyCancelClass(Integer comIdx) {

		return mapper.selectCountMonthlyCancelClass(comIdx);
	}

	// [ 메인 - (4-2) 월간 클래스 취소 현황(취소 금액) ]
	public int calculateMonthlyCancelAmount(Integer comIdx) {

		return mapper.selectSumMonthlyCancelClass(comIdx);
	}

	// [ 메인 - (5-1) 운영중인 클래스 현황 ] 
	public int calculateNumberOfClass(String memberId) {

		return mapper.selectCountClass(memberId);
	}

	// [ 메인 - (6) 클래스 신고 현황 ]
	public List<ReportVO> getReportCount(String memberId) {

		return mapper.countReport(memberId);
	}

	// [ 메인 - (7) 작가 공지사항 ]
	public List<BoardVO> getCompanyBoard(int i, int j) {

		return mapper.getCompanyBoard(i,j);
	}

	// [ 신고 세부사항 리스트 ]
	public List<ViewReportDetailByCompanyVO> getReportDetail(String sId) {

		return mapper.selectReportDetail(sId);
	}

	// [ 차트 - (1) 12개월 매출 ] 
	public List<PaymentVO> getRecentSales(Integer comIdx) {

		return mapper.selectRecentSales(comIdx);
	}

	// [ 차트 - (2) 일별 클래스 등록 수(최근 10일) ] 
	public List<PaymentVO> getClassRegister(Integer comIdx) {
		
		return mapper.selectDailyClass(comIdx);
	}
	
	// [ 차트 - (3) 클래스 등록 회원 성비 ] 
	public List<CompanyGenderRatioVO> getGenderRatioByComIdx(Integer comIdx) {

		return mapper.selectGenderRatio(comIdx);
	}

	// [ 차트 - (4) 일별 취소 건수(최근 10일간) ] 
	public List<PaymentVO> getRecentCancelByComIdx(Integer comIdx) {

		return mapper.selectCountCancel(comIdx);
	}

	// 반장 쿠폰 관리
	public List<CouponVO> getClassCoupon(Integer comIdx) {

		return mapper.selectClassCoupon(comIdx);
	}

	// 공지사항 리스트 출력
	public List<BoardVO> getCompanyBoardList(int i, int j) {

		return mapper.selectNotificationList(i,j);
	}

	// 반장 프로필 조회
	public List<CompanyVO> getCompanyProfile(Integer comIdx) {

		return mapper.selectCompanyProfile(comIdx);
	}

	// 사업자 아이디 제한
	public Integer findMemberCategoryBySId(String sId) {

		return mapper.selectMemberCategory(sId);
	}

	// 매출내역에서 com_idx로 회사명 출력
	public String findCompanyNameByComIdx(int comIdxFromSale) {

		return mapper.selectComName(comIdxFromSale);
	}

	// 정산 세부내역
	public PaymentVO getPaymentDetailByPayNum(String payNum) {

		return mapper.selectPaymentByPayNum(payNum);
	}


	// 회사명 출력(메인페이지)
	public String getCompanyName(String sId) {

		return mapper.selectCompanyName(sId);
	}







}


	
	
