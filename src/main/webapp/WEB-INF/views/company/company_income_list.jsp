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
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">정산 내역</a>
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
          <h2 class="title">정산 내역</h2>
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
				            <!-- 정산 신청일 검색 -->
<div class="form-row">
    <div class="col">
        <label for="refundRequestDateStart">정산 신청일 시작</label>
        <input type="date" class="form-control" id="refundRequestDateStart">
    </div>
    <div class="col">
        <label for="refundRequestDateEnd">정산 신청일 끝</label>
        <input type="date" class="form-control" id="refundRequestDateEnd">
    </div>
    <div class="col">
        <button type="button" class="btn btn-info mt-4" onclick="filterByRefundRequestDate()">검색</button>
    </div>
</div>

<!-- 정산 완료일 검색 -->
<div class="form-row">
    <div class="col">
        <label for="refundDateStart">정산 완료일 시작</label>
        <input type="date" class="form-control" id="refundDateStart">
    </div>
    <div class="col">
        <label for="refundDateEnd">정산 완료일 끝</label>
        <input type="date" class="form-control" id="refundDateEnd">
    </div>
    <div class="col">
        <button type="button" class="btn btn-info mt-4" onclick="filterByRefundDate()">검색</button>
    </div>
</div>
				                <!-- 추가 컨텐츠를 위한 공간 -->
				               <!-- 정산 상태 필터링을 위한 체크박스 -->
								<div class="filter-checkboxes">
								  <input type="checkbox" id="statusUnsettled" checked> 미정산
								  <input type="checkbox" id="statusApplied" checked> 정산 신청완료
								  <input type="checkbox" id="statusApproving" checked> 정산 승인중
								  <input type="checkbox" id="statusSettled" checked> 정산완료
								</div>
				                 <!-- 새로운 버튼을 위한 새로운 form-row 추가 -->
<!-- 검색 및 필터 영역 아래에 초기화 버튼 추가 -->
<div class="form-row">
    <div class="col">
        <button type="button" class="btn btn-secondary mt-4" onclick="resetFilters()">초기화</button>
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
											            <button id="submitSelected" class="btn btn-primary">선택한 항목 정산 신청</button>
											            
											              <!-- 전체 선택 체크박스 -->
											              <th scope="col">
											              	<input type="checkbox" id="selectAll">
											              </th>
											              <th scope="col">결제 번호</th>
											              <th scope="col">정산 상태</th>
											              <th scope="col">정산 신청일</th>
											              <th scope="col">총 결제 금액</th>
											              <th scope="col">할인 금액(쿠폰/포인트)</th>
											              <th scope="col">수수료 (10%)</th>
											              <th scope="col">정산 금액</th>
											              <th scope="col">정산 완료일</th>
<!-- 											              <th scope="col">정산 신청</th> -->
											            </tr>
											          </thead>
											          <tbody>
											            <c:forEach items="${paymentInfo}" var="payment">
											            <tr>
											              <td>
											              	 <c:choose>
												              	<c:when test="${payment.pay_cal_status == 1 }"> 
													              	<input type="checkbox" name="payNums" value="${payment.pay_num}">
												              	</c:when>
												              	<c:otherwise>
																	
												              	</c:otherwise>
												              </c:choose>
											              </td>
											              <td>${payment.pay_num }</td> <!-- 결제번호 -->
											              <!-- 정산상태 -->
											              <td>
											              	<c:choose>
											              		<c:when test="${payment.pay_cal_status == 1}">
																	미정산
																</c:when>											              		
											              		<c:when test="${payment.pay_cal_status == 2}">
																	정산 신청완료		
																</c:when>											              		
											              		<c:when test="${payment.pay_cal_status == 3}">
																	정산 승인중
																</c:when>											              		
											              		<c:when test="${payment.pay_cal_status == 4}">
																	정산완료
																</c:when>											              		
											              	</c:choose>
											              </td> 
															<td data-type="refund_request_date">${payment.refund_request_date}</td>
																<td><fmt:formatNumber value="${payment.payment + payment.discount_payment}" type="number" pattern="#,##0"/></td> <!-- 정산금액 -->
											              <td>- <fmt:formatNumber value="${payment.discount_payment }" type="number" pattern="#,##0"/></td> <!-- 할인 금액 -->
																<td>- <fmt:formatNumber value="${payment.payment * 0.1}" type="number" pattern="#,##0"/></td> <!-- 수수료 -->
																<td><fmt:formatNumber value="${payment.payment * 0.9}"  type="number" pattern="#,##0"/></td> <!-- 정산금액 -->
															<td data-type="refund_date">${payment.refund_date}</td>
<!-- 											             <td> -->
											              	<!-- 누르면 pay_cal_status 변경 ( 1 => 2 ) -->
<%-- 											              <c:if test="${payment.pay_cal_status == 1}"> --%>
<%-- 															<button type="button" class="submit-calculation-request" data-pay-num="${payment.pay_num}">정산 신청</button> --%>
<%-- 											              </c:if> --%>
<!-- 											             </td> -->
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
         <!--       바텀 -->
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
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
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  
     <script>
//      $(document).ready(function() {
//     	    $('.submit-calculation-request').click(function(e) {
//     	        e.preventDefault();
//     	        var payNum = $(this).data('pay-num');
//     	        $.ajax({
//     	            url: '${pageContext.request.contextPath}/company/income/updatePayCalStatus',
//     	            type: 'POST',
//     	            data: {
//     	                'pay_num': payNum,
//     	                'pay_cal_status': 2
//     	            },
//     	            success: function(response) {
//     	                if (response.success) {
//     	                    alert(response.message);
//     	                    location.reload();
//     	                } else {
//     	                    alert(response.message);
//     	                }
//     	            },
//     	            error: function(xhr) {
//     	                var response = JSON.parse(xhr.responseText);
//     	                alert("정산 신청에 실패했습니다: " + response.message);
//     	            }
//     	        });
//     	    });
//     	});

    // 정산 신청일 기준 검색
    function filterByRefundRequestDate() {
        var startDate = $('#refundRequestDateStart').val();
        var endDate = $('#refundRequestDateEnd').val();
        
        $('tbody tr').each(function() {
            var requestDate = $(this).find('[data-type="refund_request_date"]').text();
            var isVisible = requestDate >= startDate && requestDate <= endDate;
            $(this).toggle(isVisible);
        });
    };

    // 정산 완료일 기준 검색
    function filterByRefundDate() {
        var startDate = $('#refundDateStart').val();
        var endDate = $('#refundDateEnd').val();
        
        $('tbody tr').each(function() {
            var completeDate = $(this).find('[data-type="refund_date"]').text();
            var isVisible = completeDate >= startDate && completeDate <= endDate;
            $(this).toggle(isVisible);
        });
    };

    function resetFilters() {
        // 페이지를 새로고침하여 초기 상태로 복원
        location.reload();
    }
    
    
	$(document).ready(function() {
	    $('#selectAll').click(function(e) {
	        $('input[name="payNums"]').prop('checked', this.checked);
	    });
	
	    $('#submitSelected').click(function(e) {
	        e.preventDefault();
	        var selectedPayNums = $('input[name="payNums"]:checked').map(function() {
	            return $(this).val();
	        }).get();
	
	        if (selectedPayNums.length > 0) {
	            $.ajax({
	                url: '${pageContext.request.contextPath}/company/income/updatePayCalStatusBatch', // 수정된 경로
	                type: 'POST',
	                traditional: true,
	                data: {
	                    'payNums': selectedPayNums,
	                    'pay_cal_status': 2
	                },
	                success: function(response) {
	                    if(response.success) {
	                        alert(response.message);
	                        location.reload();
	                    } else {
	                        alert(response.message);
	                    }
	                },
	                error: function(xhr, status, error) {
	                    alert("정산 신청에 실패했습니다.");
	                }
	            });
	        } else {
	            alert("정산 신청할 항목을 선택하세요.");
	        }
	    });
	    // 체크박스 상태 변경 시 필터링 실행
	    $('.filter-checkboxes input').change(function() {
	        filterPayments();
	    });

	    function filterPayments() {
	        $('tbody tr').each(function() {
	            var status = $(this).find('td').eq(2).text(); // 정산 상태가 있는 열의 텍스트를 가져옵니다.
	            var showRow = false;

	            // 체크된 상태에 따라 행을 표시하거나 숨깁니다.
	            if (status.includes("미정산") && $('#statusUnsettled').is(':checked')) {
	                showRow = true;
	            } else if (status.includes("정산 신청완료") && $('#statusApplied').is(':checked')) {
	                showRow = true;
	            } else if (status.includes("정산 승인중") && $('#statusApproving').is(':checked')) {
	                showRow = true;
	            } else if (status.includes("정산완료") && $('#statusSettled').is(':checked')) {
	                showRow = true;
	            }

	            // 행의 표시 여부를 결정합니다.
	            $(this).toggle(showRow);
	        });
	    }

	    // 페이지 로드 시 필터링을 실행하여 초기 상태를 설정합니다.
	    filterPayments();
	});
	
    </script>
</body>

</html>