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
    공생|관리자페이지 마케팅센터
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
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/event.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
</head>

<body class="user-profile">
  <div class="wrapper ">
    <jsp:include page="admin_sidebar.jsp"/>
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
            <a class="navbar-brand title" href="#pablo">쿠폰 관리</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <%-- search,홈페이지이동,채팅 --%>
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
                  <i class="now-ui-icons ui-1_calendar-60"></i>
                  <p>
                    <span class="d-lg-none d-md-block">달력</span>
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons ui-2_chat-round"></i>
                  <p>
                    <span class="d-lg-none d-md-block">채팅</span>
                  </p>
                </a>
              </li>
              <%-- 공생 메인 홈페이지로 이동 --%>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }">
                  <i class="now-ui-icons shopping_shop"></i>
                  <p>
                    <span class="d-lg-none d-md-block">공식 홈</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-4">
            <div class="card">
              <div class="card-header">
                <h5 class="title">쿠폰 등록</h5>
              </div>
              <div class="card-body">
                <form action="" method="post">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>쿠폰이름</label>
                        <input type="text" class="form-control" name="board_subject">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>발행대상</label>
                        <input type="text" class="form-control" name="board_subject">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 pr-1">
                      <div class="form-group">
                        <label>유효시작일</label>
                        <input type="date" class="form-control" name="event_start">
                      </div>
                    </div>
                    <div class="col-md-6 pl-1">
                      <div class="form-group">
                        <label>유효종료일</label>
                        <input type="date" class="form-control" name="event_end">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>할인금액/할인률</label>
                        <div class="">
                        	<input type="text" class="form-control">
                        	<select class="coupon_unit">
                        		<option value="원">원</option>
                        		<option value="%">%</option>
                        	</select>
                        </div>
                      </div>
                    </div>
                  </div>
                 <button type="submit" class="btn register_btn">등록하기</button>
                </form>
              </div>
            </div>
          </div>
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                 <h5 class="title">쿠폰 목록</h5>
                </div>
              <div class="card-body">
	              <div class="card-body-header">
	                 <div class="member_category_checkbox">
	                 	<div>
			              	<input type="checkbox" value="전체선택" name="member_category"> 전체선택&nbsp;
			              	<input type="checkbox" value="반장발급" name="member_category"> 반장발급&nbsp;
			              	<input type="checkbox" value="관리자발급" name="member_category"> 관리자발급&nbsp;
		              	</div>
		             </div>
		             <div>
	              		<form action="" class="member_date">
	              			<div class="search_bar_admin">
				              	<div>
									<select>
										<option>전체일자</option>
										<option>발급일자</option>
										<option>유효기간</option>
									</select>
				              	</div>
				              	<div>
				              		<input type="date" id="start_date">&nbsp;&nbsp;~&nbsp;&nbsp;<input type="date" id="end_date">
				              	</div>
		              		</div>
		              		<div class="search_bar_admin">
		              			<div>
		              				<input type="search">
		              			</div>
				              	<div>
				              		<button type="submit" class="btn detail_btn" value="검색">검색</button>
				              	</div>
		              		</div>	
	              		</form>
	              	  </div>
	              	</div>
	                <table class="table table-bordered">
				            <tr>
				                <th>발행일자</th>
				                <th>발행대상</th>
				                <th>쿠폰이름</th>
				                <th>유효기간</th>
				                <th>할인(금액/률)</th>
<!-- 				                <th>상세보기</th> -->
				            </tr>
				            <!-- 회원 데이터 로우 -->
				            <tr>
				                <td>발급일</td>
				                <td>발급자</td>
				                <td>쿠폰이름</td>
				                <td>유효기간</td>
				                <td>할인(금액/률)</td>
<!-- 				                <td><button type="button" class="btn detail_btn" value="상세보기">상세보기</button></td> -->
				            </tr>
				    </table>
	         	 </div>
	        </div>
	      </div>
	    </div>
	 </div>
     <footer class="footer">
       <jsp:include page="admin_bottom.jsp"/>
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
</body>

</html>