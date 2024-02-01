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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cm_myHome.css">


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
<script src="${pageContext.request.contextPath }/resources/js/community.js"></script>

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
							<li class="list-group-item cursor"><a href="question">궁금해요</a></li>
							<li class="list-group-item cursor"><a href="together">함께해요</a>
							<li class="list-group-item cursor"><a href="myHome">집들이</a>
						</ul>
					</div>
				</div>
			</div>
      <!-- 본문영역 -->
      	<br>
        <div class="col-sm-9">
            <div class="row">
                <!-- 카드 1 -->
                <div class="col-sm-4">
                    <!-- 카드 내용 -->
                    <div class="card card-background">
					    <a href="myHomeDetail">
					        <div class="image" style="background-image:url(${pageContext.request.contextPath }/resources/img/house.png);background-size:cover;background-position:50% 50%">
					            <div class="filter"></div>
					        </div>
					    </a>
					    <div class="content">
					        <a href="#" class="pull-right">
					            <i class="fa fa-heart-o heart-icon"></i>
					        </a>
					    </div>
					</div>
                    <div align="center">
					    <h4 class="h4_community">쇼룸 같은 집</h4>
					    <i class="fa fa-heart"></i> <span class="likeCount">0</span>
					</div>
                </div>
                <!-- 카드 2 -->
                <div class="col-sm-4">
                    <!-- 카드 내용 -->
                    <div class="card card-background">
                    	<a href="myHomeDetail">
	                        <div class="image" style="background-image:url(${pageContext.request.contextPath }/resources/img/house2.png);background-size:cover;background-position:50% 50%">
	                            <div class="filter"></div>
	                        </div>
                        </a>
                        <div class="content">
	                        <a href="#" class="pull-right">
	                            <i class="fa fa-heart-o heart-icon"></i>
	                        </a>
                        </div>
                    </div>
                    <div align="center">
					    <h4 class="h4_community">40년된 시골집을 개조</h4>
					    <i class="fa fa-heart"></i> <span class="likeCount">0</span>
					</div>
                </div>
                <!-- 카드 3 -->
				<div class="col-sm-4">
				    <!-- 카드 내용 -->
				    <div class="card card-background">
				        <a href="myHomeDetail">
				            <div class="image" style="background-image:url(${pageContext.request.contextPath }/resources/img/house.png);background-size:cover;background-position:50% 50%">
				                <div class="filter"></div>
				            </div>
				        </a>
				        <div class="content">
				            <a href="#" class="pull-right">
				                <i class="fa fa-heart-o heart-icon"></i>
				            </a>
				        </div>
				    </div>
				<div align="center">
				    <h4 class="h4_community">고양이와 함께 하는 집</h4>
				    <i class="fa fa-heart"></i> <span class="likeCount">0</span>
				</div>
				</div>
            </div>
            <div class="row">
                <!-- 카드 4 -->
                <div class="col-sm-4">
                    <!-- 카드 내용 -->
                    <div class="card card-background">
                    	<a href="myHomeDetail">
	                        <div class="image" style="background-image:url(${pageContext.request.contextPath }/resources/img/house2.png);background-size:cover;background-position:50% 50%">
	                            <div class="filter"></div>
	                        </div>
                        </a>
                        <div class="content">
	                        <a href="#" class="pull-right">
	                            <i class="fa fa-heart-o heart-icon"></i>
	                        </a>
                        </div>
                    </div>
                    <div align="center">
					    <h4 class="h4_community">쇼룸 같은 집</h4>
					    <i class="fa fa-heart"></i> <span class="likeCount">0</span>
					</div>
                </div>
                <!-- 카드 5 -->
                <div class="col-sm-4">
                    <!-- 카드 내용 -->
                    <div class="card card-background">
                    	<a href="myHomeDetail">
	                        <div class="image" style="background-image:url(${pageContext.request.contextPath }/resources/img/house.png);background-size:cover;background-position:50% 50%">
	                            <div class="filter"></div>
	                        </div>
                        </a>
                        <div class="content">
	                        <a href="#" class="pull-right">
                            	<i class="fa fa-heart-o heart-icon"></i>
	                        </a>
                       </div>
                    </div>
                    <div align="center">
					    <h4 class="h4_community">우리집</h4>
					    <i class="fa fa-heart"></i> <span class="likeCount">0</span>
					</div>
                </div>
                <!-- 카드 6 -->
                <div class="col-sm-4">
                    <!-- 카드 내용 -->
                    <div class="card card-background">
                    	<a href="myHomeDetail">
	                        <div class="image" style="background-image:url(${pageContext.request.contextPath }/resources/img/house2.png);background-size:cover;background-position:50% 50%">
	                            <div class="filter"></div>
	                        </div>
	                    </a>
                        <div class="content">
	                        <a href="#" class="pull-right">
	                            <i class="fa fa-heart-o heart-icon"></i>
	                        </a>
                        </div>
                    </div>
                    <div align="center">
					    <h4 class="h4_community">구축 아파트 리모델링</h4>
					    <i class="fa fa-heart"></i> <span class="likeCount">0</span>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<br>
<!-- Footer area -->
<!-- 하단바 삽입-->
<div class="bottom">
	<jsp:include page="../inc/bottom.jsp" />
</div>
</html>