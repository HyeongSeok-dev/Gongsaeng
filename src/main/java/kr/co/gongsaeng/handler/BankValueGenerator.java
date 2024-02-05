package kr.co.gongsaeng.handler;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

//핀테크 요청 작업에 사용할 다양한 값을 생성하는 클래스
@Component
public class BankValueGenerator {
	@Value("${cntr_num}")
	private String cntr_num;
	
	//거래 고유번호 자동 생성할 메서드 정의
	public String getBankTranId() {
		String bank_tran_id = "";
		
		//리턴받은 난수 대문자로 변환
		bank_tran_id = cntr_num + "U" + GenerateRandomCode.getRandomCode(9).toUpperCase();
		
		return bank_tran_id;
	}
	
	//작업요청일시 자동 생성할 메서드 정의
	public String getTranDTime() {
		
		// 현재 시스템의 날짜 및 시각 정보 가져오기
		LocalDateTime localDateTime = LocalDateTime.now();
		
		// DateTimeFormatter 클래스의 ofPattern() 메서드 활용하여 표시할 날짜 포맷 지정
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		
		// LocalDateTime 객체에 포맷을 적용하여 문자열로 리턴되는 날짜 및 시각 정보 리턴
		return localDateTime.format(dateTimeFormatter);

	}
	
}
