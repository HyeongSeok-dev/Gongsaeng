package kr.co.gongsaeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ProductMapper;
import kr.co.gongsaeng.vo.BookmarkVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Service
public class ProductService {

	@Autowired
	private ProductMapper mapper;

	public ClassVO getClassAll(int classIdx) {
		return mapper.selectClassInfo(classIdx);
	}

	public CompanyVO getCompanyAll(ClassVO cla) {
		return mapper.selectCompanyInfo(cla);
	}

	public List<ReviewVO> getReviewInfo(ClassVO cla) {
		return mapper.selectReviewInfo(cla);
	}

	public BookmarkVO getBookmark(String sId, int class_idx) {
		return mapper.selectBookmark(sId, class_idx);
	}




	
}
