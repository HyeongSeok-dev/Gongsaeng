package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReportVO;

@Mapper
public interface AdminMapper {
	
	// member.jsp
	// 회원목록조회
	List<MemberVO> selectMemberList();
	// 필터링 목록조회
	List<MemberVO> selectMemberFilterList(MemberVO member);
	
	
	// member_detail.jsp
	// 회원정보조회
	MemberVO selectMember(String member_id);


	

}
