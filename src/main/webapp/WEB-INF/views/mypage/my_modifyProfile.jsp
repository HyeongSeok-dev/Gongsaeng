<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mypage.css">

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
<%-- <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/js/my_modify_member.js"></script>

</head>
<body>
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<br>
	<div class="container">
		<div class="row">
			<!-- 좌측 메뉴바 -->
			<div class="col-sm-3">
				<c:choose>
					<c:when test="${empty member.member_img}">
						<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" style="cursor: pointer;"
							onclick="location.href='modifyProfile'">
					</c:when>
					<c:when test="${fn:contains(member.member_img,'http')}">
						<img alt="profile" src="${member.member_img}" style="cursor: pointer;" onclick="location.href='modifyProfile'">
					</c:when>
					<c:otherwise>
						<img alt="profile" src="${pageContext.request.contextPath }/resources/upload/${member.member_img}" style="cursor: pointer;"
							onclick="location.href='modifyProfile'">
					</c:otherwise>
				</c:choose>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title text-center cursor" onclick="javascript:location.href='main'">마이페이지</h4>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item cursor" onclick="javascript:location.href='reservation'">예약 내역</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#alert">알림/채팅
								<div id="alert" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='alert'">알림</li>
										<li class="list-group-item cursor" onclick="javascript:location.href='chat'">채팅</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#offer">혜택
								<div id="offer" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor" onclick="javascript:location.href='coupon'">쿠폰</li>
										<li class="list-group-item cursor" onclick="javascript:location.href='cash'">캐쉬</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='point'">포인트</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#favorList">관심리스트
								<div id="favorList" class="panel-collapse collapse ">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='bookmark'">북마크</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='following'">팔로우</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='recent'">최근 본 클래스</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#review">리뷰/신고
								<div id="review" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='reviewWrite'">리뷰 쓰기</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='reviewList'">내가 쓴 리뷰</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#community">커뮤니티
								<div id="community" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='../community/question'">공생 커뮤니티</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='community'">내가 쓴 글</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#info">내 정보/반장 신청
								<div id="info" class="panel-collapse collapse in">
									<ul class="list-group">
										<li class="list-group-item cursor active" onclick="javascript:location.href='modifyProfile'">내 정보 수정</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='../company/banjang/register'">반장회원 신청</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 우측 본문영역 -->
			<form class="form-horizontal" role="form" method="post" action="modifyProfilePro" enctype="multipart/form-data">
				<div class="col-sm-9">
					<div class="container bootstrap snippets bootdey">
						<hr>
						<div class="row">
							<!-- left column -->
							<div class="col-md-3">
								<div class="text-center">
									<c:choose>
										<c:when test="${empty member.member_img}">
											<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" style="cursor: pointer;" class="img-thumbnail">
										</c:when>
										<c:when test="${fn:contains(member.member_img,'http')}">
											<img alt="profile" src="${member.member_img}" style="cursor: pointer;" class="img-thumbnail">
										</c:when>
										<c:otherwise>
											<img alt="profile" src="${pageContext.request.contextPath }/resources/upload/${member.member_img}" style="cursor: pointer;" class="img-thumbnail">
										</c:otherwise>
									</c:choose>
									<br> <br> <input type="file" class="form-control profileImg" accept="image/*" name="m_file">
								</div>
							</div>

							<!-- edit form column -->
							<div class="col-md-6 personal-info">
								<h3 class="text-center">내 정보 수정</h3>
								<br>
								<div class="form-group">
									<label class="col-lg-3 control-label">아이디 : </label>
									<div class="col-lg-6">
										<input class="form-control" required type="text" value="${member.member_id}" placeholder="아이디" readonly name="member_id">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">비밀번호 : </label>
									<div class="col-lg-6">
										<input class="form-control" type="password" placeholder="비밀번호" id="passwd" name="member_passwd">
									</div>
									<div class="col-lg-3">
										<span id="checkPasswdResult"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">비밀번호 확인 : </label>
									<div class="col-lg-6">
										<input class="form-control" type="password" placeholder="비밀번호확인" id="passwd2">
									</div>
									<div class="col-lg-3">
										<span id="checkPasswd2Result"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">닉네임:</label>
									<div class="col-lg-6">
										<input class="form-control" required type="text" value="${member.member_nick}" id="u_nick" name="member_nick">
									</div>
									<div class="col-lg-3">
										<span id="checkNickResult"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">이름 : </label>
									<div class="col-lg-6">
										<input class="form-control" required type="text" value="${member.member_name}" name="member_name">
									</div>
								</div>
								<div class="form-group">
									<label for="com_birth" class="col-lg-3 control-label">생년월일 : </label>
									<div class="col-lg-6">
										<input type="date" id="com_birth" required name="member_birthday" value="${member.member_birthday}" class="form-control" disabled>
									</div>
									<div class="col-lg-3">
										<c:choose>
											<c:when test="${member.member_gender eq 1}">
												<label class="control-label pull-left margin">성별 : &nbsp;&nbsp; 남</label>
											</c:when>
											<c:otherwise>
												<label class="control-label pull-left margin">성별 : &nbsp;&nbsp; 여</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="form-group">
									<label for="u_email" class="col-lg-3 control-label">이메일:</label>
									<div class="col-lg-3">
										<div class="input-group">
											<input type="text" id="u_email" value="${member.member_email1}" required name="member_email1" class="form-control mail" placeholder="이메일"
												maxlength="16">
											<div class="input-group-addon">@</div>
										</div>
									</div>
									<c:if test="${member.member_email2 eq gmail.com}">selected</c:if>
									<div class="col-lg-3">
										<input type="text" id="customEmail" value="${member.member_email2}" required class="form-control mail" name="member_email2" style="display: none;"
											placeholder="이메일을 입력하세요" disabled="disabled">
										<div id="emailSelectBox">
											<select id="u_email2" name="member_email2" class="form-control mail">
												<option value="">선택하세요</option>
												<option value="gmail.com" <c:if test="${member.member_email2 eq 'gmail.com'}">selected</c:if>>gmail.com</option>
												<option value="naver.com" <c:if test="${member.member_email2 eq 'naver.com'}">selected</c:if>>naver.com</option>
												<option value="daum.net" <c:if test="${member.member_email2 eq 'daum.net'}">selected</c:if>>daum.net</option>
												<option value="yahoo.com" <c:if test="${member.member_email2 eq 'yahoo.com'}">selected</c:if>>yahoo.com</option>
												<option value="custom">직접입력</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3" id="customEmailSelectBox"></div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">전화번호:</label>
									<div class="col-lg-4">
										<input type="text" id="u_phone" required name="member_phone" value="${member.member_phone}" class="form-control" maxlength="100"
											oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									</div>
									<div class="col-sm-2 text-center">
										<button type="button" class="btn btn-info" id="auth_phone_number_btn" disabled="disabled">인증하기</button>
									</div>
									<div class="col-sm-3">
										<span id="checkPhoneResult"></span>
									</div>
								</div>
								<br>
								<div class="form-group">
									<div class="col-xs-9 text-left">
										<button type="submit" class="btn btn-info" id="modifyBtn">수정하기</button>
									</div>
									<div class="col-xs-3 text-left">
										<button type="button" class="btn btn-warning" onclick="withdraw()">탈퇴하기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr>
				</div>
			</form>
		</div>
	</div>
</body>
</html>