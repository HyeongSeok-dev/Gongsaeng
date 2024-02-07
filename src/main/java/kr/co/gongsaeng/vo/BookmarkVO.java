package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class BookmarkVO {
	private int bookmark_idx;
	private String member_idx;
	private int class_idx;
	
	// 마이페이지 북마크 내역에서 쓸거
    private String com_img;
    private String com_name;

}
