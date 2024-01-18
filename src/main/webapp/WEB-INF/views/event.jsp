<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

<title>공생 | 이벤트</title>
	<!-- calendar를 위한 라이브러리들 지우면 안됨 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src='https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/moment.min.js'></script>
	<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css'rel='stylesheet'/>
	<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css' rel='stylesheet' media='print'/>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js'></script>
	<link rel="stylesheet" href="global.css" type="text/css">
	<link rel="stylesheet" href="event.css" type="text/css">
	
	<script type="text/javascript">
// 		$(document).ready(function(){
// 			  $('#calendar').fullCalendar({
// 			    header: {
// 			      right: 'custom2 prevYear,prev,next,nextYear'
// 			    },
// 		        // 출석체크를 위한 버튼 생성
// 			    customButtons: { 
// 			        custom2: {
// 			          text: '출석체크하기',
// 			          id: 'check',
// 			          click: function() {	
// 		                    // ajax 통신으로 출석 정보 저장하기 
// 		                    // POST "/users/attendances" -> { status: "success", date:"2018-07-01"}
// 		                    // 통신 성공시 버튼 바꾸고, property disabled 만들기 
// 			          }
// 			        }
// 			    },
// 		       // 달력 정보 가져오기 
// 			    eventSources: [
// 			    	{
// 						// ajax 통신으로 달력 정보 가져오기 
// 		                // GET "/users/attendances" -> {dateList:[ date: "2016-03-21", ... ]}
// 						color: 'purple',   
// 					 	textColor: 'white' 
// 			    	}
// 			    ]
// 			  }); 
// 		});
	</script>
</head>

<body>
<!-- 	<div class="container calendar-container"> -->
<!-- 		<div id="calendar" style="max-width:900px; margin:40px auto;"></div> -->
<!-- 	</div> -->
	<div class="container">
		<h1>출석체크</h1>
		<div class="check_container">
			<div class="container year_month_title">
				<span class="check_month"><h2>01</h2></span>
				<span class="check_year"><h2>2024</h2></span>
			</div>
			<div class="container check_table">
				<table class="table check_cal">
					<thead>
						<tr>
							<th class="check_">월</th>
							<th class="check_">화</th>
							<th class="check_">수</th>
							<th class="check_">목</th>
							<th class="check_">금</th>
							<th class="check_">토</th>
							<th class="check_">일</th>
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
				<div>
					<a><h1>출석하기</h1></a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<h1>이벤트</h1>
		<div class="event_container">
			<div class="container">
				<table class="table table-hover event_table">
					<thead>
						<tr>
							<th class="event_num">번호</th>
							<th class="event_subject">이벤트</th>
							<th class="event_date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="num">번호</td>
							<td class="event_subject">이벤트</td>
							<td class="event_date">등록일</td>
						</tr>
					</tbody>	
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>