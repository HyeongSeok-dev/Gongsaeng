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

	//생일 선택시 오늘이후 날짜 선택 막아놓음
	window.onload = function() {
		var today = new Date();
		var dd = String(today.getDate()).padStart(2, '0');
		var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
		var yyyy = today.getFullYear();

		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("com_birth").max = today;
	}


	let phone = false; //전화번호 양식 검사
	let phoneAuthNumber = "";
	let phoneAuthSuccess = false;
	let isPasswd = false; //비밀번호 안전도 검사
	let isvalidIdLength = false; //아이디 양식검사
	let isDuplicateId = false; //아이디 중복 여부 저장할 변수
	let isDuplicateNick = false; //닉네임 중복 여부 저장할 변수
	let isSamePasswd = false; //패스워드 일치 여부 저장할 변수
	let isEmail = false; //이메일 중복확인

	//입력 널스트링이면 "입력하세요" 출력후 focus=======================
	$("#joinBtn").click(function() {

		let email2 = $("#u_email2").val();
		let email3 = $("#customEmail").val();
		//		아이디가 양식에 맞지 않을 경우
		if (!isvalidIdLength) {
			alert("아이디가 양식에 맞지 않습니다.");
			return false;
		}
		//아이디 중복일 경우
		if (isDuplicateId) {
			alert("아이디 중복입니다.");
			return false;
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
			msg = "영어 대소문자, 숫자, 특수문자 조합 8~16자";
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


	//ID중복및 입력양식 검증===============================
	$("#memberId").keyup(function() {

		//아이디 입력값 가져오기
		let member_id = $("#memberId").val();

		//아이디 입력값 검증(정규표현식)
		// 요구사항 : 영문 대소문자,숫자를 포함하여 8~16자리 입력,  중복아이디 확인 (한글입력X)
		//영문 대소문자 숫자포함 8~16자리, 특수문자 한글입력불가	
		//		let regex = /^[a-zA-Z0-9]{8,16}$/;
		let regex = /^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{8,16}$/;

		if (!regex.exec(member_id)) { //입력값 검증 실패시
			$("#checkIdResult").html("영문자, 숫자 조합 8~16자리 필수");
			$("#checkIdResult").css("color", "red");
		} else { //입력값 검증 성공시
			isvalidIdLength = true;
			$.ajax({
				url: "CheckDupId",
				data: {
					member_id: member_id
				},
				dataType: "json",
				success: function(checkDuplicateResult) {
					if (checkDuplicateResult) { //중복
						$("#checkIdResult").html("이미 사용중인 아이디");
						$("#checkIdResult").css("color", "red");
						isDuplicateId = true;
					} else { //중복X
						$("#checkIdResult").html("사용 가능한 아이디");
						$("#checkIdResult").css("color", "blue");
						isDuplicateId = false;
					}
				} //success
			}); //ajax
		}

	}); //ID중복및 입력양식 검증

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
				url: "CheckDupPhone",
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
				url: "phoneAuthRequest?member_phone=" + member_phone,
				cache: false,
				success: function(data) {
					if (data = true  {
						alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호를 확인해 주세요.");
					} else {
						alert("인증번호 발송이 실패하였습니다.\n전화번호를 다시 확인해 주세요 ");
					}
				}
			})
		}
	});

	$("#phone_auth_input").keyup(function() {
		let phone_auth_code = this.val();
		$.ajax({
			type: "GET",
			url: "phoneAuthRequest?phone_auth_code=" + phone_auth_code,
			cache: false,
			success: function(data) {
				if (data = "true") { //중복
					$("#checkNickResult").html("이미 사용중인 닉네임");
					$("#checkNickResult").css("color", "red");
					isDuplicateNick = true;
				} else { //중복X
					$("#checkNickResult").html("사용 가능한 닉네임");
					$("#checkNickResult").css("color", "blue");
					isDuplicateNick = false;
				}
			}
		})
	});

	//닉네임 중복확인==========================================
	$("#u_nick").blur(function() {

		//닉네임 입력값 가져오기
		let member_nick = $("#u_nick").val();

		$.ajax({
			url: "CheckDupNick",
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
			url: "CheckDupEmail",
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


