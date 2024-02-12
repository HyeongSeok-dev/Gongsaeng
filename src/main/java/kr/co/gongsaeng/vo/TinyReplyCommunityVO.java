package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class TinyReplyCommunityVO {
	private int reply_idx;
	private int board_idx;
	private String member_id;
	private String reply_content;
	private int reply_re_ref;
	private int reply_re_lev;
	private int reply_re_seq;
	private String reply_date;
}
