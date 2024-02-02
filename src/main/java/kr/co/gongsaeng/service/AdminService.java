package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.AdminMapper;
import kr.co.gongsaeng.vo.AccountVO;
import kr.co.gongsaeng.vo.AdminInfo;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReportVO;

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
	public AdminInfo getPayCount(String member_id) {
		return mapper.selectPayCount(member_id);
	}
	
	// 클래스 리뷰수 조회
	public AdminInfo getReviewCount(String member_id) {
		return mapper.selectReviewCount(member_id);
	}

	// 반장회원만 사업체 조회
	public CompanyVO getCompany(String member_id) {
		return mapper.selectCompany(member_id);
	}

	// 반장회원만 클래스등록수 조회
	public AdminInfo getClassCount(String member_id) {
		return mapper.selectClassCount(member_id);
	}

	public List<PaymentVO> getClassPayList(String member_id) {
		return mapper.selectClassPayList(member_id);
	}


}
