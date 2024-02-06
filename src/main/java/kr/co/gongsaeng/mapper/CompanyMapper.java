package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.PaymentVO;

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



	

}
