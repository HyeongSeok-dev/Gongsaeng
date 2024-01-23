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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mypage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/my_coupon.css">

<script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
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
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title text-center">마이페이지</h4>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item "><a href="reservation">예약 내역</a></li>
							<li class="list-group-item "><a data-toggle="collapse" href="#alert">알림/메세지</a>
								<div id="alert" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item"><a href="alert">알림</a></li>
										<li class="list-group-item"><a href="messages">메세지</a></li>
									</ul>
								</div></li>
							<li class="list-group-item "><a data-toggle="collapse" href="#offer">혜택</a>
								<div id="offer" class="panel-collapse collapse in ">
									<ul class="list-group">
										<li class="list-group-item active "><a href="coupon">쿠폰</a></li>
										<li class="list-group-item"><a href="cash">캐쉬</a></li>
										<li class="list-group-item"><a href="point">포인트</a></li>
									</ul>
								</div></li>
							<li class="list-group-item"><a data-toggle="collapse" href="#favorList">관심리스트</a>
								<div id="favorList" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item"><a href="bookmark">북마크</a></li>
										<li class="list-group-item"><a href="following">팔로우</a></li>
										<li class="list-group-item"><a href="recent">최근 본 클래스</a></li>
									</ul>
								</div></li>
							<li class="list-group-item"><a data-toggle="collapse" href="#review">리뷰</a>
								<div id="review" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item"><a href="reviewWrite">리뷰 쓰기</a></li>
										<li class="list-group-item"><a href="reviewList">내가 쓴 리뷰</a></li>
									</ul>
								</div></li>
							<li class="list-group-item"><a data-toggle="collapse" href="#community">커뮤니티</a>
								<div id="community" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item"><a href="community">내가 쓴 글</a></li>
										<li class="list-group-item"><a href="communityRecent">최근 본 글</a></li>
									</ul>
								</div></li>
							<li class="list-group-item"><a data-toggle="collapse" href="#info">내 정보</a>
								<div id="info" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item"><a href="modifyProfile">내 정보 수정</a></li>
										<li class="list-group-item"><a href="#">반장회원 신청</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 우측 본문영역 -->
			<div class="col-sm-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">쿠폰</h2>
					</div>
					<div class="row">
						<!-- 아래 col-md-6 div를 쿠폰 카드의 개수만큼 복사하여 붙여넣기 -->
						<div class="col-md-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="row">
										<div class="col-xs-2">
											<img src="thumbnail.jpg" alt="쿠폰 이미지" class="thumbnail">
										</div>
										<div class="col-xs-10">
											<h4>신규회원 가입 쿠폰</h4>
											<p>쿠폰 값: 5000원</p>
											<p>15,000원 이상 구매시 사용 가능</p>
											<p>29일 남음 (유효기간: 2024-01-23 ~ 2024-02-22)</p>
											<button class="btn btn-default btn-block">적용 가능 작품 보기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="row">
										<div class="col-xs-2">
											<img src="thumbnail.jpg" alt="쿠폰 이미지" class="thumbnail">
										</div>
										<div class="col-xs-10">
											<h4>신규회원 가입 쿠폰</h4>
											<p>쿠폰 값: 5000원</p>
											<p>15,000원 이상 구매시 사용 가능</p>
											<p>29일 남음 (유효기간: 2024-01-23 ~ 2024-02-22)</p>
											<button class="btn btn-default btn-block">적용 가능 작품 보기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="row">
										<div class="col-xs-2">
											<img src="thumbnail.jpg" alt="쿠폰 이미지" class="thumbnail">
										</div>
										<div class="col-xs-10">
											<h4>신규회원 가입 쿠폰</h4>
											<p>쿠폰 값: 5000원</p>
											<p>15,000원 이상 구매시 사용 가능</p>
											<p>29일 남음 (유효기간: 2024-01-23 ~ 2024-02-22)</p>
											<button class="btn btn-default btn-block">적용 가능 작품 보기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>