$(document).ready(function() {

	let isDuplicateNick = false; //닉네임 중복 여부 저장할 변수
	let isSamePasswd = false; //패스워드 일치 여부 저장할 변수
	let isEmail = false; //이메일 중복확인
	let initPhoneNumber = $("#u_phone").val();
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

	$("#modifyBtn").click(function() {

		let email2 = $("#u_email2").val();
		let email3 = $("#customEmail").val();
		if (initPhoneNumber == $("#u_phone").val()) {
			phone = true;
		}
		if ($("#passwd").val() == "") {
			isSamePasswd = true;
			isPasswd = true;
		}
		//비밀번호 불일치할 경우
		if (!isSamePasswd) {
			alert("비밀번호가 불일치 합니다.");
			return false;
		}

		//비밀번호 안전도가 맞지 않을 경우
		if (!isPasswd) {
			alert("사용할수 없는 비밀번호 입니다.");
			return false;
		}

		//닉네임 중복일 경우
		if (isDuplicateNick) {
			alert("닉네임 중복입니다.");
			return false;
		}

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

		//전화번호 양식 맞지 않을경우
		if (!phone) {
			alert("전화번호가 양식에 맞지 않습니다.");
			return false;
		}

		//이메일 중복일 경우
		if (isEmail) {
			alert("이메일이 중복되었습니다.");
			return false;
		}

		if (!phoneAuthSuccess) {
			alert("전화번호가 인증되지 않았습니다.");
			return false;
		}


	});

	$('.profileImg').on('change', function(e) {
		var file = e.target.files[0];

		if (file) {
			var reader = new FileReader(); // FileReader 객체 사용
			reader.onload = function(e) {
				$('.img-thumbnail').attr('src', e.target.result); // 미리보기 이미지 경로 업데이트
			};
			reader.readAsDataURL(file); // 이미지 파일 읽기
		}
	});
	function checkPasswdMatch() {
		let passwd = document.getElementById('passwd').value;
		let passwd2 = document.getElementById('passwd2').value;

		if (passwd2.length > 0) { // 'passwd2' 필드에 값이 있을 때만 비교를 진행
			if (passwd === passwd2) {
				document.getElementById('checkPasswd2Result').innerHTML = "비밀번호 일치";
				document.getElementById('checkPasswd2Result').style.color = "blue";
				isSamePasswd = true;
			} else {
				document.getElementById('checkPasswd2Result').innerHTML = "비밀번호 불일치";
				document.getElementById('checkPasswd2Result').style.color = "red";
				isSamePasswd = false;
			}
		} else { // 'passwd2' 필드에 값이 없을 때는 메시지를 지웁니다.
			document.getElementById('checkPasswd2Result').innerHTML = "";
		}
	}

	// 'passwd' 입력칸에 키 입력 시 비밀번호 일치 여부 체크
	document.getElementById('passwd').addEventListener('keyup', checkPasswdMatch);
	// 'passwd2' 입력칸에 키 입력 시 비밀번호 일치 여부 체크
	document.getElementById('passwd2').addEventListener('keyup', checkPasswdMatch);

	//비밀번호검증===============================
	$("#passwd").keyup(function() {
		let passwd = $("#passwd").val();
		let msg = "";
		let color = "";

		//비밀번호 길이 검증
		// 대소문자, 숫자 ,특수문자(!@#$%)를 포함하여 8~16 입력
		let lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;

		if (!lengthRegex.exec(passwd)) { //길이체크
			msg = "대소문자, 숫자, 특문 8~16자";
			color = "red";
		} else {
			let engUpperRegex = /[A-Z]/; //대문자
			let engLowerRegex = /[a-z]/; //소문자
			let numRegex = /[\d]/; //숫자
			let specRegex = /[!@#$%]/; //특수문자

			let count = 0;

			if (engUpperRegex.exec(passwd)) { count++; }
			if (engLowerRegex.exec(passwd)) { count++; }
			if (numRegex.exec(passwd)) { count++; }
			if (specRegex.exec(passwd)) { count++; }

			switch (count) {
				case 4: msg = "안전"; color = "green"; break;
				case 3: msg = "보통"; color = "orange"; break;
				case 2: msg = "위험"; color = "pink"; break;
				case 1: case 0: msg = "사용불가능한 비밀번호"; color = "red";
			}

			if (count >= 2) { //안전,보통,위험 (사용가능)
				isPasswd = true;
			} else { //사용불가능한 비밀번호
				isPasswd = false;
			}

		}

		$("#checkPasswdResult").html(msg);
		$("#checkPasswdResult").css("color", color);

	}); //비밀번호검증

	//전화번호 길이 제한=====================================
	$("#u_phone").keyup(function() {
		let member_phone = $("#u_phone").val();
		let regex = /^\d{11}$/;

		if (!regex.test(member_phone)) {
			$("#checkPhoneResult").html("- 를 뺀 숫자 11자리 필요");
			$("#checkPhoneResult").css("color", "red");
		} else { //입력값 검증 성공시
			isvalidIdLength = true;
			$.ajax({
				url: "../member/CheckDupPhone",
				data: {
					member_phone: member_phone
				},
				dataType: "json",
				success: function(checkDuplicateResult) {
					if (checkDuplicateResult) { //중복
						$("#checkPhoneResult").html("사용 불가능한 전화번호입니다.");
						$("#checkPhoneResult").css("color", "red");
					} else { //중복X
						$("#checkPhoneResult").html("사용가능한 전화번호입니다.");
						$("#checkPhoneResult").css("color", "blue");
						phone = true;
					}
				} //success
			}); //ajax

		}

	});



	$("#auth_phone_number_btn").click(function() {
		let member_phone = $("#u_phone").val();
		if (phone != true) {
			alert('사용할 수 없는 전화번호입니다.')
		} else {

			$.ajax({
				type: "GET",
				url: "../member/phoneAuthRequest?member_phone=" + member_phone,
				cache: false,
				success: function(data) {
					if (data == "true") {
						alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호를 확인해 주세요.");
					} else {
						alert("인증번호 발송이 실패하였습니다.\n전화번호를 다시 확인해 주세요 ");
					}
				}
			})
		}
	});

	$("#phone_auth_input").keyup(function() {
		let phone_auth_code = $("#phone_auth_input").val();
		$.ajax({
			type: "GET",
			url: "../member/phoneAuthIsCorrect?phone_auth_code=" + phone_auth_code,
			cache: false,
			success: function(data) {
				if (data == "true") {
					$("#phoneAuthResult").html("인증 성공");
					$("#phoneAuthResult").css("color", "blue");
					phoneAuthSuccess = true;
				} else {
					$("#phoneAuthResult").html("인증번호를 잘못 입력하셨습니다.");
					$("#phoneAuthResult").css("color", "red");
					phoneAuthSuccess = false;
				}
			}
		})
	});

	//닉네임 중복확인==========================================
	$("#u_nick").blur(function() {

		//닉네임 입력값 가져오기
		let member_nick = $("#u_nick").val();

		$.ajax({
			url: "../member/CheckDupNick",
			data: {
				member_nick: member_nick
			},
			dataType: "json",
			success: function(checkDuplicateResult) {
				if (checkDuplicateResult) { //중복
					$("#checkNickResult").html("이미 사용중인 닉네임");
					$("#checkNickResult").css("color", "red");
					isDuplicateNick = true;
				} else { //중복X
					$("#checkNickResult").html("사용 가능한 닉네임");
					$("#checkNickResult").css("color", "blue");
					isDuplicateNick = false;
				}
			} //success
		}); //ajax

	}); //닉네임 중복확인

	//이메일 중복확인==========================================
	$(".mail").blur(function() {

		let member_email1 = $("#u_email").val();
		let customEmail = $("#customEmail").val();
		let member_email2;

		if (customEmail == null || customEmail == "") {
			member_email2 = $("#u_email2").val();
		} else {
			member_email2 = customEmail;
		}
		console.log("member_email1" + member_email1);
		console.log("member_email2" + member_email2);
		$.ajax({
			url: "../member/CheckDupEmail",
			data: {
				member_email1: member_email1,
				member_email2: member_email2
			},
			dataType: "json",
			success: function(checkDuplicateResult) {
				if (checkDuplicateResult) { //중복
					isEmail = true;
				} else { //중복X
					isEmail = false;
				}
			} //success
		}); //ajax

	});


});

function withdraw() {
	let inputPasswd = $("#passwd").val();
	if (inputPasswd == "") {
		alert("회원탈퇴를 위해 비밀번호를 입력하세요")
	} else if (confirm("회원탈퇴시 30일간 같은 정보로 회원가입이 불가능합니다. 탈퇴 하시겠습니까?")) {
		$.ajax({
			type : "POST",
			url: "withdraw",
			data: {
				member_passwd: inputPasswd,
			},
			dataType: "json",
			success: function(result) {
				if (result == false) {
					alert('비밀번호를 잘못 입력하셨습니다.');
				} else if (result == 'fail') { 
					alert('회원탈퇴에 실패하였습니다. 다시 시도해주세요');
				} else if (result == true) {
					alert('회원탈퇴 되었습니다. 그동안 이용해주셔서 감사합니다.');
					window.location.href='../';
				}
			} //success
		}); //ajax
	}
}
