package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BoardVO;

public interface CsMapper {

	// 목록조회(공지사항)
	List<BoardVO> selectAdntList(@Param("sId") String sId, @Param("startRow")int startRow, @Param("listLimit")int listLimit);

	// 공지사항 전체 개수 조회
	int selectAdntListCount(String sId);
	
	// 공지사항 글쓰기
	int insertAdnt(BoardVO board);
	
	// 공지사항 상세보기
	BoardVO selectNoticeDetail(int board_idx);

}
