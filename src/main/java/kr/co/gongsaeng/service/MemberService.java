package kr.co.gongsaeng.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.gongsaeng.mapper.MemberMapper;
import kr.co.gongsaeng.vo.MailAuthInfoVO;
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

	public MemberVO getValidMember(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectValidMember(member);
	}

	public void registMailAuthInfo(String param, String auth_code) {
		// 기존 인증정보 존재 여부 확인을 위해 인증정보 조회 수행
		// MemberMapper - selectMailAuthInfo() 메서드 호출
		MailAuthInfoVO authInfo = mapper.selectMailAuthInfo(param);
		System.out.println("authInfo : " + authInfo);
		
		
		// 기존 인증 정보 존재 여부 판별
		if(authInfo == null) { // 기존 인증정보 존재하지 않을 경우 => 새 인증정보 추가(INSERT)
			// MemberMapper - insertMailAuthInfo() 메서드 호출하여 새 인증정보 추가
			mapper.insertMailAuthInfo(param, auth_code);
		} else { // 기존 인증정보 존재할 경우 => 기존 인증정보 갱신(UPDATE)
			// MemberMapper - updateMailAuthInfo() 메서드 호출하여 기존 인증정보 갱신
			mapper.updateMailAuthInfo(param, auth_code);
		}
	}

	// 메일 인증 수행 요청 => 트랜잭션 처리 필요
	@Transactional
	public boolean requestEmailAuth(MailAuthInfoVO authInfo) {
		
		boolean isAuthSuccess = false;
		MailAuthInfoVO currentAuthInfo = null;
		// MemberMapper - selectMailAuthInfo() 메서드 호출(재사용)
		// => 파라미터 : 아이디   리턴타입 : MailAuthInfoVO(currentAuthInfo)
		if(authInfo.getMember_id() != null) {
			currentAuthInfo = mapper.selectMailAuthInfo(authInfo.getMember_id());
		}else {
			currentAuthInfo = mapper.selectMailAuthInfo(authInfo.getMail_auth_email());
		}
//		System.out.println("전달받은 인증정보 : " + authInfo);
//		System.out.println("조회된 기존 인증정보 : " + currentAuthInfo);
		System.out.println(currentAuthInfo);
		// 조회된 인증 정보 존재 여부 판별
		if(currentAuthInfo != null) { // 존재할 경우(아이디에 해당하는 인증 정보 존재)
			// 인증메일 하이퍼링크를 통해 전달받은 인증코드와 조회된 인증코드 문자열 비교
			if(authInfo.getMail_auth_code().equals(currentAuthInfo.getMail_auth_code())) {
				// 	 MemberMapper - deleteMailAuthInfo() 메서드 호출하여
				//    mail_auth_info 테이블의 레코드 삭제
				//    => 파라미터 : 아이디
//				if(authInfo.getUser_id() != null) {
//					mapper.deleteMailAuthInfo(authInfo.getUser_id());
//				}else {
//					mapper.deleteMailAuthInfo(authInfo.getUser_email());
//				}
				// 인증 수행 결과를 true 로 변경
				return true;
			}
		}
		
		return isAuthSuccess;
	}


	public int updatePasswd(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.updatePasswd(member);
	}


	public MailAuthInfoVO getAuthInfo(MailAuthInfoVO authInfo) {
		// TODO Auto-generated method stub
		return mapper.selectVailidMailAuthInfo(authInfo);
	}


	public void removeAuthInfo(String user_id) {
		// TODO Auto-generated method stub
		mapper.deleteMailAuthInfo(user_id);
	}


	public MemberVO requestIdAuth(MailAuthInfoVO authInfo) {
		// TODO Auto-generated method stub
		 return mapper.selectIdAuth(authInfo);
	}

	public MemberVO getMemberForValid(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectMemberForValid(member);
	}


}
