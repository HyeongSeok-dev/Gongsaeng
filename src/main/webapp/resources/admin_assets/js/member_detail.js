$(function() {
	//member _detail.js
	var member_phone = $("#member_phone").val();
	var member_nick = $("#member_nick").val();
	var member_email1 = $("#member_email1").val();
	var member_email2 = $("#member_email2").val();
	var member_state = $("#member_state").val();
	var fileLabel = $("#fileLabel").text();
	
	if($("#member_state").val() == 3) {
		$("#member_state").on("change", function(event){
			event.preventDefault();
		});
	}
	
	// 회원 상태변경
	$("#member_state").on("change", function(){
		if($("#member_state").val() == 3) { //탈퇴는 불가
			alert("권한이 없습니다!");
			$("#member_state").val(member_state); 
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
            var img = $("<img>").attr("src", e.target.result);
            $("#img").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });

	// 이메일 셀렉트박스 변경
	$("#selectEmail").change(function() {
		console.log("이메일");
		console.log($("#selectEmail").val() === "");
		$("#member_email2").val($("#selectEmail").val());
		console.log($("#member_email2").val() === "");
	});

	// 전화번호 숫자만/ 11자리 제한
	$("#member_phone").on("input", function () {
    	 var input = $(this).val().replace(/[^0-9]/g, "");
    	if(input.length > 11) {
	        input = input.substring(0, 11);
	    }
	    $(this).val(input);
	});	
	
	$("#modifyMember").on("click", function(){
		console.log(member_email1 != $("#member_email1").val());
		console.log(member_email2 != $("#member_email2").val());
		if(member_phone != $("#member_phone").val()){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			return false;
		} else if(member_nick != $("#member_nick").val()){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			return false;
		} else if(member_email1 != $("#member_email1").val() || member_email2 != $("#member_email2").val()){
			console.log("fit;");
			if($("#selectEmail").val() === "" && $("#member_email2").val() === ""){
				alert("이메일을 입력해 주세요!");
				$("#member_email2").focus();
				return false;
			} else if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			return false;
		} else if(member_state != $("#member_state").val()){
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