package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ReviewMapper;
import kr.co.gongsaeng.vo.MemberVO;
import kr.co.gongsaeng.vo.ReviewCategoryCountVO;
import kr.co.gongsaeng.vo.ReviewCountVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Service
public class ReviewService {
	@Autowired
	private ReviewMapper mapper;
	
	//리뷰글등록
	public int registReview(ReviewVO review) {
		return mapper.insertReview(review);
	}
	
	//업체이름
	public String getCompanyName(int comIdx) {
		return mapper.selectCompanyName(comIdx);
	}

	//클래스이름
	public String getClassTitle(int classIdx) {
		return mapper.selectClassTitle(classIdx);
	}
	
	//리뷰글갯수
	public int getReviewCount(int classIdx) {
		return mapper.countReview(classIdx);
	}

	// 리뷰 별점 평균 계산
	public Double getReviewAverage(int classIdx) {
		return mapper.averageReview(classIdx);
	}
	
	// 리뷰 리스트
	public List<ReviewVO> getAllReviews(int classIdx) {
		List<ReviewVO> result =  mapper.allReviewList(classIdx);
		
		System.out.println("리스트왜안돼>>>>>>>>>>>>>>>>>>>>>"  + result);
	   return result;
	}

	//리뷰수정
	public ReviewVO getReivew(int reviewIdx) {
		return mapper.modifyReview(reviewIdx);
	}

	//리뷰삭제
	public int removeReview(ReviewVO review) {
		return mapper.removeReview(review);
	}
	
	// 리뷰 수정 시 파일 삭제
	public int removeReviewFile(ReviewVO review) {
		return mapper.updateReviewFile(review);
	}
	
	//리뷰수정요청
	public int modifyReview(ReviewVO review) {
		return mapper.updateReview(review);
	}
	
	// 리뷰 내용 가져오기
	public ReviewVO getReview(int reviewIdx) {
		return mapper.getReview(reviewIdx);
	}
	
	// =========================================================================
	// 이런 점이 좋았어요
	public List<ReviewCountVO> getReviewCountsByComId(int classIdx) {

		return mapper.countReviewsByComId(classIdx);
	}
	
	// =========================================================================
	// 리뷰 정렬(최신순/별점높은순/별점낮은순 - 사진/영상 리뷰만 보기)
	public List<ReviewVO> getReviewsSortedByNewest(int comId) {
		return mapper.selectReviewsByNewest(comId);
	}
	
	//추가하기
//	public List<ReviewVO> getReviewsSortedByScore(int comId, boolean isHighest) {
//
//	    return isHighest ? mapper.selectReviewsByHighestScore(comId) : 
//	    				   mapper.selectReviewsByLowestScore(comId);
//	}
	
	public List<ReviewVO> getSortedReviews(int classIdx, String sortType, boolean photoOnly) {
		return mapper.getSortedReviews(classIdx, sortType, photoOnly);
	}
	
	// =========================================================================
	// 메뉴 불러오기 추가하기
//	public List<String> getMenuNamesByComId(int comId) {
//
//		return mapper.selectReviewMenu(comId);
//	}
	
	//-------------------------------------------------------
	// [ 신고창에 회원정보 불러오기 (메일주소/폰번호) ] 
	public MemberVO getUserInfo(String sId) {
		return mapper.findUserById(sId);
	}
	
	// [ 리뷰 신고 ]
	public int registReviewReport(ReviewVO review) {
		return mapper.insertReviewReport(review);
	}
	
	//추가하기
//	public List<ReviewVO> getReviewsByMenuName(int comId, String menuName) {
//		return mapper.selectReviewsByMenuName(comId, menuName);
//	}
	
	// 키워드 검색
//	public List<ReviewVO> filterReviewsByCategory(int comId, String category) {
////				System.out.println("키워드 확인>>>>> " + comId + category);
//			ReviewVO vo = new ReviewVO();
//			vo.setCom_id(comId);
//			vo.setCategory(category);
//		return mapper.selectReviewsByCategory(vo);
//	}
	
	//추가하기
	// 키워드 카테고리 카운트 : 데이터 뿌리기
//	public ReviewCategoryCountVO categoryCount(int classIdx) {
//		return mapper.categoryCount(classIdx);
//	}
	
	// 리뷰 댓글 작성 요청 
	public int registTinyReplyReview(Map<String, String> map) {
		return mapper.insertTinyReplyReview(map);
	}
	
	// 리뷰 댓글 리스트 조회 요청
	public List<Map<String, Object>> getTinyReplyReviewList(int reviewIdx) {
		return mapper.selectTinyReplyReviewList(reviewIdx);
	}
	
	// 리뷰 댓글 작성자 조회 요청
	public Map<String, String> getTinyReplyWriter(Map<String, String> map) {
		return mapper.selectTinyReplyReviewWriter(map);
	}
	
	// 리뷰 댓글 삭제 요청
	public int removeTinyReplyReview(Map<String, String> map) {
		return mapper.deleteTinyReplyReview(map);
	}
	
	//========================================================================

	// 대댓글 등록 요청
	// => 단, 두 가지 이상의 작업을 수행해야할 경우 트랜잭션 처리
	public int registTinyReReplyReview(Map<String, String> map) {
		// 대댓글 등록
		return mapper.insertTinyReReplyReview(map);
	}
	
	//예약완료 횟수 카운트
	public int getReservationCount(String memberId, int classIdx) {
		return mapper.selectCountResCom(memberId, classIdx);
	}

	// 각 리뷰에 대한 댓글 갯수 카운트	
	public int getCommentCount(int review_idx) {
		return mapper.selectCountComment(review_idx);
	}
	
	// 이런 곳 좋아요 출력
	public int getLikeCount(int classIdx) {
		return mapper.getCompanyLike(classIdx);
	}
	
	// 예약번호 1개당 1개의 리뷰만 작성 가능
	public List<Map<String, String>> getReservationList(String memberId, int classIdx, String payNum) {
		return mapper.selectReservationList(memberId, classIdx, payNum);
	}

	//리뷰포인트 적립
	public void givePoint(ReviewVO review) {
		mapper.updatePoint(review);
	}

//	//class_idx가져오기
//	public int getclassIdxInfo(String pay_num) {
//		return mapper.selectClassIdxInfo(pay_num);
//	}









	







	// =========================================================================









	






	
	
}
