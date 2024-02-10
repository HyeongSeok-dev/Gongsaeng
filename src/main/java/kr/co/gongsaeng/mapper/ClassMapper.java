package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import kr.co.gongsaeng.vo.ClassVO;

public interface ClassMapper {

	// 클래스 등록
	int insertClass(ClassVO gclass);

	// 클래스 내역 출력
	List<Map<String, Object>> selectClassList(String sId);

	// 클래스 일정 캘린더 출력
	List<ClassVO> selectClassScheduleByMemberId(String sId);

	// 클래스 수정 페이지 출력
	Map<String, Object> selectClassDetail(int classIdx);

	// 클래스 수정 파일 삭제
	int updateClassFile(ClassVO gclass);

	// 게시물 수정 요청
	int updateClass(ClassVO gclass);
	
	// 클래스 삭제
	int deleteClass(String class_idx);


}
