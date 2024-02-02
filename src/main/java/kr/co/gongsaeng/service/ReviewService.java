package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ReviewMapper;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Service
public class ReviewService {
	@Autowired
	private ReviewMapper mapper;
	
	//업체이름
	public String getCompanyName(int comIdx) {
		return mapper.selectCompanyName(comIdx);
	}

	//클래스이름
	public String getClassTitle(int classIdx) {
		return mapper.selectClassTitle(classIdx);
	}

	//예약완료 횟수 카운트
	public int getReservationCount(String memberId, int comIdx) {
		return mapper.selectCountResCom(memberId, comIdx);
	}

//	public List<Map<String, String>> getReservationList(String memberId, int comIdx, int payNum) {
//		return mapper.selectReservationList(memberId, comIdx, payNum);
//	}
	
	//리뷰글등록
	public int registReview(ReviewVO review) {
		return mapper.insertReview(review);
	}

	//리뷰포인트 적립
	public void givePoint(ReviewVO review) {
		mapper.updatePoint(review);
	}

	// 리뷰 수정 시 파일 삭제
	public int removeReviewFile(ReviewVO review) {
		return mapper.updateReviewFile(review);
	}

	//리뷰수정
	public ReviewVO getReview(int reviewIdx) {
		return mapper.modifyReview(reviewIdx);
	}

	//리뷰삭제
	public int removeReview(ReviewVO review) {
		return mapper.removeReview(review);
	}

	//-------------------------------------------------------
	// [ 신고창에 회원정보 불러오기 (메일주소/폰번호) ] 
	public MemberVO getUserInfo(String sId) {
		return mapper.findUserById(sId);
	}

	// 리뷰 댓글 리스트 조회 요청
	public List<Map<String, Object>> getTinyReplyReviewList(int reviewIdx) {
		return mapper.selectTinyReplyReviewList(reviewIdx);
	}

	// 리뷰 리스트
	public List<ReviewVO> getAllReviews(int comIdx) {
		List<ReviewVO> result =  mapper.allReviewList(comIdx);
		
		System.out.println("리스트왜안돼>>>>>>>>>>>>>>>>>>>>>"  + result);
	   return result;
	}

	
	// [ 리뷰 신고 ]
	public int registReviewReport(ReviewVO review) {
		return mapper.insertReviewReport(review);
	}

	// 리뷰 댓글 작성 요청 
	public int registTinyReplyReview(Map<String, String> map) {
		return mapper.insertTinyReplyReview(map);
	}

	//리뷰수정요청
//	public int modifyReview(ReviewVO review) {
//		return mapper.updateReview(review);
//	}

	
}
