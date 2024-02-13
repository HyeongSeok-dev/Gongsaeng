package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.CommunityMapper;
import kr.co.gongsaeng.vo.BoardVO;

@Service
public class CommunityService {
	@Autowired
	private CommunityMapper mapper;
	
	// 1. 게시물 등록 요청
	public int registBoard(BoardVO board) {
		return mapper.insertBoard(board);
	}
	
	// 2. 함께해요 게시물 목록 조회 요청
	public List<BoardVO> getTogetherList(String sId, int startRow, int listLimit) {
		return mapper.selectTogetherList(sId, startRow, listLimit);
	}
	
	// 3. 함께해요 게시물 목록 개수 조회 요청
	public int getTogetherListCount(String sId) {
		return mapper.selectTogetherListCount(sId);
	}
	
	// 4. 함께해요 게시물 상세 보기(조회수 증가 여부를 컨트롤러에서 제어하기 위해 isIncreaseReadcount 파라미터 추가)
	public BoardVO getTogether(int board_idx, boolean isIncreaseReadcount) {
		BoardVO board = mapper.selectTogetherBoard(board_idx);
		
		// 조회 결과가 존재하고 isIncreaseReadcount 가 true 일 경우 조회수 증가 작업 요청
		if(board != null && isIncreaseReadcount) {
			mapper.updateTogetherReadcount(board);
		}
		
		return board;
	}
	
	// 5. 함께해요 댓글 카운트
	public int getCommentCount(int board_idx) {
		return mapper.selectCommentCount(board_idx);
	}

	// 6. 함께해요 게시물 삭제 요청
	public int removeTogether(BoardVO board) {
		return mapper.deleteTogether(board);
	}
	
	// 7. 게시물 수정 - 첨부파일 삭제 요청
	public int removeTogetherFile(BoardVO board) {
		return mapper.updateTogetherFile(board);
	}
	
	// 8. 게시물 수정 요청
	public int modifyTogether(BoardVO board) {
		return mapper.updateTogether(board);
	}
	
	// 9. 댓글 작성 요청
	public int registTogetherReplyBoard(Map<String, String> map) {
		return mapper.insertTogetherReplyBoard(map);
	}
	
	// 10. 함께해요 댓글 목록 조회 요청
	public List<Map<String, Object>> getTogetherReplyBoardList(int board_idx) {
		return mapper.selectTogetherReplyBoardList(board_idx);
	}

	// 11. 댓글 작성자 조회 요청
	public Map<String, String> getTogetherReplyWriter(Map<String, String> map) {
		return mapper.selectTogetherReplyWriter(map);
	}
	
	// 12. 댓글 삭제 요청
	public int removeTogetherReplyBoard(Map<String, String> map) {
		return mapper.deleteTogetherReplyBoard(map);
	}

	// 13. 대댓글 등록 요청
	// => 단, 두 가지 이상의 작업을 수행해야할 경우 트랜잭션 처리
	public int registTogetherReReplyBoard(Map<String, String> map) {
		// 대댓글 등록
		return mapper.insertTogetherReReplyBoard(map);
	}

	public List<BoardVO> getQuestionList(String sId, int startRow, int listLimit) {
		return mapper.selecQuestionList(sId, startRow, listLimit);
	}

	public int getQuestionListCount(String sId) {
		return mapper.selectQuestionListCount(sId);
	}

	public BoardVO getQuestion(int board_idx, boolean isIncreaseReadcount) {
		BoardVO board = mapper.selectQuestionBoard(board_idx);

		// 조회 결과가 존재하고 isIncreaseReadcount 가 true 일 경우 조회수 증가 작업 요청
		if(board != null && isIncreaseReadcount) {
			mapper.updateQuestionReadcount(board);
		}
		
		return board;
	}


	public int getQCommentCount(int board_idx) {
		return mapper.selectQCommentCount(board_idx);
	}

	public int removeQuestion(BoardVO board) {
		return mapper.deleteQuestion(board);
	}

	public int removeQuestionFile(BoardVO board) {
		return mapper.updateQuestionFile(board);
	}

	public int modifyQuestion(BoardVO board) {
		return mapper.updateQuestion(board);
	}

	public int registQuestionReplyBoard(Map<String, String> map) {
		return mapper.insertQuestionReplyBoard(map);
	}

	public List<Map<String, Object>> getQuestionReplyBoardList(int board_idx) {
		return mapper.selectQuestionReplyBoardList(board_idx);
	}

	public Map<String, String> getQuestionReplyWriter(Map<String, String> map) {
		return mapper.selectQuestionReplyWriter(map);
	}

	public int removeQuestionReplyBoard(Map<String, String> map) {
		return mapper.deleteQuestionReplyBoard(map);
	}

	public int registQuestionReReplyBoard(Map<String, String> map) {
		return mapper.insertQuestionReReplyBoard(map);
	}



	


}
