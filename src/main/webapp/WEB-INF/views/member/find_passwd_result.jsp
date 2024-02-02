<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>공생 | 공간을 생각하다</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login.css">

<script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/wow.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js" integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8"
	crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath }/resources/js/member_update_passwd.js"></script>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3 class="text-center">비밀번호 재설정</h3>
				<form action="updatePasswdPro" method="post">
					<div class="form-group">
						<label for="passwd">새로운 비밀번호</label> <input type="password" class="form-control" id="passwd" name="member_passwd" placeholder="새로운 비밀번호">
					</div>
					<div class="form-group" id="checkPasswdResult"></div>
					<div class="form-group">
						<label for="passwd2">비밀번호 확인</label> <input type="password" class="form-control" id="passwd2" placeholder="비밀번호 확인">
					</div>
					<div class="form-group" id="checkPasswd2Result"></div>
					<input type="hidden" name="member_id" value="${authInfo.member_id}">
		       		<input type="hidden" name="mail_auth_code" value="${authInfo.mail_auth_code}">
					<button type="submit" class="btn btn-primary btn-block" id="joinBtn">비밀번호 변경하기</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
