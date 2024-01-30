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
		
		// 라디오버튼에 따른 결제팝업 변경
		
		var IMP = window.IMP;
		IMP.init('imp22106057');
		
		if($('input[name="pay_method"]:checked').length == 0) { //결제수단에서 라디오버튼 미 선택시 경고창 출력
				alert("결제수단을 선택해주세요.");
				return;
			} else if($('input[type=radio][value="1"]').is(':checked')) {//카카오페이
					// V1방법 카카오페이 연동
					console.log("kakao");
					IMP.request_pay({
					  pg: "kakaopay",
					  merchant_uid: $("#res_num").val(), //주문번호
					  name: "공생 클래스 수강 - " + $("#class_title").val() +" "+ $("#class_ctart_date").val() +
					  	"" + $("#class_start_time") + "부터시작" + $("#res_person").val() + "명",
					  amount: parseInt($("#totalPayment_text").text().trim().replace(/,/g, '')),
					  buyer_email: $("#member_email").val(),
					  buyer_name: $("#member_name").val(),
					}, function (rsp) { 
						console.log("function");
						console.log("rsp : " + rsp);
						console.log("status : " + rsp.status);
					    if (rsp.success) {
					      // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
					      // jQuery로 HTTP 요청
						console.log("imp_uid : " + rsp.imp_uid);
					      $("#pay_num").val(rsp.imp_uid); //폼에 결제번호 넣기
					      jQuery.ajax({
					        url: "paymentPro", 
					        method: "post",
					        dataType: "json",
					        data: $("form").serialize(), 
					      }).done(function (data) {
					        // 가맹점 서버 결제 API 성공시 로직
					        console.log("성공 : " + data);
					        if(data) {
					        	window.location.href="payment/info?res_num=" + rsp.merchant_uid
											+ "&discountPoint=" + discountPoint 
											+ "&earnedPoints=" + earnedPoints
											+ "&finalTotalPayment=" + totalPayment;
							} else {
								console.log("결제내역 데이터베이스 입력 실패")
							}
					      });
					  }
					});
	//		} else if($('input[type=radio][value="2"]').is(':checked')) { // 네이버페이
			
//			} else if($('input[type=radio][value="2"]').is(':checked')) { //카드결제
//				console.log("dd");
//				//이니시스
//				IMP.request_pay({
//				    pg : 'html5_inicis.INIBillTst', //테스트 시 html5_inicis.INIpayTest 기재 
//				    pay_method : 'card',
//				    merchant_uid: $("#res_num").val(), //상점에서 생성한 고유 주문번호
//				    name : "찜콩테이블 예약 - " + $("#com_name").val() +" "+ $("#res_person").val() + "명",
//				    amount : parseInt($("#totalPayment_text").text().trim().replace(/,/g, '')),
//				    buyer_email : $("#user_email").val(),
//				    buyer_name : $("#user_name").val(),
//				    buyer_tel : $("#user_phone").val(),   //필수 파라미터 입니다.
//				}, function(rsp) { // callback 로직
//				console.log(rsp.card_name);
//	//				    $("#pay_card_co").val(rsp.vbank_date.card_name); // 카드사정보 파라미터로 저장
//					if (rsp.success) {   
//					    console.log("imp_uid : " + rsp.imp_uid);
//					      $("#pay_num").val(rsp.imp_uid); //폼에 결제번호 넣기
//					      $("#pay_card_co").val(rsp.card_name);
//					      jQuery.ajax({
//					        url: "paymentPro", 
//					        method: "post",
//					        dataType: "json",
//					        data: $("form").serialize(), 
//					      }).done(function (data) {
//					        // 가맹점 서버 결제 API 성공시 로직
//					        console.log("성공 : " + data);
//					        if(data) {
//					        	window.location.href="payment/info?res_num=" + rsp.merchant_uid
//											+ "&discountPoint=" + discountPoint 
//											+ "&earnedPoints=" + earnedPoints
//											+ "&finalTotalPayment=" + totalPayment;
//							} else {
//								console.log("결제내역 데이터베이스 입력 실패")
//							}
//						});
//					}
//				});
//			} else if($("#mobilePhonePayment").is(':checked')) { // 휴대폰 결제
//					console.log("폰결제");
//					IMP.request_pay(
//					  {
//					    pg: "danal",
//					    pay_method: "phone",
//					    merchant_uid: $("#res_num").val(), // 상점에서 생성한 고유 주문번호
//					    name: "찜콩테이블 예약 - " + $("#com_name").val() +" "+ $("#res_person").val() + "명",
//					    amount: parseInt($("#totalPayment_text").text().trim().replace(/,/g, '')),
//					    buyer_email: $("#user_email").val(),
//					  	buyer_name: $("#user_name").val(),
//					  },
//					  function (rsp) {
//					    if (rsp.success) {   
//					    console.log("imp_uid : " + rsp.imp_uid);
//					      $("#pay_num").val(rsp.imp_uid); //폼에 결제번호 넣기
//					      jQuery.ajax({
//					        url: "paymentPro", 
//					        method: "post",
//					        dataType: "json",
//					        data: $("form").serialize(), 
//					      }).done(function (data) {
//					        // 가맹점 서버 결제 API 성공시 로직
//					        console.log("성공 : " + data);
//					        if(data) {
//					        	window.location.href="payment/info?res_num=" + rsp.merchant_uid
//											+ "&discountPoint=" + discountPoint 
//											+ "&earnedPoints=" + earnedPoints
//											+ "&finalTotalPayment=" + totalPayment;
//							} else {
//								console.log("결제내역 데이터베이스 입력 실패")
//							}
//						});
//					}
//				});
			} //결제수단선택
			
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
        	return; 
	    }
         
	}); //payBtn
	
}); //jquery문 전체