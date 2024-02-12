package kr.co.gongsaeng.mapper;

import java.util.List;

import kr.co.gongsaeng.vo.BoardVO;

public interface CsMapper {

	// 목록조회(공지사항)
	List<BoardVO> selectAdntList(String sId, int startRow, int listLimit);

	// 공지사항 전체 개수 조회
	int selectAdntListCount(String sId);
	
	// 공지사항 글쓰기
	int insertAdnt(BoardVO board);

}
