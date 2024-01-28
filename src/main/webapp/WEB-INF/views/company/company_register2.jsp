<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공생 | 클래스 등록 - 스케줄 및 부가정보</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<!-- CSS Files -->
<link href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css" rel="stylesheet" />
<!-- Global CSS -->
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />
<!-- DatePicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- FullCalendar 필요한 라이브러리 추가 -->
<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />

<style type="text/css">

    /* FullCalendar 바탕색 변경 */
    .fc {
        background-color: white;
        border: 1px solid #ddd; /* 옵션: 테두리 추가 */
    }


.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
    background-color: #F1F3F5!important;	
}

.card label {
    font-size: 21px!important;
}

.form-control {
    height: 50px;
    font-size: 16px; /* 원하는 폰트 크기로 설정 */
    /* 추가적인 스타일링 */
    background-color: #fff;
    border-radius: 0; /* 모서리를 각진 형태로 설정 */
}


.input-group {
  height: 50px!important; 
  border-radius: 5px!important;
}

.day-checkbox {
    display: none; /* 체크박스 숨김 */
 }
 
.btn-day-selected {
    color: white;
    background-color: #007bff; /* 선택된 버튼의 스타일 */
  }
 
 /* 체크박스(요일) */
 
  .checkbox-label {
    /* 버튼처럼 보이도록 스타일링 */
    display: inline-block;
    padding: .5em 1em;
    text-align: center;
    border: 1px solid #ddd;
    border-radius: .25rem;
    background-color: #f8f9fa;
    cursor: pointer;
    transition: background-color .3s, color .3s;
  }

  .checkbox-label:hover {
    background-color: #e2e6ea; /* 호버 시 배경색 변경 */
  }

   /* 체크박스 체크시 스타일 */
  .checkbox-label.checked {
    background-color: lightgray;
    color: #fff;
  }
 
  #mon_checkbox,#tue_checkbox,#wed_checkbox,#thr_checkbox,#fri_checkbox,#sat_checkbox,#sun_checkbox {
 	display: none;
 }
  
  /* 모달창 */
  .modal_check, .modal_date, .modal_time,.modal_select {
   	margin-top: 5px; 
  }
  
  .modal_day_instruction {
  	font-size: 0.8em;
  }
  
  .modal_title {
  	margin-bottom: 20px;
  	font-size: 18px;
  	color: #666A73!important;
  }
  
  label {
  	color: #666A73!important;
  }
  
  
  @font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
  
 .btn-secondary  {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
    font-size: 18px;
}
 

.custom-font-size {
    font-size: 18px;
} 


.content {
	background-color: #fff!important;
} 

.wrapper, .main-panel {
	overflow-y: hidden!important; /* 가로 스크롤 숨김 */
/* 	overflow-y: auto!important; /* 세로 스크롤 자동 조정 */ */
}

button {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
}  
  
</style>
</head>
<body class="클래스 등록">
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
		 <!-- Include sidebar_wrapper.jsp -->
            <jsp:include page="./sidebar_wrapper.jsp"/>
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">클래스 등록 (스케줄 및 부가정보)</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="now-ui-icons ui-1_zoom-bold"></i>
									</div>
								</div>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons media-2_sound-wave"></i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i
									class="now-ui-icons location_world"></i>
									<p>
										<span class="d-lg-none d-md-block">Some Actions</span>
									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
								</div></li>
									<li class="nav-item">
								<a class="nav-link" href="#pablo">
									<i class="now-ui-icons users_single-02"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
								</a>
							  </li>
							</ul>
						</div>
					</div>
				</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-11">
						<div class="card">
							<div class="card-header">
								<h5 class="title">클래스 등록 (스케줄 및 부가정보)</h5>
							</div>
							<div class="card-body">
								<form>
								<div class="col-md-10 pl-1">
									  <div class="form-group">
									    <label for="modal_title">일정 설정</label>
									    <!-- 새로운 div에 '일정 등록' 버튼 추가 -->
											<div class="row">
											    <div class="col-md-12 text-right">
											        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#scheduleModal">일정 등록</button>
											    </div>
											</div>
									        <div class="row">
										        <div class="col-md-12">
											            	<!-- 모달창 -->
											            	<div class="modal fade" id="scheduleModal" tabindex="-1" role="dialog" aria-labelledby="scheduleModalLabel" aria-hidden="true">
															  <div class="modal-dialog" role="document">
															    <div class="modal-content">
															      <div class="modal-header">
															        <h5 class="modal-title" id="scheduleModalLabel">일정 등록</h5>
															        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
															          <span aria-hidden="true">&times;</span>
															        </button>
															      </div>
															    <div class="modal-body">
																 <form>
																	<div class="row">
																		<div class="col-md-12 pr-1 mb-3">
																			<div class="form-group">
																			<span class="modal_title">요일</span><br>
																				<!-- ====================================== -->
																				<div class="modal_check">
																				<input type="checkbox" id="mon_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="mon_checkbox" class="checkbox-label">월</label>
																				<input type="hidden" name="class_day" value="1">
																				
																				<input type="checkbox" id="tue_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="tue_checkbox" class="checkbox-label">화</label>
																				<input type="hidden" name="class_day" value="２1">
																				
																				<input type="checkbox" id="wed_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="wed_checkbox" class="checkbox-label">수</label>
																				<input type="hidden" name="class_day" value="３1">
																				
																				<input type="checkbox" id="thr_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="thr_checkbox" class="checkbox-label">목</label>
																				<input type="hidden" name="class_day" value="4">
																				
																				<input type="checkbox" id="fri_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="fri_checkbox" class="checkbox-label">금</label>
																				<input type="hidden" name="class_day" value="5">
																				
																				<input type="checkbox" id="sat_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="sat_checkbox" class="checkbox-label">토</label>
																				<input type="hidden" name="class_day" value="6">
																				
																				<input type="checkbox" id="sun_checkbox" onclick="updateCheckboxValue(this);">
																				<label for="sun_checkbox" class="checkbox-label">일</label>
																				<input type="hidden" name="class_day" value="0">
																				<br>
																				</div>
																				<p class="modal_day_instruction">하나 이상의 운영요일이 선택되어야 합니다. </p>
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-md-8 pr-1 mb-3">
																			<span class="modal_title">날짜</span><br>
																			<div class="modal_date">
																			<div class="form-group">
																				<input type="date">&nbsp; ~ &nbsp;<input type="date">
																				<br>
																			</div>
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-md-8 pr-1 mb-3">
																			<div class="form-group">
																				<span class="modal_title">클래스 운영시간(한 타임당)</span><br> 
																				<div class="modal_time">
																					<input type="time">&nbsp; ~ &nbsp;<input type="time">
																					<br> 
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-md-8 pr-1 mb-2">
																			<div class="form-group">
																				<span class="modal_title">클래스 최대 인원(한 타임당)</span> 
																				<div class="modal_select">
																					<select class="form-control">
																						<option>1명</option>
																						<option>2명</option>
																						<option>3명</option>
																						<option>4명</option>
																						<option>5명</option>
																						<option>6명</option>
																						<option>7명</option>
																						<option>8명</option>
																						<option>9명</option>
																						<option>10명</option>
																					</select>
																				</div>
																			</div>
																		</div>
																	</div>
															      </div>
															    <!-- 모달 내부 -->
																	<div class="modal-footer">
<!-- 															        <button type="button" class="btn btn-primary">저장</button> -->
<!-- 															        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button> -->
																	    <button type="button" class="btn btn-primary" id="saveButton">저장</button>
																	    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
																	</div>
															    </div>
															  </div>
															</div>
										            	<!-- 달력을 표시할 div -->
										            <div id="calendar"></div> 
										            <br><br>
										        </div>
										    </div>
										</div>
									</div>
								<div class="col-md-4 pl-1">
									    <label>판매가격</label>
									    <div class="input-group">
									      <input type="text" class="form-control" placeholder="ex) 100,000">
									      <div class="input-group-append">
									        <span class="input-group-text">원</span>
									      </div>
									    </div>
									  </div>
									</div>
								</form>
							</div>
						</div>
					<div class="col-md-11 pl-1">	
					<div class="submit_btn d-flex justify-content-end">
						<button type="button" class="btn btn-danger btn-col-md-4 mr-2 custom-font-size">취소</button>
						<button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register1'">이전</button>
						<button type="button" class="btn btn-default btn-col-md-4  custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register3'">다음</button>
					</div>
					</div>
					</div>
				</div>
			</div>
			<footer class="footer">
			</footer>
		</div>
	</div>
<!-- 하단에 위치시킨 단일 jQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js"></script>

<!--   Core JS Files   -->
<!-- Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- ... 나머지 스크립트 파일 ... -->
	<!-- Chart JS -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
	
<script>
    $(document).ready(function() {
        // 달력 초기화
        $('#calendar').fullCalendar({
            // 한글화 적용
            locale: 'ko',
        	
            // 헤더 설정
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            // 기본 날짜 설정 (옵션)
            defaultDate: moment().format('YYYY-MM-DD'),
            // 이벤트 로드
            events: function(start, end, timezone, callback) {
                $.ajax({
                    url: '/your-endpoint', // 실제 서버의 엔드포인트로 변경하세요.
                    method: 'GET',
                    dataType: 'json',
                    data: {
                        // 서버에 전달할 파라미터 (옵션)
                    },
                    success: function(response) {
                        var events = [];
                        $.each(response, function() { // $(response) 대신 $.each 사용
                            events.push({
                                title: this.title, // $(this) 대신 this 사용
                                start: this.start, // 날짜 형식이 맞는지 확인
                                end: this.end, // 날짜 형식이 맞는지 확인
                                // 추가 이벤트 속성
                            });
                        });
                        callback(events);
                    }
                });
            },
            // 날짜 및 시간 형식
            timeFormat: 'H(:mm)',
            // 클릭 이벤트 핸들러
            eventClick: function(calEvent, jsEvent, view) {
                alert('Event: ' + calEvent.title);
                // 추가 동작
            },
            // FullCalendar 기타 설정
        });
    
        // -----------------------------------------
        
                // 모달에서 '저장' 버튼을 눌렀을 때의 이벤트 핸들러
        $('#saveButton').click(function() {
            var title = '클래스'; // 이벤트 제목 설정 (필요에 따라 변경 가능)
            var start = $('#startDate').val(); // 시작 날짜
            var end = $('#endDate').val(); // 종료 날짜
            var allDay = false; // 하루 종일 여부

            // 이벤트 데이터 객체 생성
            var eventData = {
                title: title,
                start: start,
                end: end,
                allDay: allDay
            };

            // 캘린더에 이벤트 추가
            $('#calendar').fullCalendar('renderEvent', eventData, true);

            // 모달창 닫기
            $('#scheduleModal').modal('hide');
        });
        
        
        
        // -----------------------------------------
    });
    
    function updateCheckboxValue(checkbox) {
        var label = document.querySelector('label[for="' + checkbox.id + '"]');
        if (checkbox.checked) {
          label.classList.add('checked');
        } else {
          label.classList.remove('checked');
        }
      }

      $(document).ready(function() {
        // 체크박스 상태에 따라 레이블 스타일 초기 설정
        $('input[type="checkbox"]').each(function() {
          updateCheckboxValue(this);
        });
      });
</script>
</body>

</html>