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
    공생|관리자 페이지
  </title>
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/main.js"></script>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
<!--   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" /> -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/main.css" rel="stylesheet" />
<style type="text/css">
/* .card-body.todo_count>a{ */
/* 	margin-top: 5px; */
/* 	margin-bottom: 5px; */
/* } */
</style>
</head>

<body class="">
  <div class="wrapper ">

	<%-- 사이드바 --%>
	<jsp:include page="./inc/admin_sidebar.jsp"/>
	
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
            <a class="navbar-brand" href="#pablo">공생</a>
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
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" onclick="window.open"> -->
<!--                   <i class="now-ui-icons ui-1_calendar-60"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">달력</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<%--                 <a class="nav-link" onclick="window.open${pageContext.request.contextPath }/"> --%>
<!--                   <i class="now-ui-icons ui-2_chat-round"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">채팅</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--               </li> -->
              <%-- 공생 메인 홈페이지로 이동 --%>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/">
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
      <!-- 차트 -->
      <div class="panel-header panel-header-lg">

			<!-- 현재 총 결제 금액 -->
		    <div class="now_total">
			    <div class="row row_main">
			    	<div class="col-md-3 currentInfo">
			    		<span class="now_dateTime">${admin.year}년 ${admin.month}월 ${admin.date}일 ${admin.dayOfWeek}요일</span>
				   	</div>
				   	<div class="col-md-3 currentInfo">
					    <span class="now_total_pay">현재 총 결제 금액 : </span>&nbsp;&nbsp;
					    <span class="now_total_price">
						    <b style="font-size: 30px;" id="totalPayment">
							    <c:choose>
							    	<c:when test="${empty admin.totalPayment}">
										0					    	
							    	</c:when>
							    	<c:otherwise>
									    ${admin.totalPayment}
							    	</c:otherwise>
							    </c:choose>
						    </b>
						    원
					    </span>
				   	</div>
				   	<div class="col-md-3 currentInfo">
					    <span class="now_total_pay">현재 총 예약 건수 : </span>&nbsp;&nbsp;
					    <span class="now_total_price">
						    <b style="font-size: 30px;" id="countPayment">
							    <c:choose>
							    	<c:when test="${empty admin.countPayment}">
							    		0
							    	</c:when>
							    	<c:otherwise>
							    		${admin.countPayment}
							    	</c:otherwise>
							    </c:choose>
						    </b>
						    건
					    </span>
			   	 	</div>
			    </div>
		    </div>
      </div>

     <div class="content">
     <div class="row row_main">
		<!-- 왼쪽 섹션 -->
		<div class="col-sm-4">
		    <!-- 오늘의 할일 -->
		    <div class="card" style="height: ">
		        <div class="card-header todo_title">[ 오늘 신청 목록 ]</div>
		        <br>
		        <div class="card-body todo_count">
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/company'">
		            	사업체 가입 신청 : <b id="newComRegCount">
		            	<c:choose>
		            		<c:when test="${empty admin.newComRegCount}">
		            			0
		            		</c:when>
		            		<c:otherwise>
		            			${admin.newComRegCount}
		            		</c:otherwise>
		            	</c:choose>
		            	</b>건
		            </a>
		             <hr>
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/company'">
		            	사업체 환급 신청 : <b id="newComRefundApp">
		            	<c:choose>
		            		<c:when test="${empty admin.newComRefundApp}">
		            			0
		            		</c:when>
		            		<c:otherwise>
		            			${admin.newComRefundApp}
		            		</c:otherwise>
		            	</c:choose>
		            	</b>건
		            </a>
		             <hr>
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/report/class'">
		            	클래스 신고 : <b id="newClassReport">
		            	<c:choose>
		            		<c:when test="${empty admin.newClassReport}">
		            			0
		            		</c:when>
		            		<c:otherwise>
		            			${admin.newClassReport}
		            		</c:otherwise>
		            	</c:choose>
		            	</b>건
		            </a>
		             <hr>
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/report/review'">
		            	리뷰 신고 : <b id="newReviewReport">
		            	<c:choose>
		            		<c:when test="${empty admin.newReviewReport}">
		            			0
		            		</c:when>
		            		<c:otherwise>
		            			${admin.newReviewReport}
		            		</c:otherwise>
		            	</c:choose>
		            	</b>건
		            </a>
		             <hr>
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/cs/chat'">
		            	채팅 문의 : <b id="newQnaChat">
		            	<c:choose>
		            		<c:when test="${empty admin.newQnaChat}">
		            			0
		            		</c:when>
		            		<c:otherwise>
		            			${admin.newQnaChat}
		            		</c:otherwise>
		            	</c:choose>
		            	</b>건
		            </a>
		             <hr>
		             <br>
		        </div>
		        <hr style="border: none;">
		    <!-- 일정 -->
<!-- 		        <div class="card-header">1월 일정</div> -->
<!-- 		        <hr> -->
<!-- 		        <div class="card-body"> -->
<!-- 		            여기에 일정 표기 -->
<!-- 		           <table class="table"> -->
<!-- 		                <tr> -->
<!-- 		                    <th>번호</th> -->
<!-- 		                    <th>목록</th> -->
<!-- 		                    <th>시작일</th> -->
<!-- 		                    <th>종료일</th> -->
<!-- 		                </tr> -->
<!-- 		                <tr  class="tr_hover"> -->
<!-- 		                    <td>1</td> -->
<!-- 		                    <td>출석체크 이벤트</td> -->
<!-- 		                    <td>2024/01/01</td> -->
<!-- 		                    <td>2024/01/31</td> -->
<!-- 		                </tr> -->
<!-- 		            </table> -->
<!-- 		        </div> -->
		    </div>
		</div>
		
		<!-- 오른쪽 섹션 -->
		<div class="col-sm-8">
		    <!-- 통계 표 -->
		    <div class="row row_main">
			    <div class="card">
			        <div class="card-body">
			            <table class="table">
			                <tr class="table_main">
<!-- 			                    <th>현재 방문자 수</th> -->
<!-- 			                    <th>누적 방문자 수</th> -->
			                    <th>신규 가입자 수</th>
			                    <th>누적 가입자 수</th>
			                    <th>신규 사업체 가입 수</th>
			                    <th>누적 사업체 가입 수</th>
			                </tr>
			                <tr class="table_main">
			                    <td>
				                    <span id="newMemberCount">
			                    		 <c:choose>
									    	<c:when test="${empty admin.newMemberCount}">
									    	0
									    	</c:when>
									    	<c:otherwise>
									    	${admin.newMemberCount}
									    	</c:otherwise>
									     </c:choose>
				                    </span>
			                     명
			                    </td>
			                    <td>
				                    <span id="cumulativeMemberCount">
		                    		 <c:choose>
								    	<c:when test="${empty admin.cumulativeMemberCount}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.cumulativeMemberCount}
								    	</c:otherwise>
								     </c:choose>
				                    </span>
			                     명
			                    </td>
			                    <td>
			                    	<span id="newBanjangCount">
		                    		 <c:choose>
								    	<c:when test="${empty admin.newBanjangCount}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.newBanjangCount}
								    	</c:otherwise>
								     </c:choose>
			                    	</span>
			                     건
			                    </td>
			                    <td>
				                    <span id="cumulativeBanjangCount">
		                    		 <c:choose>
								    	<c:when test="${empty admin.cumulativeBanjangCount}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.cumulativeBanjangCount}
								    	</c:otherwise>
								     </c:choose>
				                    </span>
			                     건
			                    </td>
			                </tr>
			            </table>
			        </div>
			    </div>
		    </div>
		    <div class="row">
			    <div class="card">
			        <div class="card-body">
			            <table class="table">
			                <tr class="table_main">
			                    <th>이달 예약 건수 </th>
			                    <th>누적 예약 건수</th>
			                    <th>이달 결제 총 금액</th>
			                    <th>누적 결제 총 금액</th>
			                </tr>
			                <tr class="table_main">
			                    <td>
				                    <span id="monthlyPayCount">
		                    		 <c:choose>
								    	<c:when test="${empty admin.monthlyPayCount}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.monthlyPayCount}
								    	</c:otherwise>
								     </c:choose>
				                    </span>
			                     건
			                    </td>
			                    <td>
				                    <span id="cumulativePayCount">
		                    		 <c:choose>
								    	<c:when test="${empty admin.cumulativePayCount}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.cumulativePayCount}
								    	</c:otherwise>
								     </c:choose>
				                    </span>
			                     건
			                    </td>
			                    <td >
				                    <span id="monthlyTotalPay">
		                    		 <c:choose>
								    	<c:when test="${empty admin.monthlyTotalPay}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.monthlyTotalPay}
								    	</c:otherwise>
								     </c:choose>
				                    </span>
			                     원
			                    </td>
			                    <td >
				                    <span id="cumulativeTotalPay">
		                    		 <c:choose>
								    	<c:when test="${empty admin.cumulativeTotalPay}">
								    	0
								    	</c:when>
								    	<c:otherwise>
								    	${admin.cumulativeTotalPay}
								    	</c:otherwise>
								     </c:choose>
				                    </span>
			                     원
			                    </td>
			               </tr>
			            </table>
			        </div>
			    </div>
		    </div>
		    <div class="row">
			    <div class="card">
			        <div class="card-body">
			            <table class="table">
			                <tr class="table_main">
			                    <th>이달 환급금</th>
			                    <th>누적  환급금</th>
			                    <th>이달 환급 수익</th>
			                    <th>누적 환급 수익</th>
			                </tr>
			                <tr class="table_main">
			                    <td>
			                    <span id="monthlyRefund">
	                    		 <c:choose>
							    	<c:when test="${empty admin.monthlyRefund}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.monthlyRefund}
							    	</c:otherwise>
							     </c:choose>
			                    </span>
			                     원
			                    </td>
			                    <td>
			                    <span id="cumulativeRefund">
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativeRefund}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativeRefund}
							    	</c:otherwise>
							     </c:choose>
			                    </span>
			                     원
			                    </td>
			                    <td>
			                    <span  id="monthlyRefundFee">
	                    		 <c:choose>
							    	<c:when test="${empty admin.monthlyRefundFee}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.monthlyRefundFee}
							    	</c:otherwise>
							     </c:choose>
			                    </span>
			                     원
			                    </td>
			                    <td>
			                    <span id="cumulativeRefundFee">
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativeRefundFee}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativeRefundFee}
							    	</c:otherwise>
							     </c:choose>
			                    </span>
			                     원
			                    </td>
			               </tr>
			            </table>
			        </div>
			    </div>
		    </div>
		</div>
	</div>
	    <div class="row row_main">
		    <div class="col-sm-12">
			    <!-- 그래프 공간 -->
			    <div class="card card-chart">
			    	 <div class="card-header">
				    		<h5 class="card-category">${admin.year}년 매출</h5>
				    		<h4 class="card-title">월별 결제(원)</h4>
			    	 </div>
			    	 <!-- 더보기 버튼 -->
<!-- 			    	 <div class="dropdown"> -->
<!-- 	                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown"> -->
<!-- 	                    <i class="now-ui-icons ui-1_simple-add"></i> -->
<!-- 	                  </button> -->
<!-- 	                 </div> -->
			         <div class="card-body">
			            <!-- 여기에 그래프를 넣어주세요. -->
	        	        <canvas id="bigDashboardChart"></canvas>
			         </div>
			         <input type="hidden" value="${thisYearPay.jan }" id="jan">
			         <input type="hidden" value="${thisYearPay.feb }" id="feb">
			         <input type="hidden" value="${thisYearPay.mar }" id="mar">
			         <input type="hidden" value="${thisYearPay.apr }" id="apr">
			         <input type="hidden" value="${thisYearPay.may }" id="may">
			         <input type="hidden" value="${thisYearPay.jun }" id="jun">
			         <input type="hidden" value="${thisYearPay.jul }" id="jul">
			         <input type="hidden" value="${thisYearPay.aug }" id="aug">
			         <input type="hidden" value="${thisYearPay.sep }" id="sep">
			         <input type="hidden" value="${thisYearPay.oct }" id="oct">
			         <input type="hidden" value="${thisYearPay.nov }" id="nov">
			         <input type="hidden" value="${thisYearPay.dec }" id="dec">
			    </div>
			</div>
		</div>
		 <div class="row row_main">
          <div class="col-sm-12">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">${admin.year}년 매출</h5>
                <h4 class="card-title">월별 환급 수익(원)</h4>
<!--                 <div class="dropdown"> -->
<!--                   <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown"> -->
<!--                     <i class="now-ui-icons ui-1_simple-add"></i> -->
<!--                   </button> -->
<!--                 </div> -->
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExample"></canvas>
                  <input type="hidden" value="${thisYearRef.jan }" id="janRef">
			         <input type="hidden" value="${thisYearRef.feb }" id="febRef">
			         <input type="hidden" value="${thisYearRef.mar }" id="marRef">
			         <input type="hidden" value="${thisYearRef.apr }" id="aprRef">
			         <input type="hidden" value="${thisYearRef.may }" id="mayRef">
			         <input type="hidden" value="${thisYearRef.jun }" id="junRef">
			         <input type="hidden" value="${thisYearRef.jul }" id="julRef">
			         <input type="hidden" value="${thisYearRef.aug }" id="augRef">
			         <input type="hidden" value="${thisYearRef.sep }" id="sepRef">
			         <input type="hidden" value="${thisYearRef.oct }" id="octRef">
			         <input type="hidden" value="${thisYearRef.nov }" id="novRef">
			         <input type="hidden" value="${thisYearRef.dec }" id="decRef">
                </div>
              </div>
            </div>
          </div>
          </div>
		 <div class="row row_main">
          <div class="col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">${admin.year}년 사업체</h5>
                <h4 class="card-title">신규 사업체수(개)</h4>
<!--                 <div class="dropdown"> -->
<!--                   <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown"> -->
<!--                     <i class="now-ui-icons ui-1_simple-add"></i> -->
<!--                   </button> -->
<!--                 </div> -->
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExampleWithNumbersAndGrid"></canvas>
                  <input type="hidden" value="${thisYearCom.jan }" id="janC">
			         <input type="hidden" value="${thisYearCom.feb }" id="febC">
			         <input type="hidden" value="${thisYearCom.mar }" id="marC">
			         <input type="hidden" value="${thisYearCom.apr }" id="aprC">
			         <input type="hidden" value="${thisYearCom.may }" id="mayC">
			         <input type="hidden" value="${thisYearCom.jun }" id="junC">
			         <input type="hidden" value="${thisYearCom.jul }" id="julC">
			         <input type="hidden" value="${thisYearCom.aug }" id="augC">
			         <input type="hidden" value="${thisYearCom.sep }" id="sepC">
			         <input type="hidden" value="${thisYearCom.oct }" id="octC">
			         <input type="hidden" value="${thisYearCom.nov }" id="novC">
			         <input type="hidden" value="${thisYearCom.dec }" id="decC">
                </div>
                </div>
              </div>
            </div>
          <div class="col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">${admin.year}년 회원</h5>
                <h4 class="card-title">신규 회원수(명)</h4>
<!--                 <div class="dropdown"> -->
<!--                   <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown"> -->
<!--                     <i class="now-ui-icons ui-1_simple-add"></i> -->
<!--                   </button> -->
<!--                  </div> -->
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="barChartSimpleGradientsNumbers"></canvas>
                  <input type="hidden" value="${thisYearMem.jan }" id="janM">
			         <input type="hidden" value="${thisYearMem.feb }" id="febM">
			         <input type="hidden" value="${thisYearMem.mar }" id="marM">
			         <input type="hidden" value="${thisYearMem.apr }" id="aprM">
			         <input type="hidden" value="${thisYearMem.may }" id="mayM">
			         <input type="hidden" value="${thisYearMem.jun }" id="junM">
			         <input type="hidden" value="${thisYearMem.jul }" id="julM">
			         <input type="hidden" value="${thisYearMem.aug }" id="augM">
			         <input type="hidden" value="${thisYearMem.sep }" id="sepM">
			         <input type="hidden" value="${thisYearMem.oct }" id="octM">
			         <input type="hidden" value="${thisYearMem.nov }" id="novM">
			         <input type="hidden" value="${thisYearMem.dec }" id="decM">
                </div>
                </div>
              </div>
        	 </div>
            </div>
<!--       바텀 -->
      <footer class="footer">
       <jsp:include page="./inc/admin_bottom.jsp"/>
     </footer>
    </div>
  </div>
  </div>
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
 
<!--    Google Maps Plugin    -->
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
</body>

</html>