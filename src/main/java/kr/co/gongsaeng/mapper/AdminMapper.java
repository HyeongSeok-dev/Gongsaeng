package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReportVO;

@Mapper
public interface AdminMapper {

	//회원목록조회
	List<MemberVO> selectMemberList();

	List<ReportVO> selectReportCountList();
//	String selectReportCount(String member_id);

	MemberVO selectMember(String member_id);

	

}
