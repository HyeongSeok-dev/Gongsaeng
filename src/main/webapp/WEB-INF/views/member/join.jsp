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
<script src="${pageContext.request.contextPath }/resources/js/member_join.js"></script>

</head>
<body>
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<div class="nmContainer container">
		<h2 class="text-center">회원 가입</h2>
		<br>
		<div class="loginBox">
			<form id="loginForm" method="POST" action="joinPro" name="joinForm" class="form-horizontal">
				<div class="form-group">
					<label for="memberId" class="col-sm-1 control-label">아이디</label>
					<div class="col-sm-8">
						<input type="text" id="memberId" required name="member_id" class="form-control" placeholder="아이디 (영문자, 숫자 조합 8~16자리 필수(한글, 특수문자 사용불가 )"
							maxlength="100" />
					</div>
					<div class="col-sm-3">
						<span id="checkIdResult"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="passwd" class="col-sm-1 control-label">비밀번호</label>
					<div class="col-sm-8">
						<input type="password" id="passwd" required name="member_passwd" class="form-control" placeholder="비밀번호 (영문, 숫자, 특수문자 조합 8~16자리) 권장"
							maxlength="16">
					</div>
					<div class="col-sm-3">
						<span id="checkPasswdResult"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="passwd2" class="col-sm-1 control-label">비밀번호<br>확인</label>
					<div class="col-sm-8">
						<input type="password" id="passwd2" required name="passwd2" class="form-control" placeholder="비밀번호 확인" maxlength="16">
					</div>
					<div class="col-sm-3">
						<span id="checkPasswd2Result"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="u_nick" class="col-sm-1 control-label">닉네임</label>
					<div class="col-sm-8">
						<input type="text" id="u_nick" required name="member_nick" class="form-control" placeholder="닉네임" maxlength="100">
					</div>
					<div class="col-sm-3">
						<span id="checkNickResult"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="u_name" class="col-sm-1 control-label">이름</label>
					<div class="col-sm-8">
						<input type="text" id="u_name" required name="member_name" class="form-control" placeholder="이름" maxlength="16">
					</div>
					<div class="col-sm-3">
						<span id="checkNameResult"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="com_birth" class="col-sm-1 control-label">생년월일</label>
					<div class="col-sm-8">
						<input type="date" id="com_birth" required name="member_birthday" class="form-control">
					</div>
					<div class="col-sm-3">
						<label class="control-label pull-left margin">성별 &nbsp;&nbsp;</label>
						<input type="radio" id="gender_m" name="member_gender" value="1" class="form-control" required><label for="gender_m" class="control-label">남&nbsp; </label>
						<input type="radio" id="gender_f" name="member_gender" value="2" class="form-control" required><label for="gender_f" class="control-label">여&nbsp; </label>
					</div>
				</div>
				<div class="form-group">
					<label for="u_email" class="col-sm-1 control-label">이메일</label>
					<div class="col-sm-4">
						<div class="input-group">
							<input type="text" id="u_email" required name="member_email1" class="form-control mail" placeholder="이메일" maxlength="16">
							<div class="input-group-addon">@</div>
						</div>
					</div>

					<div class="col-sm-4">
						<input type="text" id="customEmail" required class="form-control mail" name="member_email2" style="display: none;" placeholder="이메일을 입력하세요"
							disabled="disabled">
						<div id="emailSelectBox">
							<select id="u_email2" name="member_email2" class="form-control mail">
								<option value="">선택하세요</option>
								<option value="gmail.com">gmail.com</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="custom">직접입력</option>
							</select>
						</div>
					</div>
					<div class="col-sm-3" id="customEmailSelectBox"></div>
				</div>
				<div class="form-group">
					<label for="u_phone" class="col-sm-1 control-label">전화번호</label>
					<div class="col-sm-8">
						<input type="text" id="u_phone" required name="member_phone" class="form-control" placeholder="전화번호 (' - ' 를 빼고 입력)" maxlength="100">
					</div>
					<div class="col-sm-3">
						<span id="checkPhoneResult"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary" id="joinBtn">가입하기</button>
					</div>
				</div>
				<input type="hidden" name="agreeAd" value="${agreeAd}">
			</form>
		</div>
	</div>

</body>
</html>