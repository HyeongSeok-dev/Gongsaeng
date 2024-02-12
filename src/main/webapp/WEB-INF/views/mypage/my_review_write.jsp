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
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mypage.js"></script>

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
						<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" style="cursor: pointer; max-height: 250px;"
							onclick="location.href='modifyProfile'">
					</c:when>
					<c:when test="${fn:contains(member.member_img,'http')}">
						<img alt="profile" src="${member.member_img}" style="cursor: pointer; max-height: 250px;" onclick="location.href='modifyProfile'">
					</c:when>
					<c:otherwise>
						<img alt="profile" src="${pageContext.request.contextPath }/resources/upload/${member.member_img}" style="cursor: pointer; max-height: 250px;"
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
							<li class="list-group-item cursor" data-toggle="collapse" href="#alert">알림
								<div id="alert" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='alert'">알림</li>
<!-- 										<li class="list-group-item cursor" onclick="javascript:location.href='chat'">채팅</li> -->
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#offer">혜택
								<div id="offer" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor" onclick="javascript:location.href='coupon'">쿠폰</li>
										<li class="list-group-item cursor" onclick="javascript:location.href='cash'">캐쉬</li>
										
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
								<div id="review" class="panel-collapse collapse in">
									<ul class="list-group">
										<li class="list-group-item cursor active" onclick="javascript:location.href='reviewWrite'">리뷰 쓰기</li>
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
								<div id="info" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='modifyProfile'">내 정보 수정</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='../company/banjang/register'">반장회원 신청</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 우측 본문영역 -->
			<div class="col-sm-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">리뷰 쓰기</h4>
					</div>
					<br>
					<c:if test="${empty resList}">
						<div class="panel-body">리뷰를 쓸 예약내역이 없습니다.</div>
					</c:if>
					<c:forEach var="res" items="${resList}">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-6">
										<c:choose>
											<c:when test="${res.pay_status eq 1}">
												<strong>예약완료</strong>
												<br>
											</c:when>
											<c:when test="${res.pay_status eq 2}">
												<strong>예약취소</strong>
												<br>
											</c:when>
											<c:when test="${res.pay_status eq 3}">
												<strong>방문완료</strong>
												<br>
											</c:when>
										</c:choose>
										<small>결제 날짜: ${res.pay_date}</small>
									</div>
									<div class="col-xs-6 text-right">
										예약 금액: ${res.payment}원<br> <a href="reservationDetail?pay_num=${res.pay_num}"> 상세보기 ></a>
									</div>
								</div>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-10">
										<div class="row">
											<div class="col-xs-2">
												<img src="${pageContext.request.contextPath }/resources/upload/${res.class_pic1}" alt="클래스 사진" class="thumbnail">
											</div>
											<div class="col-xs-10">
												<p>가게 이름 : ${res.com_name}</p>
												<p>클래스 이름 : ${res.class_title}</p>
												<p>예약한 날짜: yyyy-mm-dd</p>
											</div>
										</div>
									</div>
									<div class="col-xs-2">
										<button class="btn btn-default btn-block" onclick="javascript:location.href='../review/write?pay_num=${res.pay_num}&class_idx=${res.class_idx}'">리뷰쓰기</button>
										<a onclick="javascript: window.open('report?class_idx=${res.class_idx}', 'report', 'width=500,height=550,top=50%, left=50%');"><button
												class="btn btn-danger btn-block">신고하기</button></a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>