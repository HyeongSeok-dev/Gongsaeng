$(function() {
	//company _detail.js
	var com_status = $("#com_statusSelect").val();
	var com_post_code = $("#postCode").val();
	var com_address1 = $("#com_address1").val();
	var com_address2 = $("#com_address2").val();
	var fileLabel = $("#fileLabel").text();
		
	// 사업체상태가 폐업이면 변경불가능
	if($("#com_statusHidden").val() == 3) {
		$("#com_statusSelect").on("change", function(event){
			event.preventDefault();
		});
		$("#modifyCom").prop("disabled",false);
	}
	
	
	// 파일선택버튼
	$("#uploadFileBtn").click(function() {
		console.log("파일선택");
        $("#file1").click();
    });

	// 파일이 변경되었을때
    $("#file1").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#fileLabel").text(fileName ? fileName : fileLabel);
    });
	
	//사진 미리보기
    $("#file1").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("img-circle img-thumbnail");
            $("#img").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });
    
	// 변경저장버튼을 눌렀을 때
	$("#modifyCom").on("click", function(){
		
		if(com_status != $("#com_statusSelect").val()){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}else {
				return false;
			}
		} else if(com_post_code != $("#postCode").val() || com_address1 != $("#com_address1").val()
					|| com_address2 != $("#com_address2").val()){
			if($("#com_address2").val() === ""){
				alert("나머지 주소를 입력해 주세요!");
				$("#com_address2").focus();
				return false;
			} else if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			}
			
			return false;
		} else if($("#fileLabel").text() != "파일명" || $("#fileLabel").text() != fileLabel) {
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else {
			alert("수정할 내용이 없습니다");
			return false;
		}
		
	});
	
	// 카카오 주소 api
	$("#btnSearchAddress").on("click",function() {
			new daum.Postcode({
				// 주소검색 창에서 주소 검색 후 검색된 주소를 클릭하면
				// oncomplete: 뒤의 익명함수가 실행(호출)됨 => callback(콜백) 함수라고 함
		        oncomplete: function(data) {
		        	// 클릭(선택)된 주소에 대한 정보(객체)가 익명함수 파라미터 data 에 전달됨
					// => data.xxx 형식으로 각 주소 정보에 접근
					// 1) 우편번호(zonecode) 가져와서 우편번호 항목(postCode)에 출력
					document.comModifyPro.postCode.value = data.zonecode; 
					
					// 2) 기본주소(address) 가져와서 기본주소 항목(address1)에 출력
// 					document.joinForm.address1.value = data.address;
					let address = data.address;
					
					// 만약, 건물명(buildingName)이 존재(널스트링이 아님)할 경우
					// 기본주소 뒤에 건물명을 결합
					if(data.buildingName != "") {
						address += " (" + data.buildingName + ")";
					}
					
					$("#com_address1").val(address);
					
					// 3) 상세주소 항목(address2)에 포커스(커서) 요청
					$("#com_address2").focus();
		        }
		    }).open();
		});
	
});

