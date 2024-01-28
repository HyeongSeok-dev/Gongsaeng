package kr.co.gongsaeng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.MemberMapper;
import kr.co.gongsaeng.vo.MemberVO;

@Service
public class MemberService {
	@Autowired
	MemberMapper mapper;

	public int registMember(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.insertMember(member);
	}

	public MemberVO getMember(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectMember(member);
	}

}
