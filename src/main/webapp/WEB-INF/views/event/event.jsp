<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | 이벤트</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- 추가함 -->
		
		
<!--         <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'> -->
<!-- 		<link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- 	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
<!-- 	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet"> -->

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<%--         <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet"> --%>
<%--         <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet"> --%>
        <link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/lightslider.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/event.css" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
		<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        
        <%-- 상단바 삽입 --%>
		<jsp:include page="../inc/top.jsp"/>


		<section>
		
	        <div class="page-head"> 
	            <div class="container">
	                <div class="row">
	                    <div class="page-head-content">
	                        <h1 class="page-title">출석체크 이벤트</h1>               
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- End page header -->
			<nav class="css-19vu3z9">
				<div class="css-1m8o79i">
					<div class="css-k008qs">
						<div class="css-1yi93iz">출석체크 이벤트</div>
						<div class="css-p4ywi4">공생 이벤트</div>
					</div>
				</div>
			</nav>
	
	        <!-- property area -->
	        <div class="content-area single-property">&nbsp;
				<div class="container">
					<h3 class="h">1월 출석 현황</h3>
					<div class="check_container">
	<!-- 					<div class="container year_month_title"> -->
	<!-- 						<span class="check_month"><h2>01</h2></span> -->
	<!-- 						<span class="check_year"><h2>2024</h2></span> -->
	<!-- 					</div> -->
						<div class="container check_table">
							<table class="table" id="check_cal">
								<thead>
									<tr>
										<th class="check_week">월</th>
										<th class="check_week">화</th>
										<th class="check_week">수</th>
										<th class="check_week">목</th>
										<th class="check_week">금</th>
										<th class="check_week">토</th>
										<th class="check_week">일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="check_day">1</td>
										<td class="check_day">2</td>
										<td class="check_day">3</td>
										<td class="check_day">4</td>
										<td class="check_day">5</td>
										<td class="check_day">6</td>
										<td class="check_day">7</td>
									</tr>
									<tr>
										<td class="check_day">8</td>
										<td class="check_day">9</td>
										<td class="check_day">10</td>
										<td class="check_day">11</td>
										<td class="check_day">12</td>
										<td class="check_day">13</td>
										<td class="check_day">14</td>
									</tr>
									<tr>
										<td class="check_day">15</td>
										<td class="check_day">16</td>
										<td class="check_day">17</td>
										<td class="check_day">18</td>
										<td class="check_day">19</td>
										<td class="check_day">20</td>
										<td class="check_day">21</td>
									</tr>
									<tr>
										<td class="check_day">22</td>
										<td class="check_day">23</td>
										<td class="check_day">24</td>
										<td class="check_day">25</td>
										<td class="check_day">26</td>
										<td class="check_day">27</td>
										<td class="check_day">28</td>
									</tr>
									<tr>
										<td class="check_day">29</td>
										<td class="check_day">30</td>
										<td class="check_day">31</td>
										<td class="check_day">1</td>
										<td class="check_day">2</td> 
										<td class="check_day">3</td>
										<td class="check_day">4</td>
									</tr>
									<tr>
										<td class="check_day">5</td>
										<td class="check_day">6</td>
										<td class="check_day">7</td>
										<td class="check_day">8</td>
										<td class="check_day">9</td>
										<td class="check_day">10</td>
										<td class="check_day">11</td>
									</tr>
								</tbody>
							</table>
							<div class="check_content">
								<h4 class="h">매일매일 출석체크 하세요!</h4>
								<h5 class="h">출석체크 기간 : 매달 1일 ~ 말일</h5>
								
								<h5 class="h">XXX님 출석 횟수</h5>
								<div class="h">0회 출석체크중</div>
								
								<ul>
									<li>출석 1회마다: 10P</li>	
									<li>출석 10회마다: 룰렛응모권 1개(임시)</li>	
								</ul>
							</div>
							<div class="checkBtn_div">
								<button class="nav-button navbar-btn check_btn" >출석하기</button>
								<button class="nav-button navbar-btn check_btn" >룰렛 응모하기</button>
							</div>
						</div>
					</div>
				</div>
	        </div>
			
			
	        
	        <div class="container">
	        	<h2>공생 이벤트</h2>
				<div class="event_container">
					<table class="table table-hover event_table">
						<thead>
							<tr>
								<th class="event_th event_num">번호</th>
								<th class="event_th event_subject">이벤트</th>
								<th class="event_th event_date">등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="event_td event_num">1</td>
								<td class="event_td event_subject">이벤트</td>
								<td class="event_td event_date">등록일</td>
							</tr>
							<tr>
								<td class="event_td event_num">2</td>
								<td class="event_td event_subject">이벤트</td>
								<td class="event_td event_date">등록일</td>
							</tr>
							<tr>
								<td class="event_td event_num">3</td>
								<td class="event_td event_subject">이벤트</td>
								<td class="event_td event_date">등록일</td>
							</tr>
							<tr>
								<td class="event_td event_num">4</td>
								<td class="event_td event_subject">이벤트</td>
								<td class="event_td event_date">등록일</td>
							</tr>
						</tbody>	
					</table>
				</div>
			</div>
	        
	        
		</section>
          <!-- Footer area-->
        <div class="footer-area">
            <jsp:include page="../inc/bottom.jsp"/>
        </div>
          
        
        
        <script src="${pageContext.request.contextPath }/resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
        <script type="text/javascript" src="${pageContext.request.contextPath }/resources/assets/js/lightslider.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

        <script>
            $(document).ready(function () {

                $('#image-gallery').lightSlider({
                    gallery: true,
                    item: 1,
                    thumbItem: 9,
                    slideMargin: 0,
                    speed: 500,
                    auto: true,
                    loop: true,
                    onSliderLoad: function () {
                        $('#image-gallery').removeClass('cS-hidden');
                    }
                });
            });
        </script>

    </body>
</html>