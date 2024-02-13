package kr.co.gongsaeng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.gongsaeng.vo.BookmarkVO;
import kr.co.gongsaeng.vo.CartVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.PaymentVO;
import kr.co.gongsaeng.vo.ReviewVO;

@Mapper
public interface ProductMapper {

	ClassVO selectClassInfo(@ Param("class_idx") int classIdx);

	CompanyVO selectCompanyInfo(ClassVO cla);

	List<ReviewVO> selectReviewInfo(ClassVO cla);

	BookmarkVO selectBookmark(@Param("sId") String sId, @Param("class_idx") int class_idx);

	CartVO findCart(@Param ("class_idx") int class_idx, @Param ("member_id") String member_id, @Param ("res_visit_date") String res_visit_date);

	List<PaymentVO> selectResMemberCount(@Param("class_idx") int classIdx);

	Map<String, String> selectIssuedCoupon(@Param("sId") String sId, @Param("comIdx") String comIdx);

	Map<String, String> selectFollowingStatus(@Param("sId") String sId, @Param("comIdx") String comIdx);

	int insertCoupon(@Param("sId") String sId, @Param("comIdx") String comIdx);

	void insertFollowing(@Param("sId") String sId, @Param("comIdx") String comIdx);
//	int insertCart(@Param("class_idx") int class_idx, 
//			@Param("member_id")String member_id, 
//			@Param("res_visit_date") String res_visit_date, 
//			@Param("res_member_count") int res_member_count);

	int insertBookmark(@Param("sId") String sId, @Param("class_idx") int class_idx);

	int deleteBookmark(@Param("sId") String sId, @Param("class_idx") int class_idx);


	int insertCart(@Param("date") String date,
					@Param("class_idx") int class_idx, 
					@Param("member_id") String member_id,
					@Param("res_visit_time")String res_visit_time, 
					@Param("res_member_count")int res_member_count);

	int insertCartF(@Param("class_idx") int class_idx, 
					@Param("member_id") String member_id, 
					@Param("res_visit_date") String res_visit_date, 
					@Param("res_visit_time") String res_visit_time, 
					@Param("res_member_count") int res_member_count);
	
	
}
