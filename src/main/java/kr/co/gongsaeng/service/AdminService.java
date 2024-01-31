package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.AdminMapper;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReportVO;

@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;
	
	//회원목록조회
	public List<MemberVO> getMemberList() {
		return mapper.selectMemberList();
	}

	public List<ReportVO> getReportCountList() {
		return mapper.selectReportCountList();
	}
//	public String getReportCount(String member_id) {
//		return mapper.selectReportCount(member_id);
//	}

	public MemberVO getMember(String member_id) {
		return mapper.selectMember(member_id);
	}


}
