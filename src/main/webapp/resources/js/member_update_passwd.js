$(document).ready(function() {
	let isPasswd = false; //비밀번호 안전도 검사
	let isSamePasswd = false; //패스워드 일치 여부 저장할 변수

	//입력 널스트링이면 "입력하세요" 출력후 focus=======================
	$("#joinBtn").click(function() {


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


});


