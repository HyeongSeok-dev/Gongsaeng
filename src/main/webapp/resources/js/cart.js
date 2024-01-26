$(document).ready(function() {
//$(function() {	
	
	//결제하기버튼 누르면 결제페이지로 이동
	$("#payment").click(function() {
    	window.location.href = "payment";
	});
	
	//가지고 와야할정보들의 변수선언
	var date = 0; //방문날짜와 시간
	var count = 0; //인원수
	var totalPrice = 0; //총결제금액
	
}); //$(document).ready(function() {