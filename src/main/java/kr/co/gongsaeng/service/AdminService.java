package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.AdminMapper;
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

@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;
	
	// member.jsp
	//회원목록조회
	public List<MemberVO> getMemberList() {
		return mapper.selectMemberList();
	}
	
	// member_detail.jsp
	// 회원 상세 조회
	public MemberVO getMember(String member_id) {
		return mapper.selectMember(member_id);
	}

	// 계좌 정보 조회
	public AccountVO getAccount(String member_id) {
		return mapper.selectAccount(member_id);
	}

	// 클래스 결제수 조회
	public PaymentVO getPayCount(String member_id) {
		return mapper.selectPayCount(member_id);
	}
	
	// 클래스 리뷰수 조회
	public ReviewVO getReviewCount(String member_id) {
		return mapper.selectReviewCount(member_id);
	}

	// 반장회원만 사업체 조회
	public CompanyVO getCompany(String member_id) {
		return mapper.selectCompany(member_id);
	}

	// 반장회원만 클래스등록수 조회
	public ClassVO getClassCount(String member_id) {
		return mapper.selectClassCount(member_id);
	}

	// 회원정보수정
	public int modifyMember(MemberVO member) {
		return mapper.updateModifyMember(member);
	}

	// 반장승인
	public int companyApproval(String member_id) {
		//  사업체 상태변경
		mapper.updateStatusApproval(member_id);
		
		// 회원 분류변경
		return mapper.updateMemberCategory(member_id);
	}

	// 반장거부
	public int companyRejection(String member_id) {
		return mapper.updateStatusRejection(member_id);
	}
	
	public List<PaymentVO> getClassPayList(String member_id,String class_idx) {
		return mapper.selectClassPayList(member_id, class_idx);
	}

	public List<CompanyVO> getCompanyList() {
		return mapper.selectCompanyList();
	}

	public List<ClassVO> getClassList(String member_id) {
		return mapper.selectClassList(member_id);
	}

	public List<AccountVO> getAccountList() {
		return mapper.selectAccountList();
	}

	public List<CashVO> getCashList() {
		return mapper.selectCashList();
	}

	public List<BoardVO> getEventList() {
		return mapper.selectEventList();
	}

	public List<CouponVO> getCouponList() {
		return mapper.selectCouponList();
	}

	public List<ReportVO> getReportClassList(String member_id, String class_idx) {
		return mapper.selectReportClassList(member_id,class_idx);
	}

	public List<ReportVO> getReportReviewList() {
		return mapper.selectReportReviewList();
	}

	public List<ReviewVO> getMemberReviewList(String member_id, String class_idx) {
		return mapper.selectMemberReviewList(member_id, class_idx);
	}

	public List<PaymentVO> getRefundList(String com_idx) {
		return mapper.selectRefundList(com_idx);
	}

	//main.jsp
	public String getTotalPayment() {
		return mapper.selectTotalPayment();
	}

	public String getCountPayment() {
		return mapper.selectCountPayment();
	}

	//방문자수는 현재어려움
//	public String getCurrentvisit() {
//		return mapper.select;
//	}
//
//	public String getCumulativeVisitors() {
//		return mapper.select;
//	}

	public String getNewMemberCount() {
		return mapper.selectNewMemberCount();
	}

	public String getCulmulativeMemberCount() {
		return mapper.selectCulmulativeMemberCount();
	}

	public String getNewBanjangCount() {
		return mapper.selectNewBanjangCount();
	}
	
	public String getCulmulativeBanjangCount() {
		return mapper.selectCulmulativeBanjangCount();
	}

	public String getMonthlyPayCount() {
		return mapper.selectMonthlyPayCount();
	}

	public String getCumulativePayCount() {
		return mapper.selectCumulativePayCount();
	}

	public String getMonthlyTotalPay() {
		return mapper.selectMonthlyTotalPay();
	}

	public String getCumulativeTotalPay() {
		return mapper.selectCumulativeTotalPay();
	}

	public String getMonthlyRefund() {
		return mapper.selectMonthlyRefund();
	}

	public String getCumulativeRefund() {
		return mapper.selectCumulativeRefund();
	}

	public String getMonthlyRefundFee() {
		return mapper.selectMonthlyRefundFee();
	}

	public String getCumulativeRefundFee() {
		return mapper.selectCumulativeRefundFee();
	}

	public String getNewComRegCount() {
		return mapper.selectNewComRegCount();
	}

	public String getComRefundApp() {
		return mapper.selectComRefundApp();
	}

	public String getNewClassReport() {
		return mapper.selectNewClassReport();
	}

	public String getNewReviewReport() {
		return mapper.selectNewReviewReport();
	}

	public String getNewQnaChat() {
		return mapper.selectNewQnaChat();
	}

	public AdminVO getThisYearPay() {
		return mapper.selectThisYearPay();
	}

	public AdminVO getThisYearRef() {
		return mapper.selectThisYearRef();
	}

	public AdminVO getThisYearCom() {
		return mapper.selectThisYearCom();
	}

	public AdminVO getThisYearMem() {
		return mapper.selectThisYearMem();
	}

	// member.jsp 필터링
	public List<MemberVO> getFilterMemberList(String checkStatus, AdminFilterVO map) {

		if(checkStatus.equals("notAll")) {
			return mapper.selectFilterMemberNotAll(map);
		} else if(checkStatus.equals("categoryAll")) {
			return mapper.selectFilterMemberCategoryAll(map);
		} else  {//	if(checkStatus.equals("statusAll"))
			return mapper.selectFilterMemberStatusAll(map);
		}
		
	}

	// company_detail.jsp
	public PaymentVO getRegRefund(int com_idx) {
		return mapper.selectRegRefund(com_idx);
	}

	public ClassVO getRegClassCount(String member_id) {
		return mapper.selectRegClassCount(member_id);
	}

	public PaymentVO getRegPay(int com_idx) {
		return mapper.selectRegPay(com_idx);
	}

	public ReportVO getReportCount(String member_id) {
		return mapper.selectReportCount(member_id);
	}

	public int modifyCompanyInfo(CompanyVO company) {
		int updateCount = 0;

		if(company.getCom_status() == 1) {
			updateCount = mapper.updateMemberCategory(company.getMember_id());
		} 

		if(updateCount > 0) {
			return mapper.updateCompany(company);
	
		} else {
			
			return 0;
		}
	}

	// 사업체 예약리스트
	public List<PaymentVO> getComResList(String member_id) {
		return mapper.selectComResList(member_id);
	}

	// 사업체 예약 리트스
	public ClassVO getComClass(String class_idx) {
		return mapper.selectComClass(class_idx);
	}
	// 클래스 리뷰수
	public ReviewVO getClassReviewCount(String class_idx) {
		return mapper.selectClassReviewCount(class_idx);
	}

	// 예약/예약취소 수
	public PaymentVO getClassResCount(String class_idx) {
		return mapper.selectClassResCount(class_idx);
	}

	public String getClassReportCount(String class_idx) {
		return mapper.selectClassReportCount(class_idx);
	}

	public int modifyClass(ClassVO gclass) {
		return mapper.updateModifyClass(gclass);
	}
	public List<String> getMemberIdList() {
		// TODO Auto-generated method stub
		return mapper.selectMemberIdList();
	}

	public int registCouponToAdmin(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return mapper.insertCouponToAdmin(map);
	}

	public void registCouponAlert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		mapper.insertCouponAlert(map);
	}






}
