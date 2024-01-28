<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 클래스 내역
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
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
	background-color: #DCDCDC!important;
	
}
.avatar-md {
    height: 5rem;
    width: 5rem;
}

.fs-19 {
    font-size: 19px;
}

.primary-link {
    color: #314047;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
}

a {
    color: #02af74;
    text-decoration: none;
}

.bookmark-post .favorite-icon a, .job-box.bookmark-post .favorite-icon a {
    background-color: #da3746;
    color: #fff;
    border-color: danger;
}
.favorite-icon a {
    display: inline-block;
    width: 30px;
    height: 30px;
    font-size: 18px;
    line-height: 30px;
    text-align: center;
    border: 1px solid #eff0f2;
    border-radius: 6px;
    color: rgba(173,181,189,.55);
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
}


.candidate-list-box .favorite-icon {
    position: absolute;
    right: 22px;
    top: 22px;
}
.fs-14 {
    font-size: 14px;
}
.bg-soft-secondary {
    background-color: rgba(116,120,141,.15)!important;
    color: #74788d!important;
}

.mt-1 {
    margin-top: 0.25rem!important;
}

.content {
	background-color: #fff!important;
}

.class_btn {
	
}

</style>
<!-- Global CSS -->
<link
	href="${pageContext.request.contextPath }/resources/css/global.css"
	rel="stylesheet" />    
</head>

<body class="">
<!--   <div class="wrapper "> -->
    <div class="sidebar" data-color="orange">
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
            <a class="navbar-brand" href="#pablo">클래스 내역</a>
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
          <h2 class="title">클래스 내역</h2>
<!--           <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p> -->
        </div>
      </div>
      <!-- 컨텐츠 지워야함! -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
		<section class="section">
			<div class="container">
				<div class="justify-content-center row">
					<div class="col-lg-12">
						<div class="candidate-list-widgets mb-4">
							<form action="#" class>
<!-- 								<div class="g-2 row"> -->
									<div class="justify-content-center row">
									<div class="col-lg-3 mt-3">
										<div class="filler-job-form">
											<i class="uil uil-briefcase-alt"></i><input
												id="exampleFormControlInput1" placeholder="클래스 이름,분류... "
												type="search"
												class="form-control filler-job-input-box form-control" />
										</div>
									</div>
									<div class="col-lg-3 mt-3">
										<div class="filler-job-form">
											<i class="uil uil-location-point"></i> <select
												class="form-select selectForm__inner" data-trigger="true"
												name="choices-single-location" id="choices-single-location"
												aria-label="Default select example">
												<option value="AF">정규 모집 & 원데이</option>
												<option value="AX">정규 모집</option>
												<option value="AL">원데이 클래스</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3  mt-3">
										<div class="filler-job-form">
											<i class="uil uil-clipboard-notes"></i> <select
												class="form-select selectForm__inner" data-trigger="true"
												name="choices-single-categories"
												id="choices-single-categories"
												aria-label="Default select example">
												<option value="7">클래스 분류</option>
												<option value="1">바닥 시공</option>
												<option value="2">벽/천장 시공</option>
												<option value="3">부분 인테리어</option>
												<option value="4">야외 시공</option>
												<option value="5">종합 인테리어</option>
												<option value="6">기타 시공</option>
											</select>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="class_btn">
											<a class="btn btn-primary ml-2 mt-3" href="#"><i class="uil uil-filter"></i>초기화</a> 
											<a class="btn btn-success mt-3" href="#"><i class="uil uil-cog"></i>검색</a>
											<!-- <a class="btn btn-success ms-2" href="#"><i class="uil uil-cog"></i>클래스 등록</a> -->
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="align-items-center row">
							<div class="col-lg-8">
								<div class="mb-3 mb-lg-0">
									<h6 class="fs-16 mb-0">Showing 1 – 8 of 11 results</h6>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="candidate-list-widgets">
									<div class="row">
										<div class="col-lg-6">
											<div class="selection-widget">
												<select class="form-select" data-trigger="true"
													name="choices-single-filter-orderby"
													id="choices-single-filter-orderby"
													aria-label="Default select example">
													<option value="df">최신순</option>
													<option value="ne"></option>
													<option value="od">Oldest</option>
													<option value="rd">Random</option>
												</select>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="selection-widget mt-2 mt-lg-0">
												<select class="form-select" data-trigger="true"
													name="choices-candidate-page" id="choices-candidate-page"
													aria-label="Default select example">
													<option value="df">All</option>
													<option value="ne">8개씩 보기</option>
													<option value="ne">12개씩 보기</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="candidate-list">
							<div class="candidate-list-box card mt-4">
								<div class="p-4 card-body">
									<div class="align-items-center row">
										<div class="col-auto">
											<div class="candidate-list-images">
												<a href="#"><img
													src="https://bootdey.com/img/Content/avatar/avatar1.png"
													alt class="avatar-md img-thumbnail rounded-circle" /></a>
											</div>
										</div>
										<div class="col-lg-5">
											<div class="candidate-list-content mt-3 mt-lg-0">
												<h5 class="fs-19 mb-0">
													<p class="text-muted mb-2">클래스 번호 : 777</p>
													<a class="primary-link" href="#">인테리어 원데이 클래스</a><span
														class="badge bg-success ms-1"><i
														class="mdi mdi-star align-middle"></i>4.8</span>
												</h5>
												<p class="text-muted mb-2">원데이 | 소품만들기</p>
												<ul class="list-inline mb-0 text-muted">
													<li class="list-inline-item"><i
														class="mdi mdi-map-marker"></i>서면 아이티윌</li>
													<li class="list-inline-item"><i class="mdi mdi-wallet"></i>
														50,000원 / 4시간</li>
												</ul>
											</div>
										</div>
										<div class="col-lg-4">
											<div
												class="mt-2 mt-lg-0 d-flex flex-wrap align-items-start gap-1">
<!-- 												<span class="badge bg-soft-secondary fs-14 mt-1">Leader</span> -->
<!-- 												<span class="badge bg-soft-secondary fs-14 mt-1">Manager</span> -->
<!-- 												<span class="badge bg-soft-secondary fs-14 mt-1">Developer</span> -->
											</div>
										</div>
									</div>
									<div class="favorite-icon">
										<a href="#"><i class="mdi mdi-heart fs-18"></i></a>
									</div>
								</div>
							</div>
							<div class="candidate-list-box bookmark-post card mt-4">
								<div class="p-4 card-body">
									<div class="align-items-center row">
										<div class="col-auto">
											<div class="candidate-list-images">
												<a href="#"><img
													src="https://bootdey.com/img/Content/avatar/avatar2.png"
													alt class="avatar-md img-thumbnail rounded-circle" /></a>
											</div>
										</div>
										<div class="col-lg-5">
											<div class="candidate-list-content mt-3 mt-lg-0">
												<h5 class="fs-19 mb-0">
													<a class="primary-link" href="#">Gabriel Palmer</a><span
														class="badge bg-warning ms-1"><i
														class="mdi mdi-star align-middle"></i>3.4</span>
												</h5>
												<p class="text-muted mb-2">HTML Developer</p>
												<ul class="list-inline mb-0 text-muted">
													<li class="list-inline-item"><i
														class="mdi mdi-map-marker"></i> Oakridge Lane California</li>
													<li class="list-inline-item"><i class="mdi mdi-wallet"></i>
														$250 / hours</li>
												</ul>
											</div>
										</div>
										<div class="col-lg-4">
											<div
												class="mt-2 mt-lg-0 d-flex flex-wrap align-items-start gap-1">
												<span class="badge bg-soft-secondary fs-14 mt-1">Design</span><span
													class="badge bg-soft-secondary fs-14 mt-1">Developer</span>
											</div>
										</div>
									</div>
									<div class="favorite-icon">
										<a href="#"><i class="mdi mdi-heart fs-18"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="mt-4 pt-2 col-lg-12">
							<nav aria-label="Page navigation example">
								<div
									class="pagination job-pagination mb-0 justify-content-center">
									<li class="page-item disabled"><a class="page-link"
										tabindex="-1" href="#"><i
											class="mdi mdi-chevron-double-left fs-15"></i></a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#"><i
											class="mdi mdi-chevron-double-right fs-15"></i></a></li>
								</div>
							</nav>
						</div>
					</div>
				</div>
		</section>
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript">
</script>


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
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
</body>

</html>