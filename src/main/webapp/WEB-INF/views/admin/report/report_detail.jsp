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
   공생|관리자페이지 신고
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
  <script type="text/javascript">
  	$(function() {
		$("#modifyStatus").on("click",function(){
			$("form").submit();
		});
	});
  </script>
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
            <a class="navbar-brand title" href="#pablo">클래스신고 관리</a>
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
                <h5 class="title">신고 상세 정보</h5>
                <form action="modifyReport">
					<select name="report_status">
						<option value="1" <c:if test="${report.report_status eq 1 }">selected</c:if>>접수</option>
						<option value="2" <c:if test="${report.report_status eq 2 }">selected</c:if>>승인</option>
						<option value="3" <c:if test="${report.report_status eq 3 }">selected</c:if>>반려</option>
					</select>
					<input type="hidden" name="class_idx" value="${report.class_idx }">
					<input type="hidden" name="report_idx" value="${report.report_idx }">
				</form>
              </div>
              <div class="card-body">
	             <table class="table table-bordered">
	             	<colgroup>
	             		<col width="25%">
	             		<col width="25%">
	             		<col width="25%">
	             		<col width="25%">
	             	</colgroup>
	             	<tr>
	             		<th>신고번호</th>
	             		<td>${report.report_idx }</td>
	             		<th>신고일자</th>
	             		<td>${report.report_date }</td>
	             	</tr>
	             	<tr>
	             		<th>신고자아이디</th>
	             		<td>${report.member_id }</td>
	             		<th>피신고자아이디</th>
	             		<td>
		             		<c:choose>
								<c:when test="${report.report_category eq 2 }">
				             		${report.banjangMember_id }
								</c:when>	             		
								<c:when test="${report.report_category eq 1 }">
				             		${report.reviewerMember_id }
								</c:when>	             		
		             		</c:choose>
	             		</td>
	             	</tr>
	             	<c:choose>
	             		<c:when test="${report.report_category eq 2 }">
			             	<!-- 클래스신고시 -->
			             	<tr>
			             		<th>사업체명</th>
			             		<td>${report.com_name }</td>
			             		<th>클래스명</th>
			             		<td>${report.class_title }</td>
			             	</tr>
	             		</c:when>
	             		<c:when test="${report.report_category eq 1 }">
			             	<!-- 리뷰신고시 -->
			             	<tr>
			             		<th>클래스명</th>
			             		<td>${report.class_title }</td>
			             		<th>리뷰내용</th>
			             		<td>${report.review_content }</td>
			             	</tr>
	             		</c:when>
	             	</c:choose>
	             	<tr>
	             		<th>신고사유</th>
	             		<td colspan="3">${report.report_reason }</td>
	             	</tr>
	             	<tr>
	             		<th>상세내용</th>
	             		<td colspan="3">${report.report_content }</td>
	             	</tr>
	             	<tr>
	             		<th>답변받을 이메일</th>
	             		<td colspan="3">${report.member_email}</td>
	             	</tr>
	             </table>	 	
              </div>
            </div>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-12 btn_bottom">
        		<c:choose>
					<c:when test="${report.report_category eq 2 }">
			        	<button type="button" class="btn btn_default" onclick="location.replace('${pageContext.request.contextPath }/admin/report/class')">목록</button>&nbsp;&nbsp;
					</c:when>	             		
					<c:when test="${report.report_category eq 1 }">
			        	<button type="button" class="btn btn_default" onclick="location.replace('${pageContext.request.contextPath }/admin/report/review')">목록</button>&nbsp;&nbsp;
					</c:when>	             		
           		</c:choose>
	        	<button type="button" class="btn btn_default" id="modifyStatus">변경저장</button>
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
</body>

</html>