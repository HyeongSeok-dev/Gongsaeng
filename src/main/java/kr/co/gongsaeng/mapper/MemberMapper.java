package kr.co.gongsaeng.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.MemberVO;

@Mapper
public interface MemberMapper {

	int insertMember(MemberVO member);

	MemberVO selectMember(MemberVO member);

}
