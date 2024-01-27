<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.css" rel="stylesheet" />
  <!-- CSS(List) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />

<style type="text/css">
    	body{
    background:#f5f5f5;
/*     margin-top:20px; */
}
.card {
    border: none;
    -webkit-box-shadow: 1px 0 20px rgba(96,93,175,.05);
    box-shadow: 1px 0 20px rgba(96,93,175,.05);
    margin-bottom: 30px;
}
.table th {
    font-weight: 500;
    color: #827fc0;
}
.table thead {
    background-color: #f3f2f7;
}
.table>tbody>tr>td, .table>tfoot>tr>td, .table>thead>tr>td {
    padding: 14px 12px;
    vertical-align: middle;
}
.table tr td {
    color: #8887a9;
}
.thumb-sm {
    height: 32px;
    width: 32px;
}
.badge-soft-warning {
    background-color: rgba(248,201,85,.2);
    color: #f8c955;
}

.badge {
    font-weight: 500;
}
.badge-soft-primary {
    background-color: rgba(96,93,175,.2);
    color: #605daf;
}
</style>  
<!-- Global CSS -->
<link
	href="${pageContext.request.contextPath }/resources/css/global.css"
	rel="stylesheet" />  
</head>

<body class="">
        <div class="sidebar" data-color="orange">
            <!-- Include sidebar_wrapper.jsp -->
            <jsp:include page="./sidebar_wrapper.jsp"/>
        </div>
      <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">클래스 일정 관리</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="now-ui-icons ui-1_zoom-bold"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons media-2_sound-wave"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="now-ui-icons location_world"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
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
      <div class="panel-header">
        <div class="header text-center">
          <h2 class="title">클래스 일정 관리</h2>
<!--           <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p> -->
        </div>
      </div>
		<div class="content">
			<div class="row">
				<div class="col-md-9">
					<div class="card">
						<div class="card-header"></div>
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-xl-12">
										<div class="card">
											<div class="card-body">
											<!-- 달력을 표시할 div -->
										    <div id="calendar"></div> 
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
<!-- 						<div class="card-header"></div> -->
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-xl-12">
<!-- 										<div class="card"> -->
											<div class="card-body">
												<span>24년 1월 현황</span>
												<br>
												<br>
												<span>인원   0명</span><br>
												<span>매출   0원</span>
											</div>
<!-- 										</div> -->
									</div>
								</div>
							</div>
						</div>
<!-- 					</div> -->
				</div>
			</div>
		</div>
	</div>
      <footer class="footer">
        <div class=" container-fluid ">
          <nav>
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="http://presentation.creative-tim.com">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright" id="copyright">
            &copy; <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
 <script type="text/javascript">
	// 달력 자바스크립트
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
		</script>
<%--   <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/jquery.min.js"></script> --%>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/bootstrap.min.js"></script>
<%--   <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script> --%>
  <!--  Google Maps Plugin    -->
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
  <!-- Chart JS -->
<%--   <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/chartjs.min.js"></script> --%>
  <!--  Notifications Plugin    -->
<%--   <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script> --%>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
	<!-- 하단에 위치시킨 단일 jQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js"></script>

</body>

</html>