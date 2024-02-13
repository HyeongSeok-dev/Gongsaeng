package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.CsMapper;
import kr.co.gongsaeng.vo.BoardVO;

@Service
public class CsService {
	@Autowired
	private CsMapper mapper;
	
	// 관리자페이지에서 공지사항 조회 요청
	public List<BoardVO> getAdntList(String sId, int startRow, int listLimit) {
		return mapper.selectAdntList(sId, startRow, listLimit);
	}
	
	// 관리자페이지에서 공지사항 목록 개수 조회 요청
	public int getAdntListCount(String sId) {
		return mapper.selectAdntListCount(sId);
	}
	
	// 공지사항 게시물 등록 요청
	public int registAdnt(BoardVO board) {
		return mapper.insertAdnt(board);
	}
	
	// 공지사항 상세보기
	public BoardVO getNoticeDetail(int board_idx) {
		return mapper.selectNoticeDetail(board_idx);
	}
	
	// 공지사항 글 수정
	public int modifyNotice(BoardVO board) {
		return mapper.updateNotice(board);
	}
	
	// 공지사항 삭제
	public int removeNotice(BoardVO board) {
		return mapper.deleteNotice(board);
	}
	
	// 일반 공지사항 조회
	public List<BoardVO> getNoticeList(String sId, int startRow, int listLimit) {
		return mapper.selectNoticeList(sId, startRow, listLimit);
	}
	
	// 일반 공지사항 목록 개수 조회
	public int getNoticeListCount(String sId) {
		return mapper.selectNoticeListCount(sId);
	}

}
