package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ClassMapper;
import kr.co.gongsaeng.mapper.CompanyMapper;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;
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
//	public Object updatePayCalStatus(String payNum, int pay_cal_status) {
	
//		return mapper.updatePayCalStatus(payNum, pay_cal_status);
//		return mapper.updatePayCalStatus(payNum, pay_cal_status);
//	}
	
	public int updatePayCalStatus(String payNum, int payCalStatus) throws Exception {
	    return mapper.updatePayCalStatus(payNum, payCalStatus);
	}
	
	

}


	
	
