package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class SearchVO {
	private int pageNum;
    private String classType;
    private String className;
    private String classMainCategory;
    private String classSubCategory;
    private String classState;
    private String classDay;
    private String classStartDate;
    private String classEndDate;
    private String classStartTime;
    private String classEndTime;
    private String minAmount;
    private String maxAmount;
    private String classOffering;
    private String sort;
    private String comIdx;
}
