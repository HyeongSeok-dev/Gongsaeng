<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>공생 | 공간에 대한 생각</title>
	<meta name="description" content="GARO is a real-estate template">
	<meta name="author" content="Kimarotec">
	<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
	
	<%-- css 파일 --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
	
<script type="text/javascript">
function toggleButtons() {
  var button1 = document.getElementById('button1');
  var button2 = document.getElementById('button2');
  
  if (button1.style.display == 'none') {
    button1.style.display = 'block';
    button2.style.display = 'none';
  } else {
    button1.style.display = 'none';
    button2.style.display = 'block';
  }
}
</script>

</head>
<body>
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div>
	
	<%-- 상단바 삽입 --%>
	<%-- 로그인 전 --%>
<%-- 	<jsp:include page="./inc/top.jsp"/> --%>
	<%-- 로그인 후 --%>
	<jsp:include page="./inc/top2.jsp"/>
	
	<%-- 캐러셀_광고 area --%>
	<div class="slider-area">
	    <div class="slider">
	        <div id="bg-slider" class="owl-carousel owl-theme">
	            <div class="item1"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="GTA V" class="slider_img_responsive"></div>
	            <div class="item2"><img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash_3.jpg" alt="The Last of us" class="slider_img_responsive"></div>
	        </div>
	    </div>
	</div>
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
	
		<div class="carousel-inner">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="Los Angeles">
			</div>
			
			<div class="item">
				<img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash_3.jpg" alt="Chicago">
			</div>
			
			<div class="item">
				<img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="Los Angeles">
			</div>
		</div>

		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<%-- 캐러셀_광고 area --%>
                            
	<!-- property area -->
	<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title-icon">
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-house-design-4861170.png" width="50">
		            	<div class="category">건축 설계</div>
		            </a>
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-interior-design-837096.png" width="50">
		            	<div class="category">실내 디자인</div>
		            </a>
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-brick-769735.png" width="50">
		            	<div class="category">건축 노하우</div>
		            </a>
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-tile-2947010.png" width="50">
		            	<div class="category">타일</div>
		            </a>
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-wallpaper-4387197.png" width="50">
		            	<div class="category">도배/페인트</div>
		            </a>
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-flower-2355436.png" width="50">
		            	<div class="category">인테리어 소품</div>
		            </a>
		            <a class="icon">
		            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-flash-248053.png" width="50">
		            	<div class="category">전기</div>
		            </a>
	            </div>
	        </div>
	    </div>
	</div>
	
                      
    <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
        <div class="container">   
            <div class="row">
                <div class="col-md-12  padding-top-40 properties-page">
                    <div class="col-md-12 "> 
                        <div class="col-xs-10 page-subheader sorting pl0">

                        <ul class="sort-by-list">
                            <li class="active">
                                <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                    최신순
                                </a>
                            </li>
                            <li class="">
                                <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                    인기순
                                </a>
                            </li>
                        </ul>
                            
                        </div>
                    </div>

                    <div class="col-md-12 "> 
                        <div id="list-type" class="proerty-th">
                        
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
                    <div class="col-md-12"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>                
                    </div>
                </div>  
            </div>
        </div>
    </div>



	<%-- 마감임박순 class area --%>
    <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
        <div class="container">   
            <div class="row">
                <div class="col-md-12  padding-top-40 properties-page">
                    <div class="col-md-12 "> 
						<h2>마감임박순</h2>
                    </div>

                    <div class="col-md-12 "> 
                        <div id="list-type" class="proerty-th">

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="img/icon/bed.png">(5)|
                                            <img src="img/icon/shawer.png">(2)|
                                            <img src="img/icon/cars.png">(1)  
                                        </div>
                                    </div>

                                </div>
                            </div> 
                            
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="img/icon/bed.png">(5)|
                                            <img src="img/icon/shawer.png">(2)|
                                            <img src="img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="img/icon/bed.png">(5)|
                                            <img src="img/icon/shawer.png">(2)|
                                            <img src="img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
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
   	<%-- 마감임박순 class area --%>

	<%-- event area --%>
<!-- 	<div class="event_slider-area"> -->
<!-- 	    <div class="slider"> -->
<!-- 	        <div id="event-slider" class="owl-carousel owl-theme"> -->
<%-- 	            <div class="item3"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="GTA V" class="event_slider_img_responsive"></div> --%>
<%-- 	         <div class="item4"><img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash_3.jpg" alt="The Last of us" class="event_slider_img_responsive"></div> --%>
<!-- 	        </div> -->
<!-- 	    </div> -->
<!-- 	</div> -->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<div class="carousel-inner">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="Los Angeles">
			</div>
			
			<div class="item">
				<img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash_3.jpg" alt="Chicago">
			</div>
			
			<div class="item">
				<img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="Los Angeles">
			</div>
		</div>

		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<%-- event area --%>

    <!-- 최근 리뷰 area -->
    <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
        <div class="container">   
            <div class="row">
                <div class="col-md-12  padding-top-40 properties-page">
                    <div class="col-md-12 "> 
					<h2>마감임박순</h2>
                    </div>

                    <div class="col-md-12 "> 
                        <div id="list-type" class="proerty-th">

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="img/icon/bed.png">(5)|
                                            <img src="img/icon/shawer.png">(2)|
                                            <img src="img/icon/cars.png">(1)  
                                        </div>
                                    </div>

                                </div>
                            </div> 
                            
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="img/icon/bed.png">(5)|
                                            <img src="img/icon/shawer.png">(2)|
                                            <img src="img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="img/icon/bed.png">(5)|
                                            <img src="img/icon/shawer.png">(2)|
                                            <img src="img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
							<br>
							<br>
							<br>
                            </div> 

                        </div>
                    </div>

                </div>  
            </div>
        </div>
    </div>
    <!-- 최근 리뷰 area -->
    
	<!-- Footer area -->
	<!-- 하단바 삽입-->
	<div class="footer-area">
		<jsp:include page="./inc/bottom.jsp"/>
	</div>




	
	<!-- test 버튼 -->
	<button onclick="location.href='${pageContext.request.contextPath}/review/write'">리뷰쓰기</button>
	<hr>
	<button onclick="location.href='${pageContext.request.contextPath}/payment'">payment</button>
	<button onclick="location.href='${pageContext.request.contextPath}/payment/agree'">payment/agree</button>
	<button onclick="location.href='${pageContext.request.contextPath}/mypage/main'">mypage/main</button>
	<button onclick="location.href='${pageContext.request.contextPath}/member/login'">login</button>
	<!-- Footer area -->





	<%-- js파일 --%>
	<script src="${pageContext.request.contextPath}/resources/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/wow.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/price-range.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/resources/assets/js/icheck.min.js"></script> --%>
</body>
</html>
