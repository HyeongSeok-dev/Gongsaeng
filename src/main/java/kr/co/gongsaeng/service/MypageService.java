package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.MypageMapper;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.MyResVO;

@Service
public class MypageService {
	
	@Autowired
	MypageMapper mapper;

	public MemberVO getMemberInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectMemberInfo(member);
	}

	public int modifymember(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.updateMemberInfo(member);
	}

	public int withdrawMember(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.updateMemberStatus(member);
	}

	public Map<String, String> getmyMainInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectMyMainView(member);
	}

	public List<Map<String, Object>> getUnreadChatInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectUnreadChatInfo(member);
	}

	public List<Map<String, Object>> getUnreadAlertInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectUnreadAlertInfo(member);
	}

	public List<Map<String, Object>> getBookmarkInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectBookmarkInfo(member);
	}

	public List<Map<String, Object>> getFollowingInfo(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectFollowingInfo(member);
	}

	public List<MyResVO> getResList(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectResList(member);
	}

	public MyResVO getResInfo(MyResVO res) {
		// TODO Auto-generated method stub
		return mapper.selectResInfo(res);
	}

	public List<Map<String, Object>> getAlertList(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectAlertList(member);
	}

	public List<Map<String, Object>> getCouponList(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectCouponList(member);
	}

	public List<Map<String, Object>> getCashList(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectCashList(member);
	}

	public List<Map<String, Object>> getPointList(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectPointList(member);
	}

	
}
