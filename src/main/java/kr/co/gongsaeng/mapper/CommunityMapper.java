package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BoardVO;

@Mapper
public interface CommunityMapper {
	
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
	
	// 댓글수
	int selectCommentCount(int board_idx);
	
	// 함께해요 글 삭제
	int deleteTogether(BoardVO board);
	
	// 함께해요 수정페이지 첨부파일 삭제
	int updateTogetherFile(BoardVO board);
	
	// 게시물 수정
	int updateTogether(BoardVO board);
	
	// 댓글 작성
	int insertTogetherReplyBoard(Map<String, String> map);

	// 함께해요 댓글 목록 조회
	List<Map<String, Object>> selectTogetherReplyBoardList(int board_idx);

	// 댓글 작성자 조회 요청
	Map<String, String> selectTogetherReplyWriter(Map<String, String> map);

	// 댓글 삭제 요청
	int deleteTogetherReplyBoard(Map<String, String> map);
	
	// 대댓글 등록
	int insertTogetherReReplyBoard(Map<String, String> map);


	

}
