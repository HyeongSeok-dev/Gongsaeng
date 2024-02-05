<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
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
<%-- <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js"
	integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath }/resources/js/member_login.js"></script>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
</head>
<body>

	<jsp:include page="../inc/top.jsp"></jsp:include>
	<div class="container">
		<form class="omb_loginForm" action="loginPro" autocomplete="off" method="POST">
			<div class="omb_login">
				<h3 class="omb_authTitle">로그인</h3>
				<div class="row omb_row-sm-offset-3 omb_socialButtons">
					<div class="col-xs-6 col-sm-3">
						<a href="#" class="btn btn-xs btn-block text-center" style="width: 65%; margin: 0 auto;"> <img
							src="${pageContext.request.contextPath }/resources/img/btnG_naver.png">
						</a>
					</div>
					<div class="col-xs-6 col-sm-3">
						<a href="javascript:kakaoLogin()" class="btn btn-xs btn-block text-center"> <img src="${pageContext.request.contextPath }/resources/img/kakao_login.png">
						</a>
					</div>
				</div>

				<div class="row omb_row-sm-offset-3 omb_loginOr">
					<div class="col-xs-12 col-sm-6"></div>
				</div>

				<div class="row omb_row-sm-offset-3">
					<div class="col-xs-12 col-sm-6">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span> <input type="text" class="form-control" value="${cId}" name="member_id" placeholder="아이디"
								required>
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input type="password" class="form-control" name="member_passwd"
								placeholder="비밀번호" required>
						</div>
						<br>
						<button class="btn btn-lg btn-success btn-block " type="submit">로그인</button>
						<button class="btn btn-lg btn-info btn-block " type="button" onclick="javascript:location.href='joinAgree'">회원가입</button>
					</div>
				</div>
				<div class="row omb_row-sm-offset-3 ">
					<div class="col-xs-3 col-md-2 text-left">
						<label class="checkbox"> <input type="checkbox" name="rememberId" <c:if test="${not empty cId}">checked</c:if>class="checkBox">아이디 기억하기
						</label>
					</div>

					<div class="col-xs-3 col-md-2 text-right checkbox" style="cursor: pointer;">
						<a onclick="javascript: window.open('findId', 'findId', 'width=500,height=300,top=50%, left=50%');">아이디찾기</a>
					</div>
					<div class="col-xs-3 col-md-2 text-right radio" style="cursor: pointer;">
						<a onclick="javascript: window.open('findPasswd', 'findPasswd', 'width=500,height=400,top=50%, left=50%');">비밀번호 찾기</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>