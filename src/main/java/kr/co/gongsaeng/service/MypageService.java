package kr.co.gongsaeng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.MypageMapper;
import kr.co.gongsaeng.vo.MemberVO;

@Service
public class MypageService {
	
	@Autowired
	MypageMapper mapper;

	public MemberVO getMemberInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectMemberInfo(member);
	}
	
}
