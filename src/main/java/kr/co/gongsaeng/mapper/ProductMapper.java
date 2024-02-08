package kr.co.gongsaeng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BookmarkVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Mapper
public interface ProductMapper {

	ClassVO selectClassInfo(@ Param("class_idx") int classIdx);

	CompanyVO selectCompanyInfo(ClassVO cla);

	List<ReviewVO> selectReviewInfo(ClassVO cla);

	BookmarkVO selectBookmark(@Param("sId") String sId, @Param("class_idx") int class_idx);

}
