<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	href="${pageContext.request.contextPath }/resourc
	es/company_assets/css/now-ui-dashboard.css?v=1.5.0"
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
<!-- 															              <div class="form-row align-items-center"> -->
<!-- 											<div class="col-xl-5"> -->
												<!-- 날짜 검색 필드 -->
												<div class="form-row">
													<div class="col-xl-2">
														<label for="purchaseDateStart">클래스 구매일 시작</label> <input
															type="date" class="form-control" id="purchaseDateStart">
													</div>
													<div class="col-xs-1 text-center">
														<span class="form-control-plaintext">~</span>
													</div>
													<div class="col-xl-2">
														<label for="purchaseDateEnd">클래스 구매일 끝</label> <input
															type="date" class="form-control" id="purchaseDateEnd">
													</div>
													<div class="col-xl-2">
														<button type="button" class="btn btn-info mt-4"
															onclick="filterByDate()">검색</button>
													</div>
													<!-- 새로운 버튼을 위한 새로운 form-row 추가 -->
													<div class="form-row col-xl-12 mt-1">
														<div class="col-xl-6"></div>
														<div>
															<input type="checkbox" id="statusNormal" checked> 정상 &nbsp;
															<input type="checkbox" id="statusCancelled" checked> 취소
														</div>
													</div>
												</div>
<!-- 											</div> -->
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
<!-- 													<th scope="col">#</th> -->
													<th scope="col">결제상태</th>
													<th scope="col">결제번호</th>
													<th scope="col">클래스명</th>
													<th scope="col">결제 수단</th>
													<th scope="col">결제 금액</th>
													<th scope="col">클래스 구매일</th>
													<th scope="col">구매자(ID)</th>
													<th scope="col">수정/삭제</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${saleList}" var="sale">
													<tr class="sales-row" data-status="${sale.pay_status}"
														data-purchase-date="${sale.formatted_pay_date}">
<!-- 														<th scope="row">1</th> -->
														<!-- # -->
														<td><c:choose>
																<c:when test="${sale.pay_status == 1}">
											              		정상
											              	</c:when>
																<c:when test="${sale.pay_status == 2}">
											              		취소
											              	</c:when>
															</c:choose></td>
														<!-- 결제 상태 -->
														<td>${sale.pay_num}</td>
														<!-- 결제 번호  -->
														<td>${sale.class_title }</td>
														<!-- 클래스명 -->
														<td><c:choose>
																<c:when test="${sale.pay_category == 1}">
											              		일반 결제
											              	</c:when>
																<c:when test="${sale.pay_category == 2}">
											              		포인트 결제
											              	</c:when>
															</c:choose></td>
														<!-- 결제 수단 -->
														<td><fmt:formatNumber value="${sale.payment}"
																type="number" pattern="#,##0" /></td>

														<%-- 											              <td>${sale.payment}</td> <!-- 결제 금액 --> --%>
														<%-- 											             <td>${sale.pay_date }</td> <!-- 클래스 구매일 --> --%>
														<td>
															<%-- 					                                      <fmt:formatDate value="${sale.pay_date}" pattern="yyyy-MM-dd" /> --%>
															${sale.formatted_pay_date} <!-- 클래스 구매일 -->
														</td>
														<td>${sale.member_id}</td>
														<!-- 구매자 -->
													<td> 
															<input type="button" value="삭제" class="delete-btn" data-pay-num="${sale.pay_num}">
															</td>
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
							
							
				//--------------------------------
		document.addEventListener('DOMContentLoaded', function() {
        var deleteButtons = document.querySelectorAll('.delete-btn');
        deleteButtons.forEach(function(button) {
            button.addEventListener('click', function() {
                var payNum = this.getAttribute('data-pay-num');
                if (confirm('해당 매출 정보를 삭제하시겠습니까?')) {
                    // AJAX 요청으로 서버에 삭제를 요청
                    $.ajax({
                        url: '${pageContext.request.contextPath}/company/deleteSale', // 서버의 URL 주소
                        type: 'POST', // HTTP 요청 방식
                        data: { 'pay_num': payNum }, // 키 이름을 'pay_num'으로 변경
                        success: function(response) {
                            // 성공 시 페이지 리로드 또는 DOM 조작을 통해 화면에서 해당 항목 제거
                            location.reload(); // 페이지 리로드로 간단히 처리
                        },
                        error: function(xhr, status, error) {
                            // 실패 시 오류 처리
                            alert('삭제 처리 중 오류가 발생했습니다.');
                        }
                    });
                }
            });
        });
    });
					
	//---------------------------------
	function filterByDate() {
    var startDate = document.getElementById('purchaseDateStart').value;
    var endDate = document.getElementById('purchaseDateEnd').value;
    var salesRows = document.querySelectorAll('.sales-row');

    salesRows.forEach(function(row) {
        var saleDate = row.getAttribute('data-purchase-date'); // data-purchase-date 속성에 날짜 정보가 저장되어 있다고 가정

        if (saleDate >= startDate && saleDate <= endDate) {
            row.style.display = ''; // 날짜 범위 내에 있는 경우 표시
        } else {
            row.style.display = 'none'; // 날짜 범위 밖에 있는 경우 숨김
        }
    });
}
							
							
							
							
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
		
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    const statusNormal = document.getElementById('statusNormal');
    const statusCancelled = document.getElementById('statusCancelled');
    const salesRows = document.querySelectorAll('.sales-row');

    function filterSales() {
        salesRows.forEach(row => {
            const status = row.dataset.status; // 'data-status' 속성값 가져오기
            row.style.display = 'none'; // 기본적으로 모든 행을 숨김

            // 체크박스 상태에 따라 행 표시 여부 결정
            if (status === '1' && statusNormal.checked) {
                row.style.display = '';
            } else if (status === '2' && statusCancelled.checked) {
                row.style.display = '';
            }
        });
    }

    // 체크박스 상태 변경 시 필터링 함수 호출
    statusNormal.addEventListener('change', filterSales);
    statusCancelled.addEventListener('change', filterSales);

    // 페이지 로드 시 필터링 실행하여 초기 상태 설정
    filterSales();
});
</script>

		
</body>

</html>