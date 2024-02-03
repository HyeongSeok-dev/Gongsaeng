package kr.co.gongsaeng.service;

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

	
	
}
