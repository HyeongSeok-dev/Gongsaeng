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
   공생|관리자페이지 리뷰
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
            <a class="navbar-brand title" href="#pablo">리뷰관리</a>
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
                <h5 class="title">
               		<c:if test="${param.member_id ne null and param.member_id ne ''}">
	    	            ${member_id}님 
            	    </c:if>
                리뷰 목록</h5>
              </div>
              <div class="card-body">
           		<form action="" class="member_date">
	               <div class="row">
              			<div class="search_bar_admin">
			              	<div>
			              		<select name="class_state">
					              	<option value="0">전체일자</option>
					              	<option value="1">등록일자</option>
					              	<option value="2">폐업일자</option>
			              		</select>
			              		<input type="date" id="start_date">&nbsp;&nbsp;~&nbsp;&nbsp;<input type="date" id="end_date">
			              	</div>
	              		</div>
	              	</div>
	               <div class="row">
	              		<div class="search_bar_admin">
							<select>
								<option>전체검색</option>
								<option>사업체명</option>
								<option>클래스명</option>
							</select>&nbsp;
              				<input type="search">&nbsp;
		              		<button type="submit" class="btn btn_default" value="검색">검색</button>
	              		</div>	
	              	</div>
	              	<br>
                	<table class="table table-bordered">
                		<colgroup>
                			<col width="15%"/>
                			<col width="20%"/>
                			<col width="20%"/>
                			<col width="25%"/>
                			<col width="10%"/>
                			<col width="10%"/>
                		</colgroup>
			            <tr>
			                <th>리뷰등록일자</th>
			                <th>클래스명</th>
			                <th>리뷰제목</th>
			                <th>리뷰내용</th>
			                <th>리뷰별점</th>
			                <th>
			                	<select>
									<option>리뷰상태</option>
									<option>정상</option>
									<option>블라인드</option>
								</select>
			                </th>
			            </tr>
			            <!-- 회원 데이터 로우 -->
			            <c:choose>
			            	<c:when test="${empty memberReviewList }">
					       		<tr>
						       		<td colspan="6"> 불러올 정보가 없습니다. </td>
					       		</tr>
					       	</c:when>
				            <c:otherwise>
					            <c:forEach var="review" items="${memberReviewList}">
						            <tr>
						                <td>${review.review_regdate}</td>
						                <td>${review.class_title }</td>
						                <td>${review.review_subject }</td>
						                <td>${review.review_content}</td>
						                <td>${review.review_score } 점</td>
						                <td>
						                	<c:choose>
						                		<c:when test="${review.review_status eq 1}">
						                			정상
						                		</c:when>
						                		<c:when test="${review.review_status eq 2}">
						                			블라인드
						                		</c:when>
						                	</c:choose>
						                </td>
						            </tr>
					            </c:forEach>
				            </c:otherwise>
			            </c:choose>
			    	</table>
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
	<script>
        $(document).ready(function() {
            // 필터 기능 구현
            $('#leaderFilter, #withdrawalFilter').change(function() {
                var leaderFilter = $('#leaderFilter').val();
                var withdrawalFilter = $('#withdrawalFilter').val();
                
                // 로직에 따라 회원 데이터 필터링 및 표시
            });
        });
    </script>

</body>

</html>