<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | NOTICE page</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.css" media="screen">
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
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cs_notice.css">
       
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
    	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">공지사항</h1>               
                    </div>
                </div>
            </div>
        </div>
     	<br>
            <div class="container">
	        <span>
	        	<button type="button" class="notice_point" onclick=>전체</button>
	        	<button type="button" class="notice_point" onclick=>공지</button>
	        	<button type="button" class="notice_point" onclick=>이벤트</button>
	        </span>
	        <br>
	        <br>
		    <div class="panel-group" id="faqAccordion">
		        <div class="panel panel-default ">
		            <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question0">
		                 <h4 class="panel-title">
		                    <a href="#" class="ing"><span class="cs_notice">공지</span> 공생 회원 이용약관 변경 안내</a>
		              </h4>
		
		            </div>
		            <div id="question0" class="panel-collapse collapse" style="height: 0px;">
		                <div class="panel-body">
		                    <p>항상 공생 서비스를 이용해 주시는 고객님께 진심으로 감사의 말씀을 드리며,
								보다 나은 서비스 제공을 위해 개인정보처리방침 내용 일부가 개정 되었기에 안내해 드립니다.<br>
								1. 주요변경 내용<br>
								- 개인정보 수집 및 이용 동의 항목 (필수/선택으로 분리)<br>
								- 마케팅 알림 수신 동의서 신설<br>
								- 상품 및 서비스 홍보 마케팅 목적 개인정보 수집 동의서 신설<br>
								2. 변경공지일- 2023년 12월 14일<br>
								3. 변경내용 적용일- 2023년 12월 28일<br>
								 - 공생 개인정보 처리방침 전체 보기 : 바로가기<br>
								주요 변경 내용을 확인하시고 이용에 참고하여 주시길 바랍니다.<br>
								감사합니다. 
		                        </p>
		                </div>
		            </div>
		        </div>
		        <div class="panel panel-default ">
		            <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question1">
		                 <h4 class="panel-title">
		                    <a href="#" class="ing"><span class="cs_event">이벤트</span> 신년 이벤트</a>
		              </h4>
		
		            </div>
		            <div id="question1" class="panel-collapse collapse" style="height: 0px;">
		                <div class="panel-body">
		                	<p>2024년 이벤트는 어떤 게 있을까요?</p>
		                </div>
		            </div>
		        </div>
		        <div class="panel panel-default ">
		            <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question2">
		                 <h4 class="panel-title">
		                    <a href="#" class="ing"><span class="cs_event">이벤트</span> 출석체크 이벤트</a>
		              </h4>
		
		            </div>
		            <div id="question2" class="panel-collapse collapse" style="height: 0px;">
		                <div class="panel-body">
		                	<p>한 달동안 빠짐없이 출석체크하면 추첨을 통해 푸짐한 상품을 드려요!</p>
		                </div>
		            </div>
		        </div>
		        <div class="panel panel-default ">
		            <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question3">
		                 <h4 class="panel-title">
		                    <a href="#" class="ing"><span class="cs_notice">공지</span> 공생, 누적 견적 수 3300만 건, 등록된 반장 70만 명 돌파</a>
		              </h4>
		
		            </div>
		            <div id="question3" class="panel-collapse collapse" style="height: 0px;">
		                <div class="panel-body">
		                    <p>공생의 누적 견적서 수가 3천3백만 건을 돌파했다고 밝혔다. 현재까지 공생에 등록한 반장의 수는 약 70만 명이다.<br>
							공생은 국내 최대 인테리어 서비스 플랫폼으로, 국내에서는 유일하게 인테리어, 레슨, 이벤트 비즈니스 등 넓은 영역에서 서비스를 제공 중이다. 공생의 ‘견적서’는 고수와 고객의 연결고리로써, 반장이 견적서를 보내는 수만큼 반장-고객 매칭이 이루어진다.<br>
							코로나19 이후 홈/리빙 서비스 수요 증가, 비대면 레슨 서비스 확대 등과 맞물려 공생의 견적 수 성과는 2021년 상반기에만 2020년 전체 성과를 따라잡았다. 또한 직장을 바라보는 MZ세대의 시선이 달라지면서, 좋아하는 일로 N잡에 도전하는 반장의 수도 꾸준히 늘었다. 2021년 상반기에 공생에 등록한 반장은 12만명이다.<br>
							이형석 대표는 “반장과 고객 모두가 공생이라는 생태계 안에서 서로 연결되어 삶의 질을 높이기를 바란다. 머지않은 미래에 고객의 라이프스타일과 고수의 비즈니스 영역 전반에서 가치를 제공하는 플랫폼이 될 것”이라고 전했다.<br>
							한편 공생은 지난 6월 320억 원 규모의 시리즈C 투자를 유치하면서 기업 가치를 인정받은 바 있다. </p>
		                </div>
		            </div>
		        </div>
		    </div>
		    <!--/panel-group-->
		</div>
		<!-- Footer area -->
		<!-- 하단바 삽입-->
		<div class="bottom">
			<jsp:include page="../inc/bottom.jsp"/>
		</div>
    </body>
</html>