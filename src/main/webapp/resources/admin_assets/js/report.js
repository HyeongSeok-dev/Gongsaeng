$(function() {
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".report_status").prop('checked', true);
	$("#reportStatusAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 메인카테고리
	$("#reportStatusAllCheck").change(function(){
		$(".report_status").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 메인카테고리
	$(".report_status").change(function(){
		console.log("회원상태체크박스");
		$("#reportStatusAllCheck").prop('checked', false);
		tableFilter();
	});
});