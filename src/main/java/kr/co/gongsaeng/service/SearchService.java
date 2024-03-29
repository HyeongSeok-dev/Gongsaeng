package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.SearchMapper;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.ReviewVO;
import kr.co.gongsaeng.vo.SearchVO;

@Service
public class SearchService {
	@Autowired
	private SearchMapper searchMapper;
	
	// 메인 - 클래스(최신순) 뿌리기
	public List<ClassVO> getRecentClassList(String member_id) {
		return searchMapper.selectRecentClassList(member_id);
	}

	// 메인 - 클래스(인기순) 뿌리기
	public List<ClassVO> getPopularClassList(String member_id) {
		return searchMapper.selectPopularClassList(member_id);
	}

	// 메인 - 클래스(마감임박순) 뿌리기
	public List<ClassVO> getDeadlineSoonClassList(String member_id) {
		return searchMapper.selectDeadlineSoonClassList(member_id);
	}

	// 메인 - 리뷰(최신순) 뿌리기
	public List<ReviewVO> getRecentReviewList() {
		return searchMapper.selectRecentReviewList();
	}

	// 검색결과
	public List<ClassVO> getSearchClassList(SearchVO searchData, String member_id, int startRow, int listLimit) {
		return searchMapper.selectSearchClassList(searchData, member_id, startRow, listLimit);
	}

	// 검색결과 갯수
	public int getSearchClassCount(SearchVO searchData, String member_id) {
		return searchMapper.selectSearchClassCount(searchData, member_id);
	}

	// 북마크 추가 기능
	public int insertBookmark(Map<String, String> map) {
		return searchMapper.insertBookmark(map);
	}

	
}
