package kr.co.gongsaeng.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ViewReportDetailByCompanyVO {
	private int com_idx;
	private String com_name; 
	private int class_idx;
	private int report_reason;
	private String report_content;
	private int report_status;
	private int report_category;
	private String class_title;
	private int report_idx;
	private Date report_date;
	private int report_count;
	private String member_id;
}
