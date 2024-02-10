package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ClassMapper;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.MemberVO;
@Service
public class ClassService {
	@Autowired
	private ClassMapper mapper;
	
	// [ 클래스 등록 요청 ]
	public int registClass(ClassVO gclass) {
		
		return mapper.insertClass(gclass);
	}

	// [ 클래스 내역 출력 ]
	public List<Map<String, Object>> getClassList(String sId) {

		return mapper.selectClassList(sId);
	}

	// [ 클래스 예약일정 캘린더 출력 ]
	public List<ClassVO> getClassSchedulesByMemberId(String sId) {
		
		return mapper.selectClassScheduleByMemberId(sId);
	}
	
	// [ 클래스 수정페이지 출력 ] 
	public Map<String, Object> getClassDetail(int classIdx) {

		return mapper.selectClassDetail(classIdx);
	}

	// [ 클래스 수정 사진파일 삭제 ]
	public int removeClassFile(ClassVO gclass) {

		return mapper.updateClassFile(gclass);
	}

	// [ 클래스 수정 요청]
	public int modifyClass(ClassVO gclass) {

		return mapper.updateClass(gclass);
	}


	// [ 클래스 삭제 ] 
	public int removeClass(String class_idx) {

		return mapper.deleteClass(class_idx);
	}



	
	
}
