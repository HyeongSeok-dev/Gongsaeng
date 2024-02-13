<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <!--  -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   공생|관리자페이지 회원
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
            <a class="navbar-brand title" href="#pablo">회원관리</a>
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
                <h5 class="title">회원 목록</h5>
              </div>
              <div class="card-body">
              	<form action="memberSearch">
<!-- 	               <div class="row"> -->
<!-- 		               <div class="col-md-6 col_checkbox_2"> -->
<!-- 				            <div class="row row_checkbox"> -->
<!-- 					              	<input type="checkbox" value="0" name="member_status0" id="statusAllCheck" -->
<%-- 					              		<c:if test="${param.member_status eq '0'}">checked</c:if>> &nbsp;전체상태&nbsp; --%>
<!-- 					              	<input type="checkbox" value="1" name="member_status1" class="member_status" id="statusNormal" -->
<%-- 					              		<c:if test="${param.member_status eq '1'}">checked</c:if>> &nbsp;정상&nbsp; --%>
<!-- 					              	<input type="checkbox" value="2" name="member_status2" class="member_status" id="statusDormantl" -->
<%-- 					              		<c:if test="${param.member_status eq '2'}">checked</c:if>> &nbsp;휴면&nbsp; --%>
<!-- 					              	<input type="checkbox" value="3" name="member_status3" class="member_status" id="statusWithdraw" -->
<%-- 					              		<c:if test="${param.member_status eq '3'}">checked</c:if>> &nbsp;탈퇴&nbsp; --%>
<!-- 			              	</div> -->
<!-- 				            <div class="row row_checkbox"> -->
<!-- 					              	<input type="checkbox" value="0" name="member_category0" id="categoryAllCheck" -->
<%-- 					              		<c:if test="${param.member_category eq '0'}">checked</c:if>> &nbsp;전체분류&nbsp; --%>
<!-- 					              	<input type="checkbox" value="1" name="member_category1" class="member_category" id="categoryNormalCheck" -->
<%-- 					              		<c:if test="${param.member_category eq '1'}">checked</c:if>> &nbsp;일반&nbsp; --%>
<!-- 					              	<input type="checkbox" value="2" name="member_category2" class="member_category" id="categoryBanjangCheck" -->
<%-- 					              		<c:if test="${param.member_category eq '2'}">checked</c:if>> &nbsp;반장&nbsp; --%>
<!-- 					              	<input type="checkbox" value="2" name="com_status2" class="member_category" id="categoryApprovalCheck" -->
<%-- 					              		<c:if test="${param.com_status eq '2'}">checked</c:if>> &nbsp;반장승인대기&nbsp; --%>
<!-- 					              	<input type="checkbox" value="5" name="com_status5" class="member_category" id="banjangRejectionCheck" -->
<%-- 					              		<c:if test="${param.com_status eq '5'}">checked</c:if>> &nbsp;반장승인거절&nbsp; --%>
<!-- 			              	</div> -->
<!-- 		              	</div> -->
<!-- 		              	<div class="col-md-6"> -->
<!-- 		              		<div class="member_date filter_search"> -->
<!-- 		              			<div class="search_bar_admin"> -->
<!-- 		              				<select name="searchDate"> -->
<%-- 						              	<option value="allDate" <c:if test="${param.searchDate eq 'allDate'}">selected</c:if>>전체일자</option> --%>
<%-- 						              	<option value="registerDate" <c:if test="${param.searchDate eq 'registerDate'}">selected</c:if>>가입일자</option> --%>
<%-- 						              	<option value="withdrawDate" <c:if test="${param.searchDate eq 'withdrawDate'}">selected</c:if>>탈퇴일자</option> --%>
<!-- 				              		</select> -->
<!-- 				              		<input type="date" id="start_date">&nbsp;&nbsp;~&nbsp;&nbsp;<input type="date" id="end_date"> -->
<!-- 			              		</div> -->
<!-- 			              		<div class="search_bar_admin"> -->
<!-- 									<select name="searchType"> -->
<%-- 										<option value="id_nick" <c:if test="${param.searchType eq 'id_nick'}">selected</c:if>>전체검색</option> --%>
<%-- 										<option value="id" <c:if test="${param.searchType eq 'id'}">selected</c:if>>아이디</option> --%>
<%-- 										<option value="nick" <c:if test="${param.searchType eq 'nick'}">selected</c:if>>닉네임</option> --%>
<!-- 									</select>&nbsp; -->
<!-- 		              				<input type="search" value="" id="searchText">&nbsp; -->
<!-- 				              		<button type="submit" class="btn btn_default" id="searchBtn" value="검색">검색</button> -->
<!-- 			              		</div>	 -->
<!-- 			              	</div> -->
<!-- 		              	</div> -->
<!-- 	              	</div> -->
	              	<div id="tableDivArea">
	              	<table class="table table-bordered">
                		<colgroup>
                			<col width="20%" />
                			<col width="10%" />
                			<col width="20%" />
                			<col width="20%" />
                			<col width="10%" />
                			<col width="10%" />
                		</colgroup>
			            <tr>
			                <th>가입/탈퇴일자</th>
			                <th>회원분류</th>
			                <th>아이디</th>
			                <th>닉네임</th>
			                <th>회원상태</th>
			                <th>신고받은 수</th>
			            </tr>
			            <!-- 회원 데이터 로우 -->
			            <c:forEach var="m" items="${memberList }">
			            	<c:choose>
								<c:when test="${m.member_status eq 3}">
				            		<tr>
								</c:when>		            	
								<c:otherwise>
				            		<tr class="tr_hover" onclick="location.href='${pageContext.request.contextPath }/admin/member/detail?member_id=${m.member_id }'">
								</c:otherwise>
			            	</c:choose>
						        <td>${m.member_date }</td>
						        <td>
					                <c:choose>
										<c:when test="${m.com_status eq 2}">
							                반장 승인대기
					                	</c:when>
										<c:when test="${m.com_status eq 5}">
							                반장 승인거부
					                	</c:when>
										<c:when test="${m.member_category eq 2}">
							                반장
					                	</c:when>
										<c:when test="${m.member_category eq 1}">
							                일반
					                	</c:when>
					                	<c:otherwise>
							                관리자
					                	</c:otherwise>
					                </c:choose>
				                </td>
				                <td>${m.member_id }</td>
				                <td>${m.member_nick }</td>
				                <td>
									<c:choose>
										<c:when test="${m.member_status eq 1}">
							               정상
					                	</c:when>
										<c:when test="${m.member_status eq 2}">
							               휴면
					                	</c:when>
					                	<c:otherwise>
							               탈퇴
					                	</c:otherwise>
				               		</c:choose>
								</td>
				                <td>
					                <c:choose>
										<c:when test="${m.reportCount eq null }">
											0
					                	</c:when>
					                	<c:otherwise>
							                ${m.reportCount } 
					                	</c:otherwise>
					                </c:choose>
					                건
				                </td>
				         </tr>
			            </c:forEach>
			   	 </table>
              	</div>
			   </form>
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
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
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
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/member.js"></script>
</body>

</html>