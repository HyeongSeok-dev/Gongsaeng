package kr.co.gongsaeng.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gongsaeng.handler.BankApiClient;
import kr.co.gongsaeng.mapper.BankMapper;
import kr.co.gongsaeng.vo.ResponseTokenVO;

@Service
public class BankService {

	@Autowired
	private BankApiClient bankApiClient;
	
	@Autowired
	private BankMapper bankMapper;
	
	//엑세스 토큰 발급 요청
	public ResponseTokenVO requestAccessToken(Map<String, String> authResponse) {
		return bankApiClient.requestAccessToken(authResponse);
		
	}
	
	//============================================================================
	//엑세스 토큰 저장 요청
	public void registAccessToken(Map<String, Object> map) {
		String id = bankMapper.selectId(map);

		//아이디 존재여부 판별
		if(id == null) {
			System.out.println("map" + map);
			bankMapper.insertAccessToken(map);
		}else {
			bankMapper.updateAccessToken(map);
		}
	}//requestAccessToken
	
	//============================================================================
	//토큰 관련 정보 조회 요청
	public Map<String, String> getBankUserInfo(String id){
		return bankMapper.selectBankUserInfo(id);
	}//getBankUserInfo

	//============================================================================
	//사용자 정보 조회 요청
	public Map<String, Object> requestUserInfo(Map<String, String> map){
		return bankApiClient.requestUserInfo(map);
	}
	
	//============================================================================
	//계좌 상세정보 조회 요청
	public Map<String, Object> requestAccountDetail(Map<String, String> map) {
		return bankApiClient.requestAccountDetail(map);
	}

	//============================================================================
	//출금 이체 요청
	public Map<String, Object> requestWithdraw(Map<String, String> map) {
		return bankApiClient.requestWithdraw(map);
	}

	
} //class BankService
