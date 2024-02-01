package kr.co.gongsaeng.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.MailAuthInfoVO;
import kr.co.gongsaeng.vo.MemberVO;

@Mapper
public interface MemberMapper {

	int insertMember(MemberVO member);

	MemberVO selectMember(MemberVO member);

	MemberVO selectValidMember(MemberVO member);
	
	MailAuthInfoVO selectMailAuthInfo(String param);

	void insertMailAuthInfo(@Param("param") String param, @Param("mail_auth_code")String auth_code);

	void updateMailAuthInfo(@Param("param") String param, @Param("mail_auth_code")String auth_code);

	// 기존 인증정보 삭제
	void deleteMailAuthInfo(String param);

	int updatePasswd(MemberVO member);

	MailAuthInfoVO selectVailidMailAuthInfo(MailAuthInfoVO authInfo);

	void selectIdAuthInfo(MailAuthInfoVO authInfo);
	
	// 아이디 가져와서 이메일 매칭
	MemberVO selectIdAuth(MailAuthInfoVO authInfo);
}
