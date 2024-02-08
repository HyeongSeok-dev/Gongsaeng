package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.MyResVO;

@Mapper
public interface MypageMapper {

	MemberVO selectMemberInfo(MemberVO member);

	int updateMemberInfo(MemberVO member);

	int updateMemberStatus(MemberVO member);

	Map<String, String> selectMyMainView(MemberVO member);

	List<Map<String, Object>> selectUnreadChatInfo(MemberVO member);

	List<Map<String, Object>> selectUnreadAlertInfo(MemberVO member);

	List<Map<String, Object>> selectBookmarkInfo(MemberVO member);

	List<Map<String, Object>> selectFollowingInfo(MemberVO member);

	List<MyResVO> selectResList(MemberVO member);

	MyResVO selectResInfo(MyResVO res);

	List<Map<String, Object>> selectAlertList(MemberVO member);

	List<Map<String, Object>> selectCouponList(MemberVO member);

	List<Map<String, Object>> selectCashList(MemberVO member);

	List<Map<String, Object>> selectPointList(MemberVO member);

	int deleteBookmark(Map<String, String> map);

	int deletefollowing(Map<String, String> map);

	int insertReportClass(Map<String, String> map);

	List<Map<String, String>> selectMyCommunityList(MemberVO member);

	int updatePayStatusForCancel(Map<String, Object> payInfo);

	Map<String, Object> selectPayInfo(Map<String, String> map);

	int insertCashForCancel(Map<String, Object> map);

	int deleteAlert(Map<String, String> map);


}
