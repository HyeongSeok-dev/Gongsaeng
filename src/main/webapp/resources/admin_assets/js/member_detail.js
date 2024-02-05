$(function() {
	//member _detail.js
	var member_nick = $("#member_nick").val();
	var member_email1 = $("#member_email1").val();
	var member_email2 = $("#member_email2").val();
	var member_status = $("#member_status").val();
	var fileLabel = $("#fileLabel").text();
	
	let isEmail = false; //이메일 중복확인
	let isDuplicateNick = false; //닉네임 중복 여부 저장할 변수
		
	// 회원상태가 탈퇴이면 변경불가능
	if($("#member_status").val() == 3) {
		$("#member_status").on("change", function(event){
			event.preventDefault();
		});
	}
	
	// 회원 상태변경
	$("#member_status").on("change", function(){
		if($("#member_status").val() == 3) { //탈퇴는 불가
			alert("권한이 없습니다!");
			$("#member_status").val(member_status); 
		}
	});
	
	// 파일선택버튼
	$("#uploadFileBtn").click(function() {
		console.log("파일선택");
        $("#file").click();
    });

	// 파일이 변경되었을때
    $("#file").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#fileLabel").text(fileName ? fileName : fileLabel);
    });
	
	//사진 미리보기
    $("#file").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("img-circle img-thumbnail");
            $("#img").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });

	// 닉네임 중복확인
	$("#member_nick").on("keyup", function(){
		let member_nick = $("#member_nick").val();
		$.ajax({
			url: "/gongsaeng/member/CheckDupNick",
			data: {
				member_nick: member_nick
			},
			dataType: "json",
			success: function(checkDuplicateResult) {
				if (checkDuplicateResult) { //중복
					$("#member_nick").css("border", "1px solid red");
					$("#nickGaid").html("이미 사용중인 닉네임");
					$("#nickGaid").css("color", "red");
					isDuplicateNick = true;
				} else { //중복X
					$("#member_nick").css("border", "1px solid blue");
					$("#nickGaid").html("사용 가능한 닉네임");
					$("#nickGaid").css("color", "blue");
					isDuplicateNick = false;
				}
			} //success
		}); //ajax

	});

	// 이메일 셀렉트박스 변경
	$("#selectEmail").change(function() {
		$("#member_email2").val($("#selectEmail").val());
	});
	
	$(".member_email").blur(function(){
		let member_email1 = $("#member_email1").val();
		let member_email2 = $("#member_email1").val();

		$.ajax({
			url: "/gongsaeng/member/CheckDupEmail",
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

//	// 전화번호 숫자만/ 11자리 제한
//	$("#member_phone").on("input", function () {
//    	 var input = $(this).val().replace(/[^0-9]/g, "");
//    	if(input.length > 11) {
//	        input = input.substring(0, 11);
//	    }
//	    $(this).val(input);
//	});
//	// 전화번호 중복확인
//	$("#member_phone").keyup(function() {	
//			let member_phone = $("#member_phone").val();
//			$.ajax({
//				url: "/gongsaeng/member/CheckDupPhone",
//				data: {
//					member_phone: member_phone
//				},
//				dataType: "json",
//				success: function(checkDuplicateResult) {
//					if (checkDuplicateResult) { //중복
//						$("#member_phone").css("border", "1px solid red");
//						$("#phoneGaid").html("사용 불가능한 전화번호입니다.");
//						$("#phoneGaid").css("color", "red");
//					} else { //중복X
//						$("#member_phone").css("border", "1px solid blue");
//						$("#phoneGaid").html("사용가능한 전화번호입니다.");
//						$("#phoneGaid").css("color", "blue");
//					}
//				} //success
//			}); //ajax
//	});
	
	// 반장신청 승인
	$("#approval").on("click", function() {
		console.log("승인");
		if(confirm("반장 가입을 승인하시겠습니까?")){
			$.ajax({
				url: "companyApproval",
				data: {
					member_id: $("#member_id").val()
				},
				dataType: "json",
				success: function(result) {
					if (result) { 
						alert("승인완료");
						location.reload();
					} else { 
						alert("승인실패");
					}
				} //success
			}); //ajax
		}
	});

	// 반장신청 거부
	$("#rejection").on("click", function() {
		console.log("거부");
		if(confirm("반장 가입을 거부하시겠습니까?")){
			$.ajax({
					url: "companyRejection",
					data: {
						member_id: $("#member_id").val()
					},
					dataType: "json",
					success: function(result) {
						if (result) { 
							alert("거부완료");
							location.reload();
						} else { 
							alert("거부실패");
						}
					} //success
				}); //ajax
		}
	});


	// 변경저장버튼을 눌렀을 때
	$("#modifyMember").on("click", function(){
		
		if(member_nick != $("#member_nick").val()){
			if (isDuplicateNick) {
			alert("닉네임 중복입니다.");
			return false;
			} else if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			return false;
		} else if(member_email1 != $("#member_email1").val() || member_email2 != $("#member_email2").val()){
			if (isEmail) {
			alert("이메일이 중복되었습니다.");
			return false;
			
			} else if($("#selectEmail").val() === "" && $("#member_email2").val() === ""){
				alert("이메일을 입력해 주세요!");
				$("#member_email2").focus();
				return false;
			
			} else if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			
			return false;
		} else if(member_status != $("#member_status").val()){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			return false;
		} else {
			alert("수정할 내용이 없습니다");
			return false;
		}
		
	});
});