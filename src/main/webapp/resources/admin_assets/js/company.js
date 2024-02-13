$(function() {
	//company.jsp
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".com_status").prop('checked', true);
	$("#statusAllCheck").prop('checked', true);
	$(".com_category").prop('checked', true);
	$("#categoryAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 사업체상태
	$("#statusAllCheck").change(function(){
		$(".com_status").prop('checked', this.checked);
		tableFilter();
	});	
	// 사업체카테고리
	$("#categoryAllCheck").change(function(){
		$(".com_category").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 사업체상태
	$(".com_status").change(function(){
		console.log("사업체상태체크박스");
		$("#statusAllCheck").prop('checked', false);
		tableFilter();
	});
	// 사업체카테고리
	$(".com_category").change(function(){
		console.log("사업체상태체크박스");
		$("#categoryAllCheck").prop('checked', false);
		tableFilter();
	});
	
	//======================================================
	// company_refud.jsp
	// 천단위 쉼표 함수
	function numberWithCommas(x) {
   	 return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	// 소숫점 1의 자리 반올림
    function roundToFirstDecimalPlace(num) {
    	return Math.round(num);
//    	return Math.round(num * 10) / 10;
	}

	// foreach 반복문의 클래스에 적용
	 $(".regPay, .payFee, .payRef").each(function() {
        var num = $(this).text();
        var roundedNum = roundToFirstDecimalPlace(parseFloat(num));
        var commaNum = numberWithCommas(roundedNum);
        $(this).text(commaNum);
    });
    
	
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".pay_cal_staus").prop('checked', true);
	$("#calStausAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 사업체상태
	$("#calStausAllCheck").change(function(){
		$(".pay_cal_staus").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 사업체상태
	$(".pay_cal_staus").change(function(){
		console.log("사업체상태체크박스");
		$("#calStausAllCheck").prop('checked', false);
		tableFilter();
	});
	
});