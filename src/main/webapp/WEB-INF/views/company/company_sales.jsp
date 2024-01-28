<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<%-- <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Now UI Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link
	href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css"
	rel="stylesheet" />
<!-- CSS(List) -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	

 <!-- 부트스트랩 4 CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">    
    
  <!-- global CSS -->
    <link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />	
<style type="text/css">
body {
	background: #f5f5f5; 
	/*     margin-top:20px; */
}

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5!important;
	
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
	background-color: rgba(248, 201, 85, .2);
	color: #f8c955;
}

.badge {
	font-weight: 500;
}

.badge-soft-primary {
	background-color: rgba(96, 93, 175, .2);
	color: #605daf;
	
}

.form-control-plaintext {
	margin-top: 25px;

}

.content {
	background-color: #fff!important;
}

/* 특정 클래스가 적용된 요소의 폰트 사이즈를 줄입니다. */
.card {
  font-size: 14px; /* 원하는 폰트 사이즈로 조정하세요. */
}

/* 테이블 내 텍스트의 폰트 사이즈를 조정합니다. */
.table th, .table td {
  font-size: 14px!important; /* 원하는 폰트 사이즈로 조정하세요. */
  text-align: center!important;
}

/* 제목의 폰트 사이즈를 줄입니다. */
h2.title {
/*   font-size: 24px; /* 원하는 폰트 사이즈로 조정하세요. */ */
}

th {
font-size: 14px;
}

.table {
  width: 100%!important; /* 테이블의 너비를 부모 요소의 100%로 설정 */
}

tbody {
	background-color: #fff;
	color: #000;
}


</style>

</head>

<body class="">
	<div class="sidebar" data-color="orange">
		<!-- Include sidebar_wrapper.jsp -->
		<jsp:include page="./sidebar_wrapper.jsp" />
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
					<a class="navbar-brand" href="#pablo">매출 현황</a>
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
						<li class="nav-item"><a class="nav-link" href="#pablo"> <i
								class="now-ui-icons media-2_sound-wave"></i>
								<p>
									<span class="d-lg-none d-md-block">Stats</span>
								</p>
						</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="now-ui-icons location_world"></i>
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
						<li class="nav-item"><a class="nav-link" href="#pablo"> <i
								class="now-ui-icons users_single-02"></i>
								<p>
									<span class="d-lg-none d-md-block">Account</span>
								</p>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->
		<div class="panel-header">
			<div class="header text-center">
				<h2 class="title">매출 현황</h2>
			</div>
		</div>
		<div class="content">
			  <div class="row">
				 <div class="col-xl-12">
				  <div class="card col-xl-12">
				    <div class="card-header"></div>
				    <div class="container-fluid">
				      <div class="row">
				        <div class="col-xl-12">
				          <div class="card">
				            <form>
				              <div class="form-row align-items-center">
				                <div class="col-xl-2">
				                  <label for="purchaseDateStart">클래스 구매일 검색</label>
				                  <input type="date" class="form-control" id="purchaseDateStart" name="purchaseDateStart">
				                </div>
				                <div class="col-xs-1 text-center">
				                  <span class="form-control-plaintext">~</span>
				                </div>
				                <div class="col-xl-2">
				                  <label for="purchaseDateEnd"></label>
				                  <input type="date" class="form-control" id="purchaseDateEnd" name="purchaseDateEnd">
				                </div>
				                <!-- 추가 컨텐츠를 위한 공간 -->
				                <div class="form-group col-xl-7">
									<input type="button" value="전체" class="btn btn-dark mt-5 ">
									<input type="button" value="오늘" class="btn btn-dark mt-5">
									<input type="button" value="1주일" class="btn btn-dark mt-5">
									<input type="button" value="1개월" class="btn btn-dark mt-5">
									<input type="button" value="3개월" class="btn btn-dark mt-5">
									<input type="button" value="6개월" class="btn btn-dark mt-5">
									<input type="button" value="&nbsp;&nbsp;1 년&nbsp;&nbsp;" class="btn btn-dark mt-5">
				                </div>
				                 <!-- 새로운 버튼을 위한 새로운 form-row 추가 -->
									<div class="form-row col-xl-12 mt-1">
									  <div class="col-xl-6">
					                      <input type="button" value="초기화" class="btn btn-info m-1">
					                      <input type="button" value="검색" class="btn btn-info m-1">
				                      <!-- 여기에 추가 버튼을 계속해서 추가할 수 있습니다. -->
				                    </div>
				              </div>
				            </form>
				          </div>
				        </div>
				      </div>
				    </div>
				  </div>
				</div>
		      </div>
<!-- 		      			  <div class="row"> -->
				 <div class="col-xl-12">
				  <div class="card col-xl-12">
				    <div class="card-header"></div>
				    <div class="container-fluid">
				      <div class="row">
				        <div class="col-xl-12">
				          <div class="card">
				            <form>
								 <table class="table table-bordered">
											          <thead class="thead-dark">
											            <tr>
											              <th scope="col">#</th>
											              <th scope="col">결제상태</th>
											              <th scope="col">클래스 번호</th>
											              <th scope="col">결제 수단</th>
											              <th scope="col">클래스 구매일</th>
											              <th scope="col">수업일</th>
											              <th scope="col">클래스명</th>
											              <th scope="col">구매자</th>
											              <th scope="col">연락처</th>
											              <th scope="col">수정/삭제</th>
											            </tr>
											          </thead>
											          <tbody>
											            <!-- 여기에 각 행을 추가하세요. 예를 들어: -->
											            <tr>
											              <th scope="row">1</th>
											              <td>결제완료</td>
											              <td>클래스 번호</td>
											              <td>O페이 결제</td>
											              <td>2024-12-31</td>
											              <td>2024-12-31</td>
											              <td>인테리어 클래스</td>
											              <td>나야나</td>
											              <td>010-0000-0000</td>
											              <td><input type="button" value="수정">&nbsp;&nbsp;<input type="button" value="삭제"></td>
											            </tr>
											            <!-- 더 많은 행을 추가할 수 있습니다. -->
											          </tbody>
											        </table>
				            </form>
				          </div>
				        </div>
				      </div>
				    </div>
				  </div>
				</div>
<!-- 		      </div> -->
		    </div>
		  </div>
		</div>
	</div>
	<footer class="footer">
		<div class=" container-fluid ">
			<nav>
				<ul>
					<li><a href="https://www.creative-tim.com"> Creative Tim </a>
					</li>
					<li><a href="http://presentation.creative-tim.com"> About
							Us </a></li>
					<li><a href="http://blog.creative-tim.com"> Blog </a></li>
				</ul>
			</nav>
			<div class="copyright" id="copyright">
				&copy;
				<script>
					document.getElementById('copyright').appendChild(
							document.createTextNode(new Date().getFullYear()))
				</script>
				, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>.
				Coded by <a href="https://www.creative-tim.com" target="_blank">Creative
					Tim</a>.
			</div>
		</div>
	</footer>

	<!--   Core JS Files   -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/core/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0"
		type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
</body>

</html>