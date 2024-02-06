package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.AdminMapper;
import kr.co.gongsaeng.vo.AccountVO;
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
	
	public List<MemberVO> getMemberFilterList(MemberVO member) {
		return mapper.selectMemberFilterList(member);
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
	
	public List<PaymentVO> getClassPayList(String member_id) {
		return mapper.selectClassPayList(member_id);
	}

	public List<CompanyVO> getCompanyList() {
		return mapper.selectCompanyList();
	}

	public List<ClassVO> getClassList() {
		return mapper.selectClassList();
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

	public List<ReportVO> getReportClassList() {
		return mapper.selectReportClassList();
	}

	public List<ReportVO> getReportReviewList() {
		return mapper.selectReportReviewList();
	}

	public List<ReviewVO> getMemberReviewList(String member_id) {
		return mapper.selectMemberReviewList(member_id);
	}

	public List<PaymentVO> getRefundList() {
		return mapper.selectRefundList();
	}

//	public List<BoardVO> getNotice() {
//		return mapper.selectNoticeList();
//	}


}
