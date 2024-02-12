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
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
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
					<!-- 패널 헤더 -->
					<div class="panel-heading">
						<div class="row text-center">
							<div class="col-xs-2" onclick="javascript:location.href='coupon'">쿠폰</div>
							<div class="col-xs-2" onclick="javascript:location.href='cash'">캐쉬</div>
							<div class="col-xs-2" onclick="javascript:location.href='point'">포인트</div>
							<div class="col-xs-3" onclick="javascript:location.href='reservation'">예약완료</div>
							<div class="col-xs-3" onclick="javascript:location.href='reservation'">취소/환불완료</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row text-center">

							<div class="col-xs-2">
								<c:if test="${empty myMainInfo.coupon_count}">0</c:if>${myMainInfo.coupon_count}개</div>
							<div class="col-xs-2">
								<c:if test="${empty myMainInfo.total_cash}">0</c:if>${myMainInfo.total_cash}원</div>
							<div class="col-xs-2">
								<c:if test="${empty myMainInfo.total_point}">0</c:if>${myMainInfo.total_point}포인트</div>
							<div class="col-xs-3">
								<c:if test="${empty myMainInfo.res_count}">0</c:if>${myMainInfo.res_count}건</div>
							<div class="col-xs-3">
								<c:if test="${empty myMainInfo.cancel_count}">0</c:if>${myMainInfo.cancel_count}건</div>
						</div>
					</div>
				</div>
				<br>
				<!-- 안 읽은 메시지, 안 읽은 알림 섹션 -->
				<div class="row">
					<div class="col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading" onclick="javascript:location.href='chat'">안 읽은 채팅</div>
							<div class="panel-body">
								<div class="row">
									<c:if test="${empty unReadChats}">안 읽은 채팅이 없습니다.</c:if>
									<c:forEach var="chat" items="${unReadChats}">
										<div class="col-xs-6 text-left">${chat.chat_sender}</div>
										<div class="col-xs-6 text-right">${chat.chat_content}</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading" onclick="javascript:location.href='alert'">안 읽은 알림</div>
							<div class="panel-body">
								<div class="row">
									<c:if test="${empty unReadAlert}">안 읽은 알림이 없습니다.</c:if>
									<c:forEach var="alert" items="${unReadAlert}">
										<div class="col-xs-6 text-left">
											<c:choose>
												<c:when test="${alert.alert_category eq '1'}">알림</c:when>
												<c:when test="${alert.alert_category eq '2'}">공지</c:when>
												<c:when test="${alert.alert_category eq '3'}">이벤트</c:when>
											</c:choose>

										</div>
										<div class="col-xs-6 text-right">${alert.alert_content}</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 찜한 작품 섹션 -->
				<div class="row">
					<div class="col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading" onclick="javascript:location.href='bookmark'">북마크한 클래스</div>
							<div class="panel-body">
								<c:choose>
									<c:when test="${empty bookmarkList}">등록한 북마크가 없습니다.</c:when>
									<c:otherwise>
										<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
											<!-- Indicators -->
											<ol class="carousel-indicators">
												<c:forEach var="bookmark" items="${bookmarkList}" varStatus="i">
													<li data-target="#carousel-example-generic" data-slide-to="${i.index}" <c:if test="${i.index eq 0}">class="active"</c:if>></li>
												</c:forEach>
											</ol>

											<!-- Wrapper for slides -->
											<div class="carousel-inner" role="listbox">
												<c:forEach var="bookmark" items="${bookmarkList}" varStatus="i">
													<div class="item <c:if test="${i.index eq 0}">active</c:if>">
														<a href="../product/detail?class_idx=${bookmark.class_idx}"><img
															src="${pageContext.request.contextPath }/resources/upload/${bookmark.class_pic1}" alt=""></a>
													</div>
												</c:forEach>
											</div>

											<!-- Controls -->
											<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
												aria-hidden="true"></span> <span class="sr-only">Previous</span>
											</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span
												class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
											</a>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading" onclick="javascript:location.href='recent'">최근 본 클래스</div>
							<div class="panel-body">
								<c:choose>
									<c:when test="${empty recentClasses}">최근 본 클래스가 없습니다.</c:when>
									<c:otherwise>
										<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
											<!-- Indicators -->
											<ol class="carousel-indicators">
												<c:forEach var="product" items="${recentClasses}" varStatus="i">
													<li data-target="#carousel-example-generic" data-slide-to="${i.index}" <c:if test="${i.index eq 0}">class="active"</c:if>></li>
												</c:forEach>
											</ol>

											<!-- Wrapper for slides -->
											<div class="carousel-inner" role="listbox">

												<c:forEach var="recentClass" items="${recentClasses}" varStatus="i">
													<div class="item <c:if test="${i.index eq 0}">active</c:if>">
														<a href="../product/detail?class_idx=${recentClass.class_idx}"><img
															src="${pageContext.request.contextPath }/resources/upload/${recentClass.imageUrl}" alt=""></a>
													</div>
												</c:forEach>
											</div>

											<!-- Controls -->
											<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
												aria-hidden="true"></span> <span class="sr-only">Previous</span>
											</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span
												class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
											</a>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>

				<!-- 팔로우하는 작가 섹션 -->
				<div class="panel panel-default">
					<div class="panel-heading" onclick="javascript:location.href='following'">팔로우하는 작가</div>
					<div class="panel-body">
						<c:choose>
							<c:when test="${empty followingList}">팔로우한 반장님이 없습니다.</c:when>
							<c:otherwise>
								<c:forEach var="following" items="${followingList}">
									<div class="row">
										<div class="col-sm-2">
											<img src="${pageContext.request.contextPath }/resources/upload/${following.com_img}" alt="작가 사진" class="img-responsive">
										</div>
										<div class="col-sm-5">
											<h5>${following.com_name}</h5>
											<p>${following.com_introduction}</p>
										</div>
										<div class="col-sm-5">
											<div class="row">
												<div class="col-xs-4">
													<img src="${pageContext.request.contextPath }/resources/upload/${following.class_image1}" alt="작품 사진" class="img-responsive">
												</div>
												<div class="col-xs-4">
													<img src="${pageContext.request.contextPath }/resources/upload/${following.class_image2}" alt="작품 사진" class="img-responsive">
												</div>
												<div class="col-xs-4">
													<img src="${pageContext.request.contextPath }/resources/upload/${following.class_image3}" alt="작품 사진" class="img-responsive">
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>

				</div>

			</div>

		</div>
	</div>
</body>
</html>