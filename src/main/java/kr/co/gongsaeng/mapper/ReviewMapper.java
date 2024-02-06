package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReviewCountVO;
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
	List<ReviewVO> allReviewList(int classIdx);
	
	// 리뷰 신고
	int insertReviewReport(ReviewVO review);

	// 댓글 작성 요청
	int insertTinyReplyReview(Map<String, String> map);

	// 리뷰 글 수 
	int countReview(int classIdx);

	// 리뷰 별점 평균
	Double averageReview(int classIdx);

	// 이런 점이 좋았어요
	List<ReviewCountVO> countReviewsByComId(int classIdx);

	// 대댓글 작성 요청
	int insertTinyReReplyReview(Map<String, String> map);

	int updateReview(ReviewVO review);

	List<ReviewVO> getSortedReviews(@Param("comId") int comId, 
			@Param("classIdx")int classIdx, 
			@Param("sortType") String sortType, 
			@Param("photoOnly") boolean photoOnly);

	// 각 리뷰에 대한 댓글 갯수 카운트
	int selectCountComment(int review_idx);

	// 이런 곳 좋아요 출력
	int getCompanyLike(int classIdx);
	
	// 리뷰 내용 가져오기
	ReviewVO getReview(int reviewNum);

	// 리뷰 수정 업데이트
//	int updateReview(ReviewVO review);
	
	// 리뷰 정렬 
	List<ReviewVO> selectReviewsByNewest(int comId);

	// 예약번호 1개당 1개의 리뷰만 작성 가능
	List<Map<String, String>> selectReservationList(@Param("memberId")String memberId, @Param("classIdx")int classIdx, @Param("payNum")int payNum);

	// 댓글 작성자 조회 요청
	Map<String, String> selectTinyReplyReviewWriter(Map<String, String> map);

	int deleteTinyReplyReview(Map<String, String> map);

//	List<ReviewVO> selectReviewsByHighestScore(int comId);
//
//	List<ReviewVO> selectReviewsByLowestScore(int comId);

}
