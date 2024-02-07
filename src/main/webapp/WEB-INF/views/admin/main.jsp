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
              <li class="nav-item">
                <a class="nav-link" onclick="window.open${pageContext.request.contextPath }/">
                  <i class="now-ui-icons ui-2_chat-round"></i>
                  <p>
                    <span class="d-lg-none d-md-block">채팅</span>
                  </p>
                </a>
              </li>
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
						    <b style="font-size: 30px;">
							    <c:choose>
							    	<c:when test="${empty admin.totalPayment}">
										0					    	
							    	</c:when>
							    	<c:otherwise>
									    ${admin.totalPay}
							    	</c:otherwise>
							    </c:choose>
						    </b>
						    원
					    </span>
				   	</div>
				   	<div class="col-md-3 currentInfo">
					    <span class="now_total_pay">현재 총 예약 건수 : </span>&nbsp;&nbsp;
					    <span class="now_total_price">
						    <b style="font-size: 30px;">
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
		        <div class="card-body todo_count">
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/company/refund'">
		            	사업체 가입 신청 : <b>
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
		            	사업체 환급 신청 : <b>
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
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/company/class'">
		            	클래스 신고 : <b>
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
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/report/class'">
		            	리뷰 신고 : <b>
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
		            	채팅 문의 : <b>
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
		            <a onclick="location.href='${pageContext.request.contextPath }/admin/cs/chat'">
		            	뭐하지 : <b>
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
			                    <th>신규 반장가입자 수</th>
			                    <th>누적 반장가입자 수</th>
			                </tr>
			                <tr class="table_main">
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.newMemberCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.newMemberCount}
							    	</c:otherwise>
							     </c:choose>
			                     명
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.newBanjangCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.newBanjangCount}
							    	</c:otherwise>
							     </c:choose>
			                     명
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativeBanjangCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${cumulativeBanjangCount}
							    	</c:otherwise>
							     </c:choose>
			                     명
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativePayCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativePayCount}
							    	</c:otherwise>
							     </c:choose>
			                     명
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
			                    <th>이번달 예약 건수 </th>
			                    <th>누적 예약 건수</th>
			                    <th>이번달 결제 총 금액</th>
			                    <th>누적 결제 총 금액</th>
			                </tr>
			                <tr class="table_main">
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.newMemberCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.newMemberCount}
							    	</c:otherwise>
							     </c:choose>
			                     건
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.newBanjangCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.newBanjangCount}
							    	</c:otherwise>
							     </c:choose>
			                     건
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativeBanjangCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativeBanjangCount}
							    	</c:otherwise>
							     </c:choose>
			                     원
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativePayCount}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativePayCount}
							    	</c:otherwise>
							     </c:choose>
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
			                    <th>이번달 환급금</th>
			                    <th>누적  환급금</th>
			                    <th>이번달 환급 수익</th>
			                    <th>누적 환급 수익</th>
			                </tr>
			                <tr class="table_main">
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.monthlyRefund}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.monthlyRefund}
							    	</c:otherwise>
							     </c:choose>
			                     원
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativeRefund}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativeRefund}
							    	</c:otherwise>
							     </c:choose>
			                     원
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.monthlyRefundFee}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.monthlyRefundFee}
							    	</c:otherwise>
							     </c:choose>
			                     원
			                    </td>
			                    <td>
	                    		 <c:choose>
							    	<c:when test="${empty admin.cumulativeRefundFee}">
							    	0
							    	</c:when>
							    	<c:otherwise>
							    	${admin.cumulativeRefundFee}
							    	</c:otherwise>
							     </c:choose>
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
	    	<div style="width: 850px;"></div>
	    	<div style="width: 850px;"></div>
		    
		    <div class="col-sm-12">
			    <!-- 그래프 공간 -->
			    <div class="card card-chart">
			    	 <div class="card-header">
				    		<h5 class="card-category">${admin.year}년 공생</h5>
				    		<h4 class="card-title">총 매출(만원)</h4>
			    	 </div>
			    	 <div class="dropdown">
	                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
	                    <i class="now-ui-icons ui-1_simple-add"></i>
	                  </button>
	                 </div>
			         <div class="card-body">
			            <!-- 여기에 그래프를 넣어주세요. -->
	        	        <canvas id="bigDashboardChart"></canvas>
			         </div>
			         <input type="hidden" value="${admin.jan }" id="jan">
			         <input type="hidden" value="${admin.feb }" class="feb">
			         <input type="hidden" value="${admin.mar }" class="mar">
			         <input type="hidden" value="${admin.apr }" class="apr">
			         <input type="hidden" value="${admin.may }" class="may">
			         <input type="hidden" value="${admin.jun }" class="jun">
			         <input type="hidden" value="${admin.jul }" class="jul">
			         <input type="hidden" value="${admin.aug }" class="aug">
			         <input type="hidden" value="${admin.sep }" class="sep">
			         <input type="hidden" value="${admin.oct }" class="oct">
			         <input type="hidden" value="${admin.nov }" class="nov">
			         <input type="hidden" value="${admin.dec }" class="dec">
			    </div>
			</div>
		</div>
		 <div class="row row_main">
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">${admin.month}월 회원</h5>
                <h4 class="card-title">신규 회원수</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                    <i class="now-ui-icons ui-1_simple-add"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExample"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">${admin.month}월 사업자</h5>
                <h4 class="card-title">신규 사업자수</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                    <i class="now-ui-icons ui-1_simple-add"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExampleWithNumbersAndGrid"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">${admin.month}월 매출</h5>
                <h4 class="card-title">환급 수익</h4>
                <div class="dropdown">
                  <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                    <i class="now-ui-icons ui-1_simple-add"></i>
                  </button>
                 </div>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="barChartSimpleGradientsNumbers"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>
<!--       바텀 -->
<%--         <input type="text" value="${thisYearPay.jan }" class="jan"> --%>
<%--         <input type="text" value="${thisYearPay.feb }" class="feb"> --%>
<%--         <input type="text" value="${thisYearPay.mar }" class="mar"> --%>
<%--         <input type="text" value="${thisYearPay.apr }" class="apr"> --%>
<%--         <input type="text" value="${thisYearPay.may }" class="may"> --%>
<%--         <input type="text" value="${thisYearPay.jun }" class="jun"> --%>
<%--         <input type="text" value="${thisYearPay.jul }" class="jul"> --%>
<%--         <input type="text" value="${thisYearPay.aug }" class="aug"> --%>
<%--         <input type="text" value="${thisYearPay.sep }" class="sep"> --%>
<%--         <input type="text" value="${thisYearPay.oct }" class="oct"> --%>
<%--         <input type="text" value="${thisYearPay.nov }" class="nov"> --%>
<%--         <input type="text" value="${thisYearPay.dec }" class="dec"> --%>
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
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
<!--   <!--  Google Maps Plugin    --> -->
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/main.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
</body>

</html>