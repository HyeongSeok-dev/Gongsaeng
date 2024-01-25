package kr.co.gongsaeng.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BankMapper {

	//아이디조회
	String selectId(Map<String, Object> map);

	//사용자 토큰 정보 조회
	Map<String, String> selectBankUserInfo(String id);

	//엑세스 토큰 저장
	void insertAccessToken(Map<String, Object> map);

	//엑세스 토큰 업데이트
	void updateAccessToken(Map<String, Object> map);

}
