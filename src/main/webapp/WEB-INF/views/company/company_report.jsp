<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <!-- favicon  -->
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 신고 내역
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
  <!-- global CSS -->
  <link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />	
	

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


.content {
	background-color: #fff!important;
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
						<a class="navbar-brand" href="#pablo">신고 내역</a>
					</div>
					<div class="collapse navbar-collapse justify-content-end" id="navigation">
						<ul class="navbar-nav">
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
				<h2 class="title">채팅 관리</h2>
			</div>
		</div>
		<div class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header"></div>
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-xl-12">
										<div class="card">
											<div class="card-body">
												<div id="board-list">
													<div class="container">
													
													</div>
												</div>
											</div>
										</div>
									</div>
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
</body>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // 검색 버튼 클릭 이벤트
    document.querySelector('.btn-search').addEventListener('click', function() {
        var startDate = document.getElementById('reportDateStart').value;
        var endDate = document.getElementById('reportDateEnd').value;

        document.querySelectorAll('tbody tr').forEach(function(row) {
            // 'data-type="report_date"'가 정확히 설정되어 있는지 확인하세요.
            // 예제 코드에서는 'td[data-type="report_date"]' 셀렉터를 사용합니다.
            // 실제 HTML 구조에 따라 셀렉터를 조정해야 할 수 있습니다.
            var reportDateCell = row.querySelector('td[data-type="report_date"]');
            if (!reportDateCell) return; // reportDateCell이 없으면 다음 행으로 넘어갑니다.
            
            var reportDate = reportDateCell.textContent.trim();
            var isVisible = true; // 기본적으로 행을 보이게 합니다.

            // 시작일과 종료일이 모두 설정된 경우에만 필터링을 적용합니다.
            if (startDate && endDate) {
                // 날짜 형식이 YYYY/MM/DD인지 확인하고, 필요하다면 형식을 조정하세요.
                isVisible = reportDate >= startDate && reportDate <= endDate;
            }
            row.style.display = isVisible ? '' : 'none'; // 조건에 따라 행의 표시 여부를 결정합니다.
        });
    });

    // 초기화 버튼 클릭 이벤트
    document.querySelector('.btn-reset').addEventListener('click', function() {
        document.getElementById('reportDateStart').value = '';
        document.getElementById('reportDateEnd').value = '';
        document.querySelectorAll('tbody tr').forEach(function(row) {
            row.style.display = ''; // 모든 행을 다시 보이게 합니다.
        });
    });
});
</script>


</html>