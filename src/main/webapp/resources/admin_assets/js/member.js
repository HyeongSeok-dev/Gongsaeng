$(function() {
	//member.js
	// 회원상태/일반회원/필터링함수
	function tableFilter(){
		
		let member_status_str = [	$("#statusAllCheck").is(":checked"),
									$("#statusNormal").is(":checked"),
									$("#statusDormantl").is(":checked"),
									$("#statusWithdraw").is(":checked")
								];
		console.log(member_status_str);

		$.ajax({
				type: "get",
				url: "memberTableFilter",
				data: {
//					member_status : $(".member_status").val(),
					member_category : $(".member_category").val(),
					member_status_str : member_status_str
				},				
				success: function(data) {
					console.log("필터링 결과");
					console.log("data : " + data);
					
					let result = "<tr>" +
									 "<td>" + 가입/탈퇴일자 + "</td>"
					                 "<td>" + 회원카테고리 + "</td>"
					                 "<td>" + 아이디 + "</td>"
					                 "<td>" + 닉네임 + "</td>"
					                 "<td>" + 회원상태 + "</td>"
					                 "<td>" + 신고받은수 + "</td>"
			            		+ "</tr>";
						
				},
				error: function(e) {
					console.log("파라미터 전송 실패");
				}
			});
	}
	
	
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".member_status").prop('checked', true);
	$("#statusAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	$("#statusAllCheck").change(function(){
		$(".member_status").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	$(".member_status").change(function(){
		console.log("회원상태체크박스");
		$("#statusAllCheck").prop('checked', false);
		tableFilter();
	});
	
	// 회원분류 변경
	$(".member_category").on("change", function(){
		console.log("회원분류드롭박스");
		tableFilter();
	});
	
	// 검색버튼 클릭시
	$("#searchBtn").on("click", function(){
		if($("#searchText").val() == ""){
			alert("검색어를 입력해 주세요!");
			return false;
		}
		return true;
	});
});