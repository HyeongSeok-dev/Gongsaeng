package kr.co.gongsaeng.vo;

import lombok.Data;

@Data
public class CompanyGenderRatioVO {
    private String memberGender; // 성별
    private int count; // 해당 성별의 회원 수
    private int member_gender;
    private int pay_status;
    private String member_id;
    private String com_idx;
}
