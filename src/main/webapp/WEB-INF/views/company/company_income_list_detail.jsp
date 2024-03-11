<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 정산 상세내역
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
/* 	background-color: #fff!important; */
}

.table th, .table td {
/*   font-size: 14px!important;  */
  text-align: center!important;
}

h2.title {
/*   font-size: 24px; /*  */
}

.table {
  width: 100%!important; /* 테이블의 너비를 부모 요소의 100%로 설정 */
}

tbody {
	background-color: #fff;
/* 	color: #000; */
}

.form-control-plaintext {
    margin-top: 25px;
}

.table_title {
	background-color: lightgray;
	color: #000!important;
 	font-size: 17px!important;
	font-weight: bold!important;
}

.table_title1 {
 	color: #8887a9!important; 
}

.table_content {
	color: #000!important;
}

.apply-settlement {
	background-color: #000!important;
	color: #fff!important;
	border: #000!important;
}

.apply-settlement:hover {
	background-color:lightgray;
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
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">정산 상세내역</a>
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
          <h2 class="title">정산 상세내역</h2><br>
          <h4>결제번호 : ${paymentDetail.pay_num}</h4>
        </div>
      </div>
		<div class="content">
			<div class="col-md-12">
				<div class="card col-md-12">
					<div class="card-header"></div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<form>
					                    <table class="table table-bordered">
					                        <tr>
					                            <th class="table_title col-xl-3">항목</th>
					                            <td class="table_title">내용</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">결제 번호</th>
					                            <td class="table_content">${paymentDetail.pay_num}</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">정산 상태</th>
					                            <td class="table_content">
					                                <c:choose>
					                                    <c:when test="${paymentDetail.pay_cal_status == 1}">미정산</c:when>
					                                    <c:when test="${paymentDetail.pay_cal_status == 2}">정산 신청 완료</c:when>
					                                    <c:when test="${paymentDetail.pay_cal_status == 3}">정산 승인 완료</c:when>
					                                    <c:when test="${paymentDetail.pay_cal_status == 4}">정산완료</c:when>
					                                    <c:otherwise>상태 미확인</c:otherwise>
					                                </c:choose>
					                            </td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">총 결제 금액</th>
					                            <td class="table_content"><fmt:formatNumber value="${paymentDetail.payment + paymentDetail.discount_payment}" type="number" pattern="#,##0" />원</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">할인 금액(쿠폰/포인트)</th>
					                            <td class="table_content">- <fmt:formatNumber value="${paymentDetail.discount_payment}" type="number" pattern="#,##0" />원</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">수수료 (10%)</th>
					                            <td class="table_content">- <fmt:formatNumber value="${paymentDetail.payment * 0.1}" type="number" pattern="#,##0" />원</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">정산 금액</th>
					                            <td class="table_content"><fmt:formatNumber value="${paymentDetail.payment * 0.9}" type="number" pattern="#,##0" />원</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">정산 신청일</th>
					                            <td class="table_content">${paymentDetail.refund_request_date}</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">정산 완료일</th>
					                            <td class="table_content">${paymentDetail.refund_date}</td>
					                        </tr>
					                        <tr>
					                            <th class="table_title1">정산 신청</th>
					                            <td class="table_content">
	                       							<c:choose>
													    <c:when test="${paymentDetail.pay_cal_status == 1}">
                										<button type="button" class="btn btn-primary apply-settlement" data-paynum="${paymentDetail.pay_num}">정산 신청</button>
													    </c:when>
													    <c:otherwise>
													        <span>-</span>
													    </c:otherwise>
													</c:choose>
                       						    </td>
					                        </tr>
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
  <script>
    
	$(document).ready(function() {
		
	    $('tbody tr').css('display', ''); // 'display: none;' 제거
		
// 	    $('tbody tr').each(function() {
// 	        var requestDate = new Date($(this).find('[data-type="refund_request_date"]').text());
// 	        var isVisible = requestDate >= new Date(startDate) && requestDate <= new Date(endDate);
// 	        $(this).toggle(isVisible);
// 	    });
		
	    $('#paymentDetailModal').on('shown.bs.modal', function() {
	        $('.modal-body table').css('display', 'table'); // 모달 내의 모든 테이블에 적용
	    });
		
	    $('#selectAll').click(function(e) {
	        $('input[name="payNums"]').prop('checked', this.checked);
	    });
	
	    // 정산 신청 버튼 클릭 이벤트 핸들러
	    $('.apply-settlement').click(function(e) {
	        e.preventDefault();
	        var payNum = $(this).data('paynum'); // 버튼에서 결제 번호 가져오기

	        if (confirm('정산을 신청하시겠습니까?')) { // 사용자가 신청을 확인할 경우
	            $.ajax({
	                url: '${pageContext.request.contextPath}/company/income/updateDetailPayCalStatus',
	                type: 'POST',
	                data: {
	                    'payNum': payNum,
	                    'payCalStatus': 2 // 정산 승인중으로 상태 변경
	                },
	                success: function(response) {
	                    if(response.success) {
	                        alert('정산 신청이 완료되었습니다.');
	                        location.reload(); // 페이지를 다시 불러옴
	                    } else {
	                        alert('정산 신청에 실패했습니다: ' + response.message);
	                    }
	                },
	                error: function(xhr, status, error) {
	                    alert('정산 신청 과정에서 오류가 발생했습니다.');
	                }
	            });
	        }
	    });

	    
	});
	
    </script>
</body>

</html>