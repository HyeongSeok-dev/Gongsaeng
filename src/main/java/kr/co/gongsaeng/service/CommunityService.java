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
	
	// 게시물 등록 요청
	public int registBoard(BoardVO board) {
		return mapper.insertBoard(board);
	}
	
	// 함께해요 게시물 목록 조회 요청
	public List<BoardVO> getTogetherList(String sId, int startRow, int listLimit) {
		return mapper.selectTogetherList(sId, startRow, listLimit);
	}
	
	// 함께해요 게시물 목록 개수 조회 요청
	public int getTogetherListCount(String sId) {
		return mapper.selectTogetherListCount(sId);
	}
	
	// 함께해요 게시물 상세 보기(조회수 증가 여부를 컨트롤러에서 제어하기 위해 isIncreaseReadcount 파라미터 추가)
	public BoardVO getTogether(int board_idx, boolean isIncreaseReadcount) {
		BoardVO board = mapper.selectTogetherBoard(board_idx);
		
		// 조회 결과가 존재하고 isIncreaseReadcount 가 true 일 경우 조회수 증가 작업 요청
		if(board != null && isIncreaseReadcount) {
			mapper.updateTogetherReadcount(board);
		}
		
		return board;
	}

	// 함께해요 게시물 삭제 요청
	public int removeTogether(BoardVO board) {
		return mapper.deleteTogether(board);
	}
	
	// 게시물 수정 - 첨부파일 삭제 요청
	public int removeTogetherFile(BoardVO board) {
		return mapper.updateTogetherFile(board);
	}
	
	// 게시물 수정 요청
	public int modifyTogether(BoardVO board) {
		return mapper.updateTogether(board);
	}
	
	// 댓글 작성 요청
	public int registTogetherReplyBoard(Map<String, String> map) {
		return mapper.insertTogetherReplyBoard(map);
	}
	
	// 함께해요 댓글 목록 조회 요청
	public List<Map<String, Object>> getTogetherReplyBoardList(int board_idx) {
		return mapper.selectTogetherReplyBoardList(board_idx);
	}

	// 댓글 작성자 조회 요청
	public Map<String, String> getTogetherReplyWriter(Map<String, String> map) {
		return mapper.selectTogetherReplyWriter(map);
	}
	
	// 댓글 삭제 요청
	public int removeTogetherReplyBoard(Map<String, String> map) {
		return mapper.deleteTogetherReplyBoard(map);
	}

	// 대댓글 등록 요청
	// => 단, 두 가지 이상의 작업을 수행해야할 경우 트랜잭션 처리
	public int registTogetherReReplyBoard(Map<String, String> map) {
		// 대댓글 등록
		return mapper.insertTogetherReReplyBoard(map);
	}
	


}
