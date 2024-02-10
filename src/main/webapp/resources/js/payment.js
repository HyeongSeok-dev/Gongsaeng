$(document).ready(function() {
	
	//보유중인 페이금액
	//배열에서 첫 번째 요소의 값을 가져오기
	var useablePay = parseInt($("#useablePay").text().trim().replace(/,/g, ''));
	//최종결제금액
	var payment = parseInt($("#reservationPrice") .text().replace(/,/g, '')); //-------->쿠폰사용금액 빼야함

	//===================================================================================
 	// 현재보유포인트에 따른 전액사용 선택시
	$("#useAllPoint").on("click", function() {
		if(useablePay <= 0) {
			alert("사용가능한 포인트가 없습니다.");
		} else {
			console.log("선택함");
			console.log("useablePay : " + useablePay.toString());
			//결제금액이 보유페이보다 적음
//			if(useablePay > parseInt($("#totalPayment_text").text().trim().replace(/,/g, ''))){
			if(useablePay > payment){
					console.log("결제금액보다 페이가 더 많음");
					$(".pay_to_use").val(parseInt($("#totalPayment_text").text().trim().replace(/,/g, '')).toLocaleString()); //사용페이에 결제금액 만큼들어감
//					var point = useablePoint - parseInt($("#totalPayment_text").text().trim().replace(/,/g, ''));
//					$("#useablePoint").text(point.toLocaleString()); //사용가능 포인트에 보유포인트 - 총결제금액
			}else{
				console.log("결제금액보다 페이가 더 적음");
				console.log("useablePay : " + useablePay.toString());
				$(".pay_to_use").val(useablePay.toLocaleString()); //사용페이에 페이보유잔액이 들어감
			}
		}	
	});

	//===================================================================================
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
	//은행api호출함수
	function agreePage() {
	    alert('계좌를 등록해주세요.');
	    window.open('payment/charge/agree', '_blank', 'width=600, height=800 ');
	}

	//==============================================================================
	//0페이사용하기 버튼 클릭시
	$("#chargePay").click(function() {
		console.log("사용하기버튼 함수작동");
		console.log("시퀀스 번호 : " + $("#user_seq_no"));
		    // 계좌등록일이 없으면 계좌 등록하는 함수 호출
		    if ($("#account_date") == null) {
		        agreePage();
		    } else {
		        // 포인트가 없으면 충전하는 페이지로 이동
		        if (useablePay == 0) {
		            alert('포인트를 충전해주세요.');
	    			window.open('payment/charge/main', '_blank', 'width=600, height=800 ');
		        } else {
				//포인트가 있으면 포인트 입력 유도
		            alert("사용할 포인트를 입력해주세요");
		            $(useablePay).focus();
		        }
		    }
		});

	//==============================================================================
	//'결제하기'버튼 클릭시
	$("#payBtn").on("click",function() {
		
		// 라디오버튼에 따른 결제팝업 변경
		
		var IMP = window.IMP;
		IMP.init('imp22106057');
		
		if($('input[name="pay_method"]:checked').length == 0) { //결제수단에서 라디오버튼 미 선택시 경고창 출력
                alert("결제수단을 선택해주세요.");
                return;
            }else if (!$('#payAgree').is(':checked')) {   // 결제이용 약관 체크박스가 체크되지 않았을 때 경고창 출력
              alert("결제이용 약관을 동의해주세요.");
              return;
            } else if (!$('#payBackAgree').is(':checked')) { // 환불정책 약관 체크박스가 체크되지 않았을 때 경고창 출력
              alert("환불정책 약관을 동의해주세요.");
              return;
            //===========================================================================
			} else if($('input[type=radio][value="1"]').is(':checked')) {//카카오페이
					// V1방법 카카오페이 연동
					console.log("kakao");
					IMP.request_pay({
					  pg: "kakaopay",
					  merchant_uid: $("#class_idx").val(), //상품번호(클래스아이디)
					  name: "공생 클래스 수강 - " + $("#class_title").val() +" "+ $("#res_visit_date").val() +
					  	"" + $("#res_visit_time") + "부터시작" + $("#res_member_count").val() + "명",
//					  amount: parseInt($("#payment").text().trim().replace(/,/g, '')), //할인된금액(최종결제금액)
					  amount: $("#payment"), //할인된금액(최종결제금액)
					  buyer_email: $("#member_email").val(), //생략가능(pg사에 따라 다름)
					  buyer_name: $("#member_name").val() //생략가능(pg사에 따라 다름)
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
			
			} else if($('input[type=radio][value="2"]').is(':checked')) { //카드결제
				console.log("dd");
				//이니시스
				IMP.request_pay({
				    pg : 'html5_inicis.INIBillTst', //테스트 시 html5_inicis.INIpayTest 기재 
				    pay_method : 'card',
				    merchant_uid: $("#class_idx").val(), //상점에서 생성한 고유 주문번호
				     name: "공생 클래스 수강 - " + $("#class_title").val() +" "+ $("#res_visit_date").val() +
					  	"" + $("#res_visit_time") + "부터시작" + $("#res_member_count").val() + "명",
//				    amount : $("#payment"),
//				    buyer_email: $("#member_email").val(), //생략가능(pg사에 따라 다름)
//				    buyer_name: $("#member_name").val(), //생략가능(pg사에 따라 다름)
//				    buyer_tel : $("#member_phone").val(),   //필수 파라미터 입니다.
					//========================================================
//					merchant_uid: "order_no_0001", //상점에서 생성한 고유 주문번호
//				    name : '주문명:결제테스트',
				    amount : 1004,
////				    buyer_email : 'test@portone.io',
////				    buyer_name : '구매자이름',
////				    buyer_tel : '010-1234-5678',   //필수 파라미터 입니다.
				}, function(rsp) { // callback 로직
				console.log(rsp.card_name);
	//				    $("#pay_card_co").val(rsp.vbank_date.card_name); // 카드사정보 파라미터로 저장
					if (rsp.success) {   
					    console.log("imp_uid : " + rsp.imp_uid);
					      $("#pay_num").val(rsp.imp_uid); //폼에 결제번호 넣기
					      $("#pay_card_co").val(rsp.card_name);
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
			} else if($("#mobilePhonePayment").is(':checked')) { // 휴대폰 결제
					console.log("폰결제");
					IMP.request_pay(
					  {
					    pg: "danal",
					    pay_method: "phone",
					    merchant_uid: $("#class_idx").val(), //상점에서 생성한 고유 주문번호
				        name: "공생 클래스 수강 - " + $("#class_title").val() +" "+ $("#res_visit_date").val() +
					  	 "" + $("#res_visit_time") + "부터시작" + $("#res_member_count").val() + "명",
				        amount : $("#payment"),
				        buyer_email: $("#member_email").val(), //생략가능(pg사에 따라 다름)
				        buyer_name: $("#member_name").val(), //생략가능(pg사에 따라 다름)
						//===================================================
//						merchant_uid: "order_no_0001", // 상점에서 생성한 고유 주문번호
//					    name: "주문명:결제테스트",
//					    amount: 1004,
//					    buyer_email: "test@portone.io",
//					    buyer_name: "구매자이름",
//					    buyer_tel: "010-1234-5678",
//					    buyer_addr: "서울특별시 강남구 삼성동",
//					    buyer_postcode: "123-456",
					  },
					  function (rsp) {
					    if (rsp.success) {   
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
			} //결제수단선택
			
	}); //payBtn
	
	

}); //jquery문 전체