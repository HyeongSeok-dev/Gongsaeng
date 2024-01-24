$(document).ready(function() {

	// 포인트 text 박스에 숫자가 입력될 때 마다 숫자에 천단위 쉼표를 찍어주는 쿼리
	$('.point_to_use').on('input', function() {
    // 숫자만 입력되도록 처리
    var input = this.value.replace(/[^0-9]/g, '');
    // 콤마 추가
    var numberWithCommas = input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    // 결과를 입력창에 표시
    this.value = numberWithCommas;
	});

	//==============================================================================
	// 페이 text 박스에 숫자가 입력될 때 마다 숫자에 천단위 쉼표를 찍어주는 쿼리
	$('.pay_to_use').on('input', function() {
    // 숫자만 입력되도록 처리
    var input = this.value.replace(/[^0-9]/g, '');
    // 콤마 추가
    var numberWithCommas = input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    // 결과를 입력창에 표시
    this.value = numberWithCommas;
	});
	
	
	//==============================================================================
	// [ 전체선택 체크박스 ] 
	$("#checkAllAgree").on("change", function() { 
		
			if($("#checkAllAgree").prop("checked")){
				$("input[type=checkbox]").prop("checked", true);
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
	});
	
	//==============================================================================
	//'결제하기'버튼 클릭시
	$("#payBtn").on("click",function(e) {
		
		//결제이용약관 필수처리
    	if (!$('#payAgree').is(':checked')) {
        	alert('결제이용 약관을 동의해주세요');
	        e.preventDefault();
        	return; 
   		 }
   		 
   		 //환불정책동의 필수처리
	    if (!$('#payBackAgree').is(':checked')) {
	        alert('환불정책 약관을 동의해주세요');
	        e.preventDefault();
	    }
	     
	}); //payBtn
	
	//==============================================================================
	document.getElementById('chargePay').addEventListener('click', function(e) {
	//충전하기 누르면 취소된다는 경고후 페이지 이동===========================
//    e.preventDefault(); // 버튼의 기본 동작을 취소합니다.
//    
//    var userConfirmed = confirm('결제가 취소되고 0페이충전화면으로 이동합니다.');
//    
//    // 사용자가 확인 버튼을 눌렀는지 확인합니다.
//    if (userConfirmed) {
//        window.location.href = 'charge';
//    }

	//충전하기 누르면 계좌인증 함수 작동======================================
	   	e.preventDefault(); // 버튼의 기본 동작을 취소합니다.
	
	    var userConfirmed = confirm('계좌를 인증해주세요');
	    
	    if (userConfirmed) {
	        authAccount();
	    }
	});
	//==============================================================================
	//계좌인증
	function authAccount() {
		// 새 창을 사용하여 사용자 인증 페이지 요청
		let requestUri = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
							+ "response_type=code"
							+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
							+ "&redirect_uri=http://localhost:8081/mvc_board/callback"
							+ "&scope=login inquiry transfer"
							+ "&state=${sessionScope.state}"
							+ "&auth_type=0";
		window.open(requestUri, "authWindow", "width=600, height=800");
	}
	




}); //jquery문 전체