package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Mapper
public interface ReviewMapper {
	//업체이름
	String selectCompanyName(int comIdx);

	//클래스이름
	String selectClassTitle(int classIdx);

	//예약횟수 조회
	int selectCountResCom(@Param("memberId") String memberId, @Param("comIdx") int comIdx);

//	List<Map<String, String>> selectReservationList(@Param("member_id") String memberId,
//													@Param("com_idx") int comIdx,
//													@Param("pay_num") int payNum);

	//리뷰쓰기
	int insertReview(ReviewVO review);
	
	//리뷰포인트 적립
	void updatePoint(ReviewVO review);

	// 리뷰 수정 시 파일 삭제
	int updateReviewFile(ReviewVO review);

	//리뷰수정
	ReviewVO modifyReview(int reviewIdx);

	//리뷰삭제
	int removeReview(ReviewVO review);

	// 신고시 회원정보 불러오기 
	MemberVO findUserById(String sId);

	// 댓글 리스트 조회 요청
	List<Map<String, Object>> selectTinyReplyReviewList(int reviewIdx);

	// 리뷰 리스트 불러오기
	List<ReviewVO> allReviewList(int comIdx);
	
	// 리뷰 신고
	int insertReviewReport(ReviewVO review);

	// 댓글 작성 요청
	int insertTinyReplyReview(Map<String, String> map);

	// 리뷰 수정 업데이트
//	int updateReview(ReviewVO review);

}
