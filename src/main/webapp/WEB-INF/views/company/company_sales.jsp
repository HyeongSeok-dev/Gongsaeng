<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<!-- favicon 넣는 자리 -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공생 | 매출 현황</title>
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

<!-- 부트스트랩 4 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- global CSS -->
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />

<style type="text/css">
body {
	background: #f5f5f5;
}

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5 !important;
}

.table th {
    font-weight: 500;
    color: #000;
    background-color: lightgrey;
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
	background-color: #fff !important;
}

.card {
	font-size: 14px; 
}

.table th, .table td {
	font-size: 14px !important;
	text-align: center !important;
}

th {
	font-size: 14px;
}

.table {
	width: 100% !important; 
}

tbody {
	background-color: #fff;
	color: #000;
}

.modal_main {
	font-size: 14px;
}

.modal-header {
	display: inline;
}

.table tbody tr:hover {
    background-color: #f2f2f2; 
    cursor: pointer; 
}
/* 모달창에선 hover 적용X */
.modal-table tbody tr:hover {
    background-color: transparent; 
    cursor: default; 
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
			<nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">매출 현황</a>
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
											<!-- 날짜 검색 필드 -->
											<div class="form-row">
												<div class="col-xl-2">
													<label for="purchaseDateStart">클래스 구매일 시작</label> 
													<input type="date" class="form-control" id="purchaseDateStart">
												</div>
												<div class="col-xs-1 text-center">
													<span class="form-control-plaintext">~</span>
												</div>
												<div class="col-xl-2">
													<label for="purchaseDateEnd">클래스 구매일 끝</label> 
													<input type="date" class="form-control" id="purchaseDateEnd">
												</div>
												<div class="col-xl-2">
													<button type="button" class="btn btn-info mt-4" onclick="filterByDate()">검색</button>
												</div>
												<!-- 새로운 버튼을 위한 새로운 form-row 추가 -->
												<div class="form-row col-xl-12 mt-1">
													<div class="col-xl-6"></div>
													<div>
														<input type="checkbox" id="statusNormal" checked>완료 &nbsp; 
														<input type="checkbox" id="statusCancelled" checked>취소
													</div>
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
													<th scope="col">
														결제
													</th>
													<th scope="col">
														결제번호
													</th>
													<th scope="col">
														클래스명
													</th>
<!-- 													<th scope="col"> -->
<!-- 														결제 수단 -->
<!-- 													</th> -->
													<th scope="col">
														결제 금액
													</th>
													<th scope="col">
														결제일
													</th>
<!-- 													<th scope="col"> -->
<!-- 														구매자(ID) -->
<!-- 													</th> -->
													<th scope="col">
														삭제
													</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${saleList}" var="sale">
													<tr class="sales-row" 
													data-pay-num="${sale.pay_num}"
													data-com-idx="${sale.com_idx}"
													data-com-name="${sale.com_name}"
													data-class-title="${sale.class_title}"
													data-member-id="${sale.member_id}"
													data-payment="${sale.payment}" 
													data-discount-payment="${sale.discount_payment}"
													data-pay-method="${sale.pay_method}"
													data-pay-date="${sale.pay_date}"
													data-pay-category="${sale.pay_category}"
													data-res-visit-date="${sale.res_visit_date}"
													data-res-visit-time="${sale.res_visit_time}"
													data-res-member-count="${sale.res_member_count}"
													data-status="${sale.pay_status}" 
													data-purchase-date="${sale.formatted_pay_date}">
														<td>
															<c:choose>
																<c:when test="${sale.pay_status == 1}">
												              		완료
												              	</c:when>
																<c:when test="${sale.pay_status == 2}">
												              		취소
												              	</c:when>
															</c:choose>
														</td>
														<!-- 결제 상태 -->
														<td>
															${sale.pay_num}
														</td>
														<!-- 결제 번호  -->
														<td>
															${sale.class_title}
														</td>
														
														<!-- 결제수단 -->
<!-- 														<td> -->
<%-- 															<c:choose> --%>
<%-- 																<c:when test="${sale.pay_category == 1}"> --%>
<!-- 											              			일반 -->
<%-- 											              		</c:when> --%>
<%-- 																<c:when test="${sale.pay_category == 2}"> --%>
<!-- 											              			포인트 -->
<%-- 											              		</c:when> --%>
<%-- 															</c:choose> --%>
<!-- 														</td> -->
														
														<!-- 결제 금액 -->
														<td>
															<fmt:formatNumber value="${sale.payment}" type="number" pattern="#,##0" />원
														</td>
														
														<td>
															<!-- 클래스 구매일 -->
															${sale.formatted_pay_date} 
														</td>
														
<!-- 														<td> -->
<!-- 															구매자 -->
<%-- 															${sale.member_id} --%>
<!-- 														</td> -->
														
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
		</div>
         <!-- 바텀 -->
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
     </footer>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="paymentDetailModal" tabindex="-1" role="dialog" aria-labelledby="paymentDetailModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	     <div class="modal-header d-flex align-items-center justify-content-between">
	    <h5 class="modal-title" id="paymentDetailModalLabel">매출 상세 정보</h5>
	    <div class="modal_main">&nbsp;&nbsp;(결제번호 :&nbsp;&nbsp;<span id="modalpayNum"></span>)</div>
	    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	        <span aria-hidden="true">&times;</span>
	    </button>
	</div>
	<div class="modal-body">
	<table class="table table-bordered modal-table">
        <tbody>
            <tr>
                <th scope="row">결제 상태</th>
                <td><span id="modalPayStatus"></span></td>
            </tr>
            <tr>
                <th scope="row">사업체 명</th>
                <td><span id="modalComName"></span></td>
            </tr>
            <tr>
                <th scope="row">클래스 명</th>
                <td><span id="modalClassTitle"></span></td>
            </tr>
            <tr>
                <th scope="row">회원 아이디</th>
                <td><span id="modalMemberId"></span></td>
            </tr>
            
            <tr>
   			 <th scope="row">총 금액</th>
    		 <td><span id="modalTotalPayment"></span>원</td>
			</tr>
            
            <tr>
                <th scope="row">할인 금액</th>
                <td>- <span id="modalDiscountPayment"></span>원</td>
            </tr>

            <tr>
                <th scope="row">결제 금액</th>
                <td><span id="modalPayment"></span>원</td>
            </tr>
<!--             <tr> -->
<!--                 <th scope="row">결제방법</th> -->
<!--                 <td><span id="modalPayMethod"></span></td> -->
<!--             </tr> -->
            <tr>
                <th scope="row">결제일</th>
                <td><span id="modalPayDate"></span></td>
            </tr>
            <tr>
                <th scope="row">결제 유형</th>
                <td><span id="modalPayCategory"></span></td>
            </tr>
            <tr>
                <th scope="row">예약방문일</th>
                <td><span id="modalResVisitDate"></span></td>
            </tr>
            <tr>
                <th scope="row">예약 방문 시간</th>
                <td><span id="modalResVisitTime"></span></td>
            </tr>
            <tr>
                <th scope="row">예약인원 수</th>
                <td><span id="modalResMemberCount"></span>명</td>
            </tr>
        </tbody>
    </table>
</div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
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
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>

	<script type="text/javascript">
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
		
				$('.sales-row').on('click', function() {
				    // 기존의 코드
// 				    var payNum = $(this).data('pay-num'); // 결제번호 추출
// 				    console.log("Payment number: ", payNum); // 로그 출력

					// 숫자 포맷터 생성 (여기서는 한국어를 사용하여 천 단위 구분 기호 설정, 필요에 따라 변경 가능)
  					  var formatter = new Intl.NumberFormat('ko-KR');


				    // 여기에 새로운 코드 추가
				    var payStatus = $(this).data('status'); // 'data-status' 속성에서 결제 상태 추출
				    var statusText = payStatus === '1' ? '완료' : '취소'; // 상태 코드를 텍스트로 변환 (상태 코드가 다르다면 조정 필요)
// 				    console.log("Payment status: ", statusText); // 로그 출력
					var statusCategory = payCategory == '1' ? '일반 결제' : '포인트 충전 결제';
					
// 				    var payment = $(this).data('payment'); // 결제 금액 추출
			        var payment = parseInt($(this).data('payment'), 10); // 결제 금액 추출 및 정수 변환
// 				    var discountPayment = $(this).data('discount-payment'); // 할인 금액 추출
				    var discountPayment = parseInt($(this).data('discount-payment'), 10); // 할인 금액 추출 및 정수 변환

				    // 총 금액 계산
				    var totalPayment = payment + discountPayment; // 총 금액을 계산합니다.
				    
				    var payCategory = $(this).data('pay-category'); // 결제 유형 추출

				    // 날짜 포매팅
				    var rawPayDate = $(this).data('pay-date'); // 'data-pay-date' 속성에서 원본 날짜 데이터를 가져옴
				    var payDate = new Date(rawPayDate); // JavaScript 날짜 객체로 변환
				    var formattedPayDate = payDate.getFullYear() + '-' + 
				                            ('0' + (payDate.getMonth() + 1)).slice(-2) + '-' + 
				                            ('0' + payDate.getDate()).slice(-2); // 'yyyy-MM-dd' 형식으로 포매팅

				    // 모달 내용 설정
				    $('#modalpayNum').text($(this).data('pay-num')); // 모달에 결제번호 설정
				    $('#modalPayStatus').text(statusText); // 모달에 결제 상태 설정
			        $('#modalComIdx').text($(this).data('com-idx'));
			        $('#modalComName').text($(this).data('com-name'));
			        $('#modalClassTitle').text($(this).data('class-title'));
			        $('#modalMemberId').text($(this).data('member-id'));

			        // 모달 내용 설정
			        $('#modalPayment').text(formatter.format(payment)); // 결제금액 설정
			        $('#modalDiscountPayment').text(formatter.format(discountPayment)); // 할인금액 설정
			        $('#modalTotalPayment').text(formatter.format(totalPayment)); // 총 금액 설정

// 			        $('#modalPayment').text(formatter.format(payment)); // 모달에 포맷된 결제금액 설정
// 			        $('#modalDiscountPayment').text(formatter.format(discountPayment)); // 모달에 포맷된 할인금액 설정

			        $('#modalPayMethod').text($(this).data('pay-method'));
// 			        $('#modalPayDate').text($(this).data('pay-date'));
				    $('#modalPayDate').text(formattedPayDate); // 모달에 포매팅된 결제일 설정
// 			        $('#modalPayCategory').text($(this).data('pay-category'));
			        $('#modalPayCategory').text(statusCategory);
			        $('#modalResVisitDate').text($(this).data('res-visit-date'));
			        $('#modalResVisitTime').text($(this).data('res-visit-time'));
			        $('#modalResMemberCount').text($(this).data('res-member-count'));

				    // 모달 표시
				    $('#paymentDetailModal').modal('show');
				});


		
</script>
</body>
</html>