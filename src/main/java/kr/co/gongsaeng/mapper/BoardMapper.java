package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BoardVO;

@Mapper
public interface BoardMapper {
	
	// 글쓰기
	int insertBoard(BoardVO board);

	// 목록조회(함께해요)
	List<BoardVO> selectTogetherList(@Param("sId") String sId, @Param("startRow") int startRow, @Param("listLimit") int listLimit);
	
	// 함께해요 전체 개수 조회
	int selectTogetherListCount(String sId);
	
	// 함께해요 글 상세보기
	BoardVO selectTogetherBoard(int board_idx);
	
	// 조회수
	void updateTogetherReadcount(BoardVO board);

}
