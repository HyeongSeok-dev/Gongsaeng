package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.SearchVO;

@Mapper
public interface SearchMapper {

	// 메인 - 클래스(최신순) 뿌리기
	List<ClassVO> selectRecentClassList(@Param("member_id") String member_id);
	
	// 메인 - 클래스(인기순) 뿌리기
	List<ClassVO> selectPopularClassList(@Param("member_id") String member_id);

	// 검색결과
	List<ClassVO> selectSearchClassList(
			@Param("searchData") SearchVO searchData, 
			@Param("member_id") String member_id,
			@Param("startRow") int startRow, 
			@Param("listLimit") int listLimit);

	// 검색결과 갯수
	int selectSearchClassCount(
			@Param("searchData") SearchVO searchData,
			@Param("member_id") String member_id);

}
