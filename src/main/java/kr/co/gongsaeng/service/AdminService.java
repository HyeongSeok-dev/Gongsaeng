package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.AdminMapper;
import kr.co.gongsaeng.vo.MemberVO;
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
	// 회원 상셍 조회
	public MemberVO getMember(String member_id) {
		return mapper.selectMember(member_id);
	}


}
