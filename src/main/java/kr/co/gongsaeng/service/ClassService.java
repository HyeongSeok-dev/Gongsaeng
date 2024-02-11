package kr.co.gongsaeng.service;

import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ClassMapper;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
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

	// [ 클래스 등록 시 기존 주소 출력 ] 
	public CompanyVO getClassAddress(String sId) {

		return mapper.getAddressBySid(sId);
	}

	// [ 클래스 내역 페이징 처리 ] 
	public int getClassListCount(String sId) {

		return mapper.selectClassListCount(sId);
	}

//	public List<ClassVO> getTogetherList(String sId) {
//	
//		return mapper.selectClassPaging(sId);
//	}
	
	// java.sql.Date를 LocalDate로 변환하는 메소드
	private LocalDate convertToLocalDateViaSqlDate(java.sql.Date dateToConvert) {
	    return dateToConvert.toLocalDate();
	}

	
	public List<ClassVO> getTogetherList(String sId) {
	    List<ClassVO> classList = mapper.selectClassPaging(sId);

	    for (ClassVO classInfo : classList) {
	        LocalDate startDate = convertToLocalDateViaSqlDate(classInfo.getClass_start_date());
	        LocalDate endDate = convertToLocalDateViaSqlDate(classInfo.getClass_end_date());

	        LocalDate currentDate = LocalDate.now();
	        if (currentDate.isBefore(startDate)) {
	            classInfo.setStatus("클래스 진행 예정");
	        } else if (!currentDate.isBefore(startDate) && !currentDate.isAfter(endDate)) {
	            classInfo.setStatus("클래스 진행중");
	        } else if (currentDate.isAfter(endDate)) {
	            classInfo.setStatus("클래스 종료");
	        }
	    }

	    return classList;
	}


	// java.util.Date 를 LocalDate 로 변환하는 메소드
	private LocalDate convertToLocalDateViaInstant(java.util.Date dateToConvert) {
	    return dateToConvert.toInstant()
	      .atZone(ZoneId.systemDefault())
	      .toLocalDate();
	}

	// 클래스 진행 상태 표기
	





	
	
}
