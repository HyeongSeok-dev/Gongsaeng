$(document).ready(function() {
	//이메일 직접입력 선택시 
	$('#u_email2').change(function() {
		if ($(this).val() == 'custom') {
			$('#customEmail').prop('disabled', false);
			$('#customEmail').show();
			$('#customEmailSelectBox').html($('#u_email2').detach());  // 셀렉트 박스를 오른쪽 칼럼으로 이동
		} else {
			$('#customEmail').prop('disabled', true);
			$('#customEmail').hide();
			$('#emailSelectBox').html($('#u_email2').detach());  // 셀렉트 박스를 원래 위치로 이동
		}
	});


	//입력 널스트링이면 "입력하세요" 출력후 focus=======================
	$("button").click(function() {
		
		let email2 = $("#u_email2").val();
		let email3 = $("#customEmail").val();

		if (email2 == "") {
			alert('이메일을 선택해 주세요');
			document.getElementById('u_email2').focus();
			return false;
		}

		if (email2 === 'custom' && !email3) {
			console.log(email2)
			console.log(email3)
			alert('이메일을 입력해주세요');
			document.getElementById('customEmail').focus();
			return false;
		}

	});


});
