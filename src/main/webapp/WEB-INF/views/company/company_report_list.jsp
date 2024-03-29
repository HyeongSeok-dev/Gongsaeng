<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <!-- favicon  -->
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
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
   
 body {
    background:#f5f5f5;
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

.table th, .table td {
  font-size: 14px!important; 
  text-align: center!important;
}

h2.title {
/*   font-size: 24px; /*  */
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

.form-control-plaintext {
    margin-top: 25px;
}
</style>  
 
</head>

<body>

<!--   <div class="wrapper "> -->
    <div class="sidebar" data-color="orange">
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
          <h2 class="title">신고 내역</h2>
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
							        <label for="reportDateStart">신고일 시작</label>
							        <input type="date" class="form-control" id="reportDateStart" name="reportDateStart">
							    </div>
							    <div class="col-xs-1 text-center">
							        <span class="form-control-plaintext">~</span>
							    </div>
							    <div class="col-xl-2">
							        <label for="reportDateEnd">신고일 끝</label>
							        <input type="date" class="form-control" id="reportDateEnd" name="reportDateEnd">
							    </div>
							    <div class="form-group col-xl-7">
									<input type="button" value="검색" onclick="filterByReportDate()" class="btn btn-info m-1 btn-search">
							        <input type="button" value="초기화" class="btn btn-info m-1 btn-reset">
							    </div>
							</div>
				            </form>
								<div class="form-row col-xl-12 mt-1">
								 <div class="col-xl-6">
									<!-- 신고 상태 필터링 체크박스 -->
									<div>
									    <input type="checkbox" id="statusReceived" checked> 접수
									    <input type="checkbox" id="statusApproved" checked> 승인
									    <input type="checkbox" id="statusRejected" checked> 반려
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
<!-- 		      			  <div class="row"> -->
				 <div class="col-md-12">
				  <div class="card col-md-12">
				    <div class="card-header"></div>
				    <div class="container-fluid">
				      <div class="row">
				        <div class="col-xl-12">
				          <div class="card">
				            <form>
								 <table class="table table-bordered">
											          <thead class="thead-dark">
											            <tr>											            
											              <th scope="col">신고 번호</th> 
											              <th scope="col">신고 상태</th>
											              <th scope="col">신고일</th>
											              <th scope="col">신고 클래스명</th>
											              <th scope="col">신고 사유</th>
											              <th scope="col">상세내용</th>

											            </tr>
											          </thead>
											          <tbody>
											            <c:forEach items="${reportDetail}" var="report">
											            <tr data-status="${report.report_status}">
											              <td>
											              	${report.report_idx }
											              </td> <!-- 신고 번호 -->
											              <td>
											              	<c:choose>
											              		<c:when test="${report.report_status == 1}">
																	접수
																</c:when>											              		
											              		<c:when test="${report.report_status == 2}">
																	승인		
																</c:when>											              		
											              		<c:when test="${report.report_status == 3}">
																	반려
																</c:when>											              												              		
											              	</c:choose>
											              </td> 
														 
    														<td data-type="report_date" ><fmt:formatDate value="${report.report_date}" pattern="yyyy/MM/dd" /> </td> <!-- 신고일 -->
														  <td>${report.class_title }</td> <!-- 신고 회원 -->
														  <td><!-- 신고사유 -->
														  <c:choose>
											              		<c:when test="${report.report_reason == 1}">
																	불친절함
																</c:when>											              		
											              		<c:when test="${report.report_reason == 2}">
																	환불 관련		
																</c:when>											              		
											              		<c:when test="${report.report_reason == 3}">
																	커리큘럼 관련
																</c:when>											              												              		
											              		<c:when test="${report.report_reason == 4}">
																	기타 사유
																</c:when>											              												              		
											              	</c:choose>
														  </td>
											              <!-- 신고 상세내용 -->
											              <td>${report.report_content}</td> 
											            </tr>
											            </c:forEach>
											          </tbody>
													 </table>
										            </form>
										          </div>
										        </div>
										      </div>
										    </div>
										  </div>
										</div>
									    </div>
							         <!-- 바텀 -->
							      <footer class="footer">
							       <jsp:include page="../inc/admin_bottom.jsp"/>
							     </footer>
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
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
</body>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // 체크박스 상태에 따라 필터링하는 함수
    function filterReports() {
        const statusReceived = document.getElementById('statusReceived').checked;
        const statusApproved = document.getElementById('statusApproved').checked;
        const statusRejected = document.getElementById('statusRejected').checked;

        document.querySelectorAll('tbody tr').forEach(function(row) {
            const status = row.getAttribute('data-status');
            let isVisible = false;

            if ((status === '1' && statusReceived) ||
                (status === '2' && statusApproved) ||
                (status === '3' && statusRejected)) {
                isVisible = true;
            }

            row.style.display = isVisible ? '' : 'none';
        });
    }

    // 신고일에 따라 필터링하는 함수
    function filterByReportDate() {
        const startDate = document.getElementById('reportDateStart').value;
        const endDate = document.getElementById('reportDateEnd').value;

        document.querySelectorAll('tbody tr').forEach(function(row) {
            const reportDateCell = row.querySelector('td[data-type="report_date"]');
            if (!reportDateCell) return; // 신고일 셀이 없으면 다음 행으로 넘어갑니다.
            
            const reportDate = reportDateCell.textContent.trim();
            const reportDateFormatted = reportDate.split('/').join('-'); // 형식을 YYYY-MM-DD로 변환

            let isVisible = true;
            if (startDate && reportDateFormatted < startDate) {
                isVisible = false;
            }
            if (endDate && reportDateFormatted > endDate) {
                isVisible = false;
            }

            row.style.display = isVisible ? '' : 'none';
        });
    }

    // 체크박스와 버튼에 이벤트 리스너 등록
    document.getElementById('statusReceived').addEventListener('change', filterReports);
    document.getElementById('statusApproved').addEventListener('change', filterReports);
    document.getElementById('statusRejected').addEventListener('change', filterReports);
    document.querySelector('.btn-search').addEventListener('click', filterByReportDate);
    document.querySelector('.btn-reset').addEventListener('click', function() {
        document.getElementById('reportDateStart').value = '';
        document.getElementById('reportDateEnd').value = '';
        document.querySelectorAll('tbody tr').forEach(function(row) {
            row.style.display = '';
        });
        filterReports(); 
    });

    // 페이지 로드 시 모든 필터링 적용
    filterReports();
    filterByReportDate();
});
</script>

</html>