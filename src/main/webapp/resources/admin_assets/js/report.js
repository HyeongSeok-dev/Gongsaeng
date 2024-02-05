$(function() {
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".class_main_category").prop('checked', true);
	$("#mainCategoryAllCheck").prop('checked', true);
	$(".class_sub_category").prop('checked', true);
	$("#subCategoryAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 메인카테고리
	$("#mainCategoryAllCheck").change(function(){
		$(".class_main_category").prop('checked', this.checked);
		tableFilter();
	});	
	// 서브카테고리
	$("#subCategoryAllCheck").change(function(){
		$(".class_sub_category").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 메인카테고리
	$(".class_main_category").change(function(){
		console.log("회원상태체크박스");
		$("#mainCategoryAllCheck").prop('checked', false);
		tableFilter();
	});
	// 서브카테고리
	$(".class_sub_category").change(function(){
		console.log("회원상태체크박스");
		$("#subCategoryAllCheck").prop('checked', false);
		tableFilter();
	});
});