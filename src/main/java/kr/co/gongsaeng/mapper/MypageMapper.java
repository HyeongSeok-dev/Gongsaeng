package kr.co.gongsaeng.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.MemberVO;

@Mapper
public interface MypageMapper {

	MemberVO selectMemberInfo(MemberVO member);

	int updateMemberInfo(MemberVO member);

	int updateMemberStatus(MemberVO member);

}
