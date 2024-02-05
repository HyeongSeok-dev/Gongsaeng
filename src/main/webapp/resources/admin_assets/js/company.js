$(function() {
	//company.jsp
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".com_status").prop('checked', true);
	$("#statusAllCheck").prop('checked', true);
	$(".com_category").prop('checked', true);
	$("#categoryAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 사업체상태
	$("#statusAllCheck").change(function(){
		$(".com_status").prop('checked', this.checked);
		tableFilter();
	});	
	// 사업체카테고리
	$("#categoryAllCheck").change(function(){
		$(".com_category").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 사업체상태
	$(".com_status").change(function(){
		console.log("사업체상태체크박스");
		$("#statusAllCheck").prop('checked', false);
		tableFilter();
	});
	// 사업체카테고리
	$(".com_category").change(function(){
		console.log("사업체상태체크박스");
		$("#categoryAllCheck").prop('checked', false);
		tableFilter();
	});
	
	//======================================================
	// company_refud.jsp
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".com_status").prop('checked', true);
	$("#statusAllCheck").prop('checked', true);
	$(".com_category").prop('checked', true);
	$("#categoryAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 사업체상태
	$("#statusAllCheck").change(function(){
		$(".com_status").prop('checked', this.checked);
		tableFilter();
	});	
	// 사업체카테고리
	$("#categoryAllCheck").change(function(){
		$(".com_category").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 사업체상태
	$(".com_status").change(function(){
		console.log("사업체상태체크박스");
		$("#statusAllCheck").prop('checked', false);
		tableFilter();
	});
	// 사업체카테고리
	$(".com_category").change(function(){
		console.log("사업체상태체크박스");
		$("#categoryAllCheck").prop('checked', false);
		tableFilter();
	});
	
});