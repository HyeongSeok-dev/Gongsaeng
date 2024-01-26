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
<<<<<<< HEAD
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cm_myHome.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">

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
						<h4 class="panel-title text-center">커뮤니티</h4>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item"><a href="question">궁금해요</a></li>
							<li class="list-group-item"><a href="together">함께해요</a>
							<li class="list-group-item"><a href="myHome">집들이</a>
						</ul>
					</div>
				</div><%-- <div class="panel panel-default"> --%>
			</div><%-- <div class="col-sm-3"> --%>
				
			<div class="padding-top-40 properties-page">
			<div id="list-type" class="proerty-th" style="margin-left: 0px;">
					
			<%-- 클래스 카드 area --%>
			<div class="col-sm-6 col-md-3 p0">
				<div class="box-two proerty-item" style="background-color: #FFF;">
					<div class="item-thumb">
						<a href="${pageContext.request.contextPath}/product/detail" >
							<img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg">
						</a>
					
						<%-- 찜표시 --%>
						<%-- 찜하기 전 --%>
						<button id="button1" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u" tabindex="0" type="button">
							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
								<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
							</svg>
						<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
						
						<%-- 찜한 후 --%>
						<button id="button2" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u" tabindex="0" type="button">
							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
								<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
							</svg>
							<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
					</div>
				
					<div class="item-entry overflow">
						<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6" style="padding: 0px;">
								<h6><a href="${pageContext.request.contextPath}/company/profile">인테리어 사업체명</a></h6>
							</div>
							<div class="col-sm-6" style="padding: 0px; text-align: right;">
								<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
									<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
								</svg>
								32
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-12 col_className">
								<h5><a href="${pageContext.request.contextPath}/product/detail">도배 기초</a></h5>
								<div class="dot-hr"></div>
								<div class="item_p">
									<span class="pull-left_plus">
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
									</span>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-12 col_classPrice">
								<div class="item_p">
									<span class="proerty-price pull-right">300,000원</span>
								</div>
							</div>
						</div>
						
						</div>
					</div>
				        
				</div>
			</div>
			<%-- 클래스 카드 area --%>
			
			<%-- 클래스 카드 area --%>
			<div class="col-sm-6 col-md-3 p0">
				<div class="box-two proerty-item" style="background-color: #FFF;">
					<div class="item-thumb">
						<a href="${pageContext.request.contextPath}/product/detail" >
							<img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg">
						</a>
					
						<%-- 찜표시 --%>
						<%-- 찜하기 전 --%>
						<button id="button1" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u" tabindex="0" type="button">
							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
								<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
							</svg>
						<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
						
						<%-- 찜한 후 --%>
						<button id="button2" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u" tabindex="0" type="button">
							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
								<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
							</svg>
							<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
					</div>
				
					<div class="item-entry overflow">
						<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6" style="padding: 0px;">
								<h6><a href="${pageContext.request.contextPath}/company/profile">인테리어 사업체명</a></h6>
							</div>
							<div class="col-sm-6" style="padding: 0px; text-align: right;">
								<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
									<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
								</svg>
								32
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-12 col_className">
								<h5><a href="${pageContext.request.contextPath}/product/detail">도배 기초</a></h5>
								<div class="dot-hr"></div>
								<div class="item_p">
									<span class="pull-left_plus">
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
									</span>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-12 col_classPrice">
								<div class="item_p">
									<span class="proerty-price pull-right">300,000원</span>
								</div>
							</div>
						</div>
						
						</div>
					</div>
				        
				</div>
			</div>
			<%-- 클래스 카드 area --%>
			
			<%-- 클래스 카드 area --%>
			<div class="col-sm-6 col-md-3 p0">
				<div class="box-two proerty-item" style="background-color: #FFF;">
					<div class="item-thumb">
						<a href="${pageContext.request.contextPath}/product/detail" >
							<img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg">
						</a>
					
						<%-- 찜표시 --%>
						<%-- 찜하기 전 --%>
						<button id="button1" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u" tabindex="0" type="button">
							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
								<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
							</svg>
						<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
						
						<%-- 찜한 후 --%>
						<button id="button2" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u" tabindex="0" type="button">
							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
								<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
							</svg>
							<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
					</div>
				
					<div class="item-entry overflow">
						<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6" style="padding: 0px;">
								<h6><a href="${pageContext.request.contextPath}/company/profile">인테리어 사업체명</a></h6>
							</div>
							<div class="col-sm-6" style="padding: 0px; text-align: right;">
								<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
									<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
								</svg>
								32
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-12 col_className">
								<h5><a href="${pageContext.request.contextPath}/product/detail">도배 기초</a></h5>
								<div class="dot-hr"></div>
								<div class="item_p">
									<span class="pull-left_plus">
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
										3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
									</span>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-12 col_classPrice">
								<div class="item_p">
									<span class="proerty-price pull-right">300,000원</span>
								</div>
							</div>
						</div>
						
						</div>
					</div>
				        
				</div>
			</div>
			<%-- 클래스 카드 area --%>
					
			</div><%-- <div id="list-type" class="proerty-th"> --%>
			</div><%-- <div class="padding-top-40 properties-page"> --%>
			
		</div><%-- <div class="row"> --%>
	</div><%-- <div class="container"> --%>
	<!-- 우측 본문영역 -->

=======
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cm_myHome.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">

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
						<h4 class="panel-title text-center">커뮤니티</h4>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item"><a href="question">궁금해요</a></li>
							<li class="list-group-item"><a href="together">함께해요</a>
							<li class="list-group-item"><a href="myHome">집들이</a>
						</ul>
					</div>
				</div>
			</div>
			<!-- 우측 본문영역 -->
                            <%-- 클래스 카드 area --%>
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product/detail" >
                                        	<img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg">
										</a>
										
										<%-- 찜표시 --%>
										<%-- 찜하기 전 --%>
                                    	<button id="button1" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u" tabindex="0" type="button">
											<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
												<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
											</svg>
											<span class="MuiTouchRipple-root css-w0pj6f"></span>
										</button>
										
										<%-- 찜한 후 --%>
										<button id="button2" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u" tabindex="0" type="button">
											<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
												<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
											</svg>
											<span class="MuiTouchRipple-root css-w0pj6f"></span>
										</button>
                                    </div>

                                    <div class="item-entry overflow">
										<div class="container-fluid">
											<div class="row">
												<div class="col-sm-6" style="padding: 0px;">
													<h6><a href="${pageContext.request.contextPath}/company/profile">인테리어 사업체명</a></h6>
												</div>
												<div class="col-sm-6" style="padding: 0px; text-align: right;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
														<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
													</svg>
													32
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12 col_className">
			                                        <h5><a href="${pageContext.request.contextPath}/product/detail">도배 기초</a></h5>
			                                        <div class="dot-hr"></div>
			                                       	<div class="item_p">
				                                        <span class="pull-left_plus">
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
				                                        </span>
			                                       	</div>
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12 col_classPrice">
													<div class="item_p">
				                                        <span class="proerty-price pull-right">300,000원</span>
			                                        </div>
												</div>
											</div>
											
										</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <%-- 클래스 카드 area --%>
                            
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" >
                                        	<img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg">
										</a>
										
										<%-- 찜표시 --%>
                                    	<button id="button1" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u" tabindex="0" type="button">
											<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
												<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
											</svg>
											<span class="MuiTouchRipple-root css-w0pj6f"></span>
										</button>
										
										<button id="button2" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u" tabindex="0" type="button">
											<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
												<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
											</svg>
											<span class="MuiTouchRipple-root css-w0pj6f"></span>
										</button>
                                    </div>

                                    <div class="item-entry overflow">
										<div class="container-fluid">
											<div class="row">
												<div class="col-sm-6" style="padding: 0px;">
													<h6><a href="">인테리어 업체명</a></h6>
												</div>
												<div class="col-sm-6" style="padding: 0px; text-align: right;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
														<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
													</svg>
													32
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12" style="min-height:100px; max-height:100px; padding: 0px;">
			                                        <h5><a href="property-1">도배 기초</a></h5>
			                                        <div class="dot-hr"></div>
			                                       	<div class="item_p">
				                                        <span class="pull-left_plus">
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
				                                        </span>
			                                       	</div>
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12" style="min-height: 20px; max-height: 20px; padding: 0px; margin-top: 15px;">
													<div class="item_p">
				                                        <span class="proerty-price pull-right">300,000원</span>
			                                        </div>
												</div>
											</div>
											
										</div>
                                    </div>
                                    
                                </div>
                            </div>
                            
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" >
                                        	<img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg">
										</a>
										
										<%-- 찜표시 --%>
                                    	<button id="button1" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u" tabindex="0" type="button">
											<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
												<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
											</svg>
											<span class="MuiTouchRipple-root css-w0pj6f"></span>
										</button>
										
										<button id="button2" onclick="toggleButtons()" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u" tabindex="0" type="button">
											<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
												<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
											</svg>
											<span class="MuiTouchRipple-root css-w0pj6f"></span>
										</button>
                                    </div>

                                    <div class="item-entry overflow">
										<div class="container-fluid">
											<div class="row">
												<div class="col-sm-6" style="padding: 0px;">
													<h6><a href="">인테리어 업체명</a></h6>
												</div>
												<div class="col-sm-6" style="padding: 0px; text-align: right;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
														<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
													</svg>
													32
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12" style="min-height:100px; max-height:100px; padding: 0px;">
			                                        <h5><a href="property-1">도배 기초</a></h5>
			                                        <div class="dot-hr"></div>
			                                       	<div class="item_p">
				                                        <span class="pull-left_plus">
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
			                                        		3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨3줄까지만 이상은 ...처리됨
				                                        </span>
			                                       	</div>
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12" style="min-height: 20px; max-height: 20px; padding: 0px; margin-top: 15px;">
													<div class="item_p">
				                                        <span class="proerty-price pull-right">300,000원</span>
			                                        </div>
												</div>
											</div>
											
										</div>
                                    </div>
                                    
                                </div>
                            </div>
		</div>
	</div>
>>>>>>> stash
</body>
<!-- Footer area -->
<!-- 하단바 삽입-->
<div class="bottom">
	<jsp:include page="../inc/bottom.jsp" />
</div>
</html>