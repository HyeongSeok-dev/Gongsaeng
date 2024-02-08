package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.BoardMapper;
import kr.co.gongsaeng.vo.BoardVO;

@Service
public class CommunityService {
	@Autowired
	private BoardMapper mapper;
	
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


}
