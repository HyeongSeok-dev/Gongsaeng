<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | 공간을 생각하다</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="noindex">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
		<link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
		<link rel="canonical" href="https://codepen.io/emilcarlsson/pen/ZOQZaV?limit=all&page=74&q=contact+" />
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
        <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
		<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cs_qna.css">
        
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
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main_noicheck.js"></script>
        <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
        <script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
        <script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
		<script src="https://use.typekit.net/hoy3lrg.js"></script>
		<script>try{Typekit.load({ async: true });}catch(e){}</script>
		<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
		<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
        <script src="${pageContext.request.contextPath }/resources/js/cs.js"></script>

        
        
    </head>
    <body>
	<div id="frame">
		<div class="content">
			<div class="contact-profile">
				<img src="${pageContext.request.contextPath }/resources/assets/img/logo1 (3).png" alt="" />
				<p>공생(공간을 생각하다.)</p>
			</div>
			<div class="messages">
				<div class="logo-container">
			        <img class="logo-image" src="${pageContext.request.contextPath }/resources/assets/img/logo2 (2).png" alt="" />
			        <h2 class="logo-text">공생에 문의하기</h2>
			    </div>
				<ul>
					<li class="sent">
					    <img src="${pageContext.request.contextPath }/resources/assets/img/logo1 (3).png" alt="" />
					    <p>안녕하세요. 공간을 생각하는 공생입니다!<br><br>
					        궁금한 내용을 남겨주시면 확인하는 대로<br>
					        빠르게 답변드리겠습니다.<br><br>
					        [상담 운영 시간]<br>
					        평일 : 10:00~18:00<br>
					        주말·공휴일 휴무</p>
					    <span class="time-right">11:01</span>
					</li>
					<li class="replies">
					    <img src="${pageContext.request.contextPath }/resources/img/ddoong2.jpg" alt="" />
					    <p>당일에 클래스 수업 시간 변경이 가능할까요?</p>
					    <span class="time-left">11:01</span>
					</li>
					<li class="replies">
						<img src="${pageContext.request.contextPath }/resources/img/ddoong2.jpg" alt="" />
						<p>반장님과 연락이 되지 않아 문의합니다.</p>
					</li>
					<li class="sent">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo1 (3).png" alt="" />
						<p>네 고객님, 당일 클래스 수업 시간 변경과 관련해 해당 클래스 반장님께 문의하는 것이 맞지만 연락이 되지 않아
						고객센터에 직접 문의를 주셨군요.
						이런 경우는	~~~~~~~ 하므로 ~~~~~~~~ 하겠습니다.</p>
					</li>
					<li class="replies">
						<img src="${pageContext.request.contextPath }/resources/img/ddoong2.jpg" alt="" />
						<p>알겠습니다 감사합니다.</p>
					</li>
					<li class="sent">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo1 (3).png" alt="" />
						<p>더 필요하신 문의사항은 없으신가요?</p>
					</li>
					<li class="replies">
						<img src="${pageContext.request.contextPath }/resources/img/ddoong2.jpg" alt="" />
						<p> 네 없습니다.</p>
					</li>
					<li class="sent">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo1 (3).png" alt="" />
						<p>감사합니다 고객님. 좋은하루 되세요 :)</p>
					</li>
				</ul>
			</div>
			<div class="message-input">
				<div class="wrap">
					<div class="file-upload">
					    <input type="file" name="cs_photo">
					    <i class="fa fa-camera"></i>
					</div>
				<input type="text" placeholder="메시지를 입력해주세요." />
				<button class="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
				</div>
			</div>
		</div>
	</div>
    </body>
</html>