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
import kr.co.gongsaeng.vo.CompanyReviewDetailVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;
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




}


	
	
