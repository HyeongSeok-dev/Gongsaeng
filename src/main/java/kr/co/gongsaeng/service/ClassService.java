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

	// [ 매출내역 출력 ]


	
	
}
