<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cart.css">

</head>
<body>
	<header>
	</header>
	
	<main>
	<div class="out_block">
	
	<h1>장바구니</h1><!-- 커밋오류수정 -->
	<br>
	
	<div class="choice">
		<input type="checkbox" value="전체선택">
		<input type="button" value="선택삭제">
	</div>
	
		<div class="section_box">
			<section class="sec05">
			  <!-- 체크박스 -->
			  <div class = "check">
			  	<input type="checkbox">
			  </div>
			  <!-- 클래스 대표사진 -->
			  <div class="info img_info">
			  	<img src="${pageContext.request.contextPath }/resources/img/payment_test.png" width="65" id="kakao">
			  </div>
			</section>
		</div>	
	</div>	
	</main>
	
	<footer>
	</footer>
</body>
</html>