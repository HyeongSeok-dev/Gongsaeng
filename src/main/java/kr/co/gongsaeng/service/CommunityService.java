package kr.co.gongsaeng.service;

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

}
