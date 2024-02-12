<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Dashboard by Creative Tim
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
  <!-- CSS(List) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 CSS 추가 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style type="text/css">
    body{
    background:#f5f5f5;
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

/* 테이블 폰트 사이즈 조절 */
body {
/*   font-size: 14px; /* 기본값보다 작은 값을 설정하세요. */ */
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

.content {
	background-color: #fff!important;
} 

tbody {
	background-color: #fff;
	color: #000;
}

.card-header {
	font-size: 20px;
	color: #000!important;
}

.card label {
	color: #000!important;
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
            <a class="navbar-brand" href="#pablo">반장 쿠폰 관리</a>
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
          <h2 class="title">반장 쿠폰 관리</h2>
<!--           <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p> -->
        </div>
      </div>
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
					
							<div class="card-header">
							<div class="card-header-header">
								<label>쿠폰 발급 상태</label>
							</div>
								<label><input type="checkbox" id="filter-normal" checked> 정상</label>
								<label><input type="checkbox" id="filter-used" checked> 사용</label>
								<label><input type="checkbox" id="filter-expired" checked> 만료</label>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-xl-12">
										<div class="d-flex justify-content-end mb-3">
<!-- 											<input type="button" class="mr-2" value="쿠폰 발급">  -->
<!-- 											<input type="button" class="mr-2" value="선택한 쿠폰 마감">  -->
<!-- 											<input type="button" value="선택한 쿠폰 재발급"> -->
										</div>
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead class="thead-dark">
													<tr>
<!-- 														<th scope="col">#</th> -->
														<th scope="col">쿠폰 번호</th>
														<th scope="col">쿠폰 이름</th>
														<th scope="col">쿠폰 소유 회원</th>
														<th scope="col">쿠폰 할인 가격</th>
														<th scope="col">쿠폰 발급일자</th>
														<th scope="col">쿠폰 유효기간</th>
														<th scope="col">쿠폰 발급상태</th>
														<th scope="col">최소 결제 금액</th>
<!-- 														<th scope="col">삭제</th> -->
													</tr>
												</thead>
												<tbody>
													 <c:forEach items="${classCoupon}" var="coupon">
													<tr>
<!-- 														<th scope="row">1</th> -->
														<td>${coupon.coupon_idx}</td>
														<td>${coupon.coupon_name}</td>
														<td>${coupon.member_id }</td>
														<td>
															<c:choose>
															<c:when test="${coupon.coupon_value > 0}">
															<fmt:formatNumber value="${coupon.coupon_value}" type="number" pattern="#,##0"/>원 할인
															</c:when>
															<c:when test="${coupon.coupon_value < 0}">
																${coupon.coupon_value * 10}% 할인
															</c:when>
															</c:choose>
														</td>
														
														<td>${coupon.coupon_Issue_date}</td>
														<td>${coupon.coupon_valid_date}</td>
														<td>
															<c:choose>
																<c:when test="${coupon.coupon_status == 1}">
																	정상
																</c:when>
																<c:when test="${coupon.coupon_status == 2}">
																	사용
																</c:when>
																<c:when test="${coupon.coupon_status == 3}">
																	만료
																</c:when>
															</c:choose>
															
														</td>
														<td>
															<fmt:formatNumber value="${coupon.coupon_min_price}" type="number" pattern="#,##0"/>원
														</td>
<!-- 														<td><input type="button" value="쿠폰 삭제"></td> -->
													</tr>
													</c:forEach>
													<!-- 더 많은 행을 추가할 수 있습니다. -->
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
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
  <!-- 부트스트랩과 jQuery, Popper.js 추가 -->
<!--   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.9.5/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
document.addEventListener("DOMContentLoaded", function() {
  function filterRows() {
    const showNormal = document.getElementById('filter-normal').checked;
    const showUsed = document.getElementById('filter-used').checked;
    const showExpired = document.getElementById('filter-expired').checked;

    const statusColumnIndex = 6;

    document.querySelectorAll('table tbody tr').forEach(row => {
      const statusTd = row.cells[statusColumnIndex];
      const status = statusTd.textContent.trim();

      let shouldBeShown = 
        (status === '정상' && showNormal) ||
        (status === '사용' && showUsed) ||
        (status === '만료' && showExpired);

      row.style.display = shouldBeShown ? '' : 'none';
    });
  }

  document.getElementById('filter-normal').addEventListener('change', filterRows);
  document.getElementById('filter-used').addEventListener('change', filterRows);
  document.getElementById('filter-expired').addEventListener('change', filterRows);

  filterRows();
});
</script>
  
</body>

</html>