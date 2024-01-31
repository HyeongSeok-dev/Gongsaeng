$(function() {
	//member.js
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$("#statusAllCheck").prop('checked', true);
	$(".member_status").prop('checked', true);
	
	$("#statusAllCheck").change(function(){
		$(".member_status").prop('checked', this.checked);
	});	
	
	
});