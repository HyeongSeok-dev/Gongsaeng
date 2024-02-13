package kr.co.gongsaeng.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.mapper.ProductMapper;
import kr.co.gongsaeng.vo.BookmarkVO;
import kr.co.gongsaeng.vo.CartVO;
import kr.co.gongsaeng.vo.ClassVO;
import kr.co.gongsaeng.vo.CompanyVO;
import kr.co.gongsaeng.vo.PaymentVO;
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

	public CartVO findCart(int class_idx, String member_id, String res_visit_date) {
        return mapper.findCart(class_idx, member_id, res_visit_date);
        
    }

	public List<PaymentVO> getResMemberCount(int classIdx) {
		return mapper.selectResMemberCount(classIdx);
	}
	
    //장바구니 물건넣기
//    public int addToCart(int class_idx, String member_id, String res_visit_date, int res_member_count) {
//        return mapper.insertCart(class_idx, member_id, res_visit_date, res_member_count);
//    }

	public int registBookmark(String sId, int class_idx) {
		return mapper.insertBookmark(sId,class_idx);
	}

	public int removeBookmark(String sId, int class_idx) {
		return mapper.deleteBookmark(sId,class_idx);
	}




	

	public CartVO getSelectCart(String resVisitDate, String classIdx, String memberId) {
		return mapper.selectCart(resVisitDate, classIdx, memberId);
	}

	public int getUpdateResMemberCount(String memberId, String classIdx, String resVisitDate, String resVisitTime,
			int resMemberCount) {
		return mapper.updateResMemberCount(memberId, classIdx, resVisitDate, resVisitTime, resMemberCount);
		
	}

	public int registerInsertCart(String resVisitDate, String classIdx, String memberId) {
		return mapper.insertCart(resVisitDate, classIdx, memberId);
		
	}







	public Map<String, String> getIssuedCoupon(String sId, String comIdx) {
		// TODO Auto-generated method stub
		return mapper.selectIssuedCoupon(sId, comIdx);
	}

	public Map<String, String> getFollowingStatus(String sId, String comIdx) {
		// TODO Auto-generated method stub
		return mapper.selectFollowingStatus(sId, comIdx);
	}

	public int registCoupon(String sId, String comIdx) {
		// TODO Auto-generated method stub
		return mapper.insertCoupon(sId, comIdx);
	}

	public void registFollowing(String sId, String comIdx) {
		// TODO Auto-generated method stub
		mapper.insertFollowing(sId, comIdx);
	}

	public int addToCart(int class_idx, String member_id, String res_visit_date, int res_member_count, String res_visit_time) {
		return mapper.insertCartF(class_idx, member_id, res_visit_date, res_visit_time, res_member_count);
	}


	




	
}
