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
<!--             <form> -->
<!--               <div class="input-group no-border"> -->
<!--                 <input type="text" value="" class="form-control" placeholder="Search..."> -->
<!--                 <div class="input-group-append"> -->
<!--                   <div class="input-group-text"> -->
<!--                     <i class="now-ui-icons ui-1_zoom-bold"></i> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </form> -->
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
                <h5 class="title">사업체 목록</h5>
              </div>
              <div class="card-body">
<!-- 	               <div class="row checkbox_row"> -->
<!-- 	               		<div class="col-md-7 checkbox_div"> -->
<!-- 			               		<div class="row col_checkbox"> -->
<!-- 					              	<input type="checkbox" value="전체선택" name="com_status" id="statusAllCheck"> &nbsp;전체선택&nbsp; -->
<!-- 					              	<input type="checkbox" value="1" name="com_status" class="com_status"> &nbsp;정상&nbsp; -->
<!-- 					              	<input type="checkbox" value="2" name="com_status" class="com_status"> &nbsp;승인대기&nbsp; -->
<!-- 					              	<input type="checkbox" value="3" name="com_status" class="com_status"> &nbsp;폐업&nbsp; -->
<!-- 					              	<input type="checkbox" value="4" name="com_status" class="com_status"> &nbsp;보류&nbsp; -->
<!-- 					              	<input type="checkbox" value="5" name="com_status" class="com_status"> &nbsp;승인거부&nbsp; -->
<!-- 				              	</div> -->
<!-- 			               		<div class="row col_checkbox"> -->
<!-- 					              	<input type="checkbox" value="0" name="com_category" id="categoryAllCheck"> &nbsp;전체선택&nbsp; -->
<!-- 					              	<input type="checkbox" value="1" name="com_category" class="com_category"> &nbsp;바닥 시공&nbsp; -->
<!-- 					              	<input type="checkbox" value="2" name="com_category" class="com_category"> &nbsp;벽/천장 시공&nbsp; -->
<!-- 					              	<input type="checkbox" value="3" name="com_category" class="com_category"> &nbsp;부분 인테리어&nbsp; -->
<!-- 					              	<input type="checkbox" value="4" name="com_category" class="com_category"> &nbsp;야외 시공&nbsp; -->
<!-- 					              	<input type="checkbox" value="5" name="com_category" class="com_category"> &nbsp;종합 인테리어&nbsp; -->
<!-- 					              	<input type="checkbox" value="6" name="com_category" class="com_category"> &nbsp;기타 시공&nbsp; -->
<!-- 				              	</div> -->
<!-- 		              	</div> -->
<!-- 		              	<div class="col-md-5"> -->
<!-- 		              		<form action="" class="member_date"> -->
		              			
<!-- 		              			<div class="search_bar_admin"> -->
<!-- 					              	<div> -->
<!-- 					              		<select name="class_state"> -->
<!-- 							              	<option value="0">전체일자</option> -->
<!-- 							              	<option value="1">등록일자</option> -->
<!-- 							              	<option value="2">폐업일자</option> -->
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
                		<col width="20%"/>
                		<col width="20%"/>
                		<col width="20%"/>
                		<col width="20%"/>
                		<col width="20%"/>
                	</colgroup>
			            <tr>
			                <th>등록/폐업일자</th>
			                <th>카테고리
<!-- 			                  	<select name="class_main_category"> -->
<!-- 					              	<option value="0">카테고리</option> -->
<!-- 					              	<option value="1">바닥 시공</option> -->
<!-- 					              	<option value="2">벽/천장 시공</option> -->
<!-- 					              	<option value="3">부분 인테리어</option> -->
<!-- 					              	<option value="4">야외 시공</option> -->
<!-- 					              	<option value="5">종합 인테리어</option> -->
<!-- 					              	<option value="6">기타 시공</option> -->
<!-- 			              		</select> -->
			                </th>
			                <th>아이디</th>
			                <th>사업체명</th>
			                <th>상태
<!-- 								<select name="class_state"> -->
<!-- 					              	<option value="0">상태</option> -->
<!-- 					              	<option value="1">정상</option> -->
<!-- 					              	<option value="2">승인대기</option> -->
<!-- 					              	<option value="2">영업중지</option> -->
<!-- 					              	<option value="2">보류</option> -->
<!-- 					              	<option value="2">승인거부</option> -->
<!-- 					              	<option value="2">폐업</option> -->
<!-- 			              		</select> -->
			                </th>
			            </tr>
			            <!-- 회원 데이터 로우 -->
			            <c:forEach var="com" items="${comList }">
				            <tr class="tr_hover" onclick="location.href='${pageContext.request.contextPath }/admin/company/detail?member_id=${com.member_id }'">
				                <td>${com.com_date }</td>
				                <td>
				                	<c:choose>
				                		<c:when test="${com.com_category eq '1' }">
				                			바닥시공
				                		</c:when>
				                		<c:when test="${com.com_category eq '2' }">
				                			벽/천장 시공
				                		</c:when>
				                		<c:when test="${com.com_category eq '3' }">
				                			부분인테리어
				                		</c:when>
				                		<c:when test="${com.com_category eq '4' }">
				                			야외시공
				                		</c:when>
				                		<c:when test="${com.com_category eq '5' }">
				                			종합인테리어 
				                		</c:when>
				                		<c:when test="${com.com_category eq '6' }">
				                			기타 홈인테리어 
				                		</c:when>
				                	</c:choose>
				                </td>
				                <td>${com.member_id }</td>
				                <td>${com.com_name }</td>
				                <td>
				                	<c:choose>
				                		<c:when test="${com.com_status eq 1 }">
				                			정상
				                		</c:when>
				                		<c:when test="${com.com_status eq 2 }">
				                			승인대기
				                		</c:when>
				                		<c:when test="${com.com_status eq 3 }">
				                			폐업
				                		</c:when>
				                		<c:when test="${com.com_status eq 4 }">
				                			보류
				                		</c:when>
				                		<c:when test="${com.com_status eq 5 }">
				                			승인거부
				                		</c:when>
				                	</c:choose>
				               </td>
				            </tr>
			            </c:forEach>
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
  
   <!-- 모달 창 -->
    <div class="modal fade" id="filterModal" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="filterModalLabel">회원 유형 선택</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="allCheck">
                        <label class="form-check-label" for="allCheck">
                            전체 선택
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="leaderCheck">
                        <label class="form-check-label" for="leaderCheck">
                            반장 회원
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="generalCheck">
                        <label class="form-check-label" for="generalCheck">
                            일반 회원
                        </label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary">적용</button>
                </div>
            </div>
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
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/company.js"></script>
  

</body>

</html>