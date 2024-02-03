package kr.co.gongsaeng.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;

@Mapper
public interface CompanyMapper {

	// 반장회원 정보 조회
	MemberVO selectMember(MemberVO member);

	// 반장회원 등록
	int insertCompany(CompanyVO company);

	

}
