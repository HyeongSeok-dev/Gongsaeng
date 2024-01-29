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
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/community.css">

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
                            <li class="list-group-item"><a href="question">궁금해요</a></li>
                            <li class="list-group-item"><a href="together">함께해요</a>
                            <li class="list-group-item"><a href="myHome">집들이</a>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 우측 본문 -->
			<div class="col-sm-9">
			    <!-- 글쓰기 버튼 추가 -->
				<div class="row">
				    <div class="col-sm-12 text-right">
				        <button class="btn btn-primary" id="writeButton" onclick="location.href='write';">
				            <span class="glyphicon glyphicon-pencil"></span> 글쓰기
				        </button>
				    </div>
				</div>
			    <br>
			    <div class="row">
			        <div class="col-sm-12 text-left">
			            <button class="btn btn-primary" id="resetButton" style="margin-right: 10px;">초기화</button>
			            <select class="form-control" id="serviceType" style="display: inline-block; width: auto;">
			                <option>서비스1</option>
			                <option>서비스2</option>
			                <option>서비스3</option>
			                <option>서비스4</option>
			            </select>
			        </div>
			    </div>
				<br>
				<div class="cm_text">
				    <div class="row mt-5">
				        <div class="col-sm-9">
				            <p>함께해요/서비스 종류</p>
				            <a href="togetherDetail" class="cm_context">
				                <!-- 글제목 두껍게 -->
				                <h4 class="h4_community" style="font-weight: bold;">글제목</h4>
				                <!-- 글 내용과 댓글은 일반 두께로 -->
				                <p class="text-truncate" style="font-weight: normal;">여기에 글 내용이 들어갑니다. 이 글은 최대 50자까지만 표시됩니다. 더 많은 내용을 보려면 글을 클릭하세요.</p>
				                <p style="font-weight: normal;"><span class="fa fa-comment"></span> 댓글 개수</p>
				            </a>
				        </div>
				        <div class="col-sm-3">
				            <div class="cm_thumbnail">
				                <img src="${pageContext.request.contextPath }/resources/img/house.png"  alt="이미지">
				                <div class="caption text-right">
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
				<br>  
				<div class="cm_text">
				    <div class="row mt-5">
				        <div class="col-sm-9">
				            <p>함께해요/서비스 종류</p>
				            <a href="togetherDetail" class="cm_context">
				                <!-- 글제목 두껍게 -->
				                <h4 class="h4_community" style="font-weight: bold;">글제목</h4>
				                <!-- 글 내용과 댓글은 일반 두께로 -->
				                <p class="text-truncate" style="font-weight: normal;">여기에 글 내용이 들어갑니다. 이 글은 최대 50자까지만 표시됩니다. 더 많은 내용을 보려면 글을 클릭하세요.</p>
				                <p style="font-weight: normal;"><span class="fa fa-comment"></span> 댓글 개수</p>
				            </a>
				        </div>
				        <div class="col-sm-3">
				            <div class="cm_thumbnail">
				                <img src="${pageContext.request.contextPath }/resources/img/house.png"  alt="이미지">
				                <div class="caption text-right">
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
				<br>  
				<div class="cm_text">
				    <div class="row mt-5">
				        <div class="col-sm-9">
				            <p>함께해요/서비스 종류</p>
				            <a href="togetherDetail" class="cm_context">
				                <!-- 글제목 두껍게 -->
				                <h4 class="h4_community" style="font-weight: bold;">글제목</h4>
				                <!-- 글 내용과 댓글은 일반 두께로 -->
				                <p class="text-truncate" style="font-weight: normal;">여기에 글 내용이 들어갑니다. 이 글은 최대 50자까지만 표시됩니다. 더 많은 내용을 보려면 글을 클릭하세요.</p>
				                <p style="font-weight: normal;"><span class="fa fa-comment"></span> 댓글 개수</p>
				            </a>
				        </div>
				        <div class="col-sm-3">
				            <div class="cm_thumbnail">
				                <img src="${pageContext.request.contextPath }/resources/img/house.png"  alt="이미지">
				                <div class="caption text-right">
				                </div>
				            </div>
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
	<jsp:include page="../inc/bottom.jsp"/>
</div>
</html>