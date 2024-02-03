package kr.co.gongsaeng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ClassMapper;
import kr.co.gongsaeng.mapper.CompanyMapper;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.MemberVO;
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
	


	
	
}
