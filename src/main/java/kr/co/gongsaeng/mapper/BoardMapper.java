package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BoardVO;

public interface BoardMapper {

	int insertBoard(BoardVO board);

	List<BoardVO> selectBoardList(
			@Param("searchType") String searchType, 
			@Param("searchKeyword") String searchKeyword, 
			@Param("startRow") int startRow, 
			@Param("listLimit") int listLimit);

	int selectBoardListCount(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
}
