<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_assets/img/favicon.png"> --%>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 반장님 페이지
  </title>
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
<link
	href="${pageContext.request.contextPath }/resources/css/global.css"
	rel="stylesheet" />
<style type="text/css">

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5!important;
	
}

.content {
	background-color: #fff!important;
}

.main_hr {
	border-color: #000;
}

p {
	font-size: 18px;
/* 	text-align: center; */
}

.card-body {
	height: 200px!important;
}

.class_number {
	font-size: 60px;
}

.class_per_case {
	font-size: 35px;
}

.card_class_number {
	text-align: center;
}

a {
	color: #000!important;
	text-decoration: none!important;
}

.main_text {
	text-align: center;
}

.class_sales_text1 {
	text-align: center;	
}

.class_sales_text2 {
	text-align: center;	
}


</style>

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
<!--             <a class="navbar-brand" href="#pablo">Dashboard</a> -->
            <a class="navbar-brand" href="#pablo"></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border mb-4">
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
<!--                 <a class="nav-link" href="#pablo"> -->
                <a class="nav-link" href="${pageContext.request.contextPath}/company/profile">
                  <i class="now-ui-icons media-2_sound-wave"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item">
                 <a class="nav-link" href="${pageContext.request.contextPath}/company/profile">
                  <i class="now-ui-icons users_single-02"></i>
                  </a>
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
      <div class="panel-header panel-header-lg">
        <p class="class_sales_text1">매출 통계 내역(월별)</p>
        <canvas id="bigDashboardChart"></canvas>
      </div>
      <div class="content">
        <div class="row">
          <div class="col-lg-3 ">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">전일 매출 설명하기</h5>
<!--                 <h4 class="card-title">Shipped Products</h4> -->
                <h4 class="card-title">전일 매출</h4>
    			 <hr class="main_hr">
              </div>
              <div class="card-body">
    			 <div class="card-body yesterday_sales">
		            <p class="main_text">클래스 판매금액 : <b>0</b>원</p>
		            <p class="main_text">할인쿠폰 : <b>0</b>원</p>
<!-- 		            <p>신고 : <b>0</b>건</p> -->
		        </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">전일 클래스 활동 현황 설명하기</h5>
                <h4 class="card-title">전일 클래스 활동 현황</h4>
                <hr class="main_hr">
              </div>
<!--               <div class="card-body"> -->
    			 <div class="card-body yesterday_sales">
		            <p class="main_text">클래스 즐겨찾기 수  : <b>0</b>건</p>
		            <p class="main_text">리뷰 좋아요 수 : <b>0</b>건</p>
		            <p class="main_text">조회수 : <b>0</b>회</p>
<!-- 		        </div> -->
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">클래스 등록 설명하기</h5>
                <h4 class="card-title">클래스 등록</h4>
                <hr class="main_hr">
              </div>
    			 <div class="card-body yesterday_sales">
		            <p class="main_text">클래스 판매수 : <b>0</b>건</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-4">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">취소 설명하기</h5>
                <h4 class="card-title">취소 현황</h4>
                <hr class="main_hr">
              </div>
    			 <div class="card-body yesterday_sales">
		            <p class="main_text">취소요청 : <b>0</b>건</p>
		            <p class="main_text">환불완료 : <b>0</b>건</p>
		        </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3">
            <div class="card  card-tasks">
              <div class="card-header ">
                <h5 class="card-category">~운영중인 클래스 수 설명~</h5>
                <h4 class="card-title">운영중인 클래스 수</h4>
                <hr class="main_hr">
              </div>
              <div class="card_class_number">
                <div class="card-body yesterday_sales">
		            <a href="${pageContext.request.contextPath}/company/class"><span class="class_number">7</span><span class="class_per_case">건</span></a>
		        </div>
		      </div>  
            </div>
          </div>
<!--           <div class="col-md-9"> -->
          <div class="col-lg-9">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">작가 공지사항 | 자주 묻는 질문</h4>
                <hr class="main_hr">
              </div>
              <div class="card-body">
              </div>
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
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
</body>

</html>