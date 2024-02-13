<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <!--  -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   공생|관리자페이지 사업체
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
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/admin.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/company.js"></script>
<%--   <script src="${pageContext.request.contextPath }/resources/admin_assets/js/company_refund.js"></script> --%>
</head>

<body class="">
  <div class="wrapper ">
    <jsp:include page="../inc/admin_sidebar.jsp"/>
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
            <a class="navbar-brand title" href="#pablo">사업체관리</a>
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
<!--                 <a class="nav-link" href="#pablo"> -->
<!--                   <i class="now-ui-icons ui-1_calendar-60"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">달력</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#pablo"> -->
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
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">
                <c:choose>
					<c:when test="${empty param.member_id }">
    	             사업체 환급 목록
					</c:when>
					<c:otherwise>
 	                 ${param.member_id }님의 사업체 환급 목록
					</c:otherwise>
                </c:choose>
                </h5>
              </div>
              <div class="card-body">
<!-- 	              <div class="row"> -->
<!-- 	               		<div class="col-md-6 col_checkbox"> -->
<!-- 		               		<div class=" col_checkbox"> -->
<!-- 				              	<input type="checkbox" value="전체선택" id="calStausAllCheck"> &nbsp;전체선택&nbsp; -->
<!-- 				              	<input type="checkbox" value="2" name="pay_cal_staus" class="pay_cal_staus"> &nbsp;신규신청&nbsp; -->
<!-- 				              	<input type="checkbox" value="3" name="pay_cal_staus" class="pay_cal_staus"> &nbsp;환급승인&nbsp; -->
<!-- 				              	<input type="checkbox" value="4" name="pay_cal_staus" class="pay_cal_staus"> &nbsp;환급완료&nbsp; -->
<!-- 			              	</div> -->
<!-- 		              	</div> -->
<!-- 		              	<div class="col-md-6"> -->
<!-- 		              		<form action="" class="member_date"> -->
		              			
<!-- 		              			<div class="search_bar_admin"> -->
<!-- 					              	<div> -->
<!-- 					              		<select name="class_state"> -->
<!-- 							              	<option value="0">전체일자</option> -->
<!-- 							              	<option value="1">신청일자</option> -->
<!-- 							              	<option value="2">처리일자</option> -->
<!-- 					              		</select> -->
<!-- 					              		<input type="date" id="start_date">&nbsp;&nbsp;~&nbsp;&nbsp;<input type="date" id="end_date"> -->
<!-- 					              	</div> -->
<!-- 			              		</div> -->
<!-- 			              		<div class="search_bar_admin"> -->
<!-- 									<select> -->
<!-- 										<option>전체검색</option> -->
<!-- 										<option>아이디</option> -->
<!-- 										<option>사업체명</option> -->
<!-- 									</select>&nbsp; -->
<!-- 		              				<input type="search">&nbsp; -->
<!-- 				              		<button type="submit" class="btn btn_default" value="검색">검색</button> -->
<!-- 			              		</div>	 -->
<!-- 		              		</form> -->
<!-- 		              	</div> -->
<!-- 	              	</div> -->
	              	
                <table class="table table-bordered">
                	<colgroup>
	             		<col width="15%" />
	             		<col width="15%" />
	             		<col width="15%" />
	             		<col width="15%" />
	             		<col width="15%" />
	             		<col width="15%" />
	             		<col width="15%" />
		            </colgroup>
		            <tr>
		                <th>신청일자</th>
		                <th>사업체명</th>
		                <th>신청금액</th>
		                <th>수수료</th>
		                <th>최종환급금액</th>
		                <th>정산일자</th>
		                <th>처리상태</th>
		            </tr>
		            <!-- 회원 데이터 로우 -->
		           
	           	 <c:choose>
	           	 	<c:when test="${empty refundList }">
		           	 	<tr>
				       		<td colspan="7"> 불러올 정보가 없습니다. </td>
		           	 	</tr>
			       	</c:when>
			       	<c:otherwise>
			            <c:forEach var="refund" items="${refundList }">
					       	<c:if test="${refund.pay_cal_status > 1 }">
					            <tr class="tr_hover" onclick="location.href='${pageContext.request.contextPath }/admin/company/refund/detail?pay_num=${refund.pay_num }'">
					                <td>${refund.refund_request_date}</td>
					                <td>
					                	${refund.com_name }
					                </td>
					                <td> <span class="regPay">${refund.payment}</span> 원</td>
					                <td> <span class="payFee">${refund.payment * 0.1}</span>원</td>
					                <td> <span class="payRef">${refund.payment * 0.9}</span>원</td>
					                <td>
					                <c:choose>
					                	<c:when test="${empty refund.refund_date}">
							                미정산
					                	</c:when>
										<c:otherwise>
							                ${refund.refund_date}
										</c:otherwise>
					                </c:choose>
					                </td>
					                <td class="td_btn">
										<c:choose>
											<c:when test="${refund.pay_cal_status eq 2 }">
												정산신청
											</c:when>
											<c:when test="${refund.pay_cal_status eq 3 }">
												정산승인 처리중
											</c:when>
											<c:when test="${refund.pay_cal_status eq 4 }">
								                환급완료
											</c:when>
										</c:choose>
					                </td>
					       	</c:if>
			            </c:forEach>
			       	</c:otherwise>
		          </c:choose>
			    </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
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
<%--   <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script> --%>


</body>

</html>