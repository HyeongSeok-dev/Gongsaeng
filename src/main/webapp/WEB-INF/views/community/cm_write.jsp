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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/community.js"></script>

</head>
<body>
    <jsp:include page="../inc/top.jsp"></jsp:include>
    <br>
     <div class="container">
        <form action="writePro" method="post">
        <div class="col-lg-10 col-lg-offset-1">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <select class="form-control" id="subjectType">
                            <option disabled selected>주제 선택</option>
                            <option>궁금해요</option>
                            <option>함께해요</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-control" id="serviceType">
                            <option disabled selected>서비스 종류 선택</option>
                            <option>시공</option>
                            <option>설치 및 수리</option>
                            <option>리모델링</option>
                            <option>리폼</option>
                            <option>인테리어</option>
                            <option>기타</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
            </div>
            <div class="form-group">
                <textarea class="form-control" id="content" rows="25" placeholder="내용을 입력하세요"></textarea>
            </div>
            <div class="form-group">
 			<div class="image-upload">
		    <label for="file-input">
		        <i class="fa fa-camera">  첨부파일</i>
		        <span class="file-count">(0/3)</span>
		    </label>
		    <input id="file-input" type="file" multiple />
			</div>
			<div class="image-preview" id="image-preview">
			    <div class="image-preview__image"></div>
			    <span class="image-preview__default-text"></span>
			</div>
            <div class="form-group btn-container">
                <button type="submit" class="btn btn-primary">등록</button>
                <button type="button" class="btn btn-default" onclick="history.back()">취소</button>
            </div>
            </div>
            </div>
        </form>
    </div>
</body>
<br>
<!-- Footer area -->
<!-- 하단바 삽입-->
<div class="bottom">
	<jsp:include page="../inc/bottom.jsp"/>
</div>
</html>