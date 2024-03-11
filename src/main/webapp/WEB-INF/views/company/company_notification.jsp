<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <!-- favicon  -->
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
  공생 | 반장 공지사항
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

body {
    background:#f5f5f5;
/*     margin-top:20px; */
/* 	text-align: center; */

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
    font-size: 15px !important;
    text-align: center;
    
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
    text-align: center;    
    font-size: 15px !important;
    background-color: #fff;
}
.thumb-sm {
    height: 32px;
    width: 32px;
     font-size: 15px !important;
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

.table tbody tr:hover {
    cursor: pointer;
}

</style>
</head>

<body>
       <div class="sidebar" data-color="orange">
           <!-- Include sidebar_wrapper.jsp -->
           <jsp:include page="./sidebar_wrapper.jsp"/>
       </div>
	<div class="main-panel" id="main-panel">
		<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">반장 공지사항</a>
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
				<h2 class="title">반장 공지사항</h2>
			</div>
		</div>
		<div class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header"></div>
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-xl-12">
										<div class="card">
											<form>
												<table class="table table-bordered">
													<thead class="thead-dark">
														<tr>
															<th scope="col">#</th>
															<th scope="col">제목</th>
<!-- 															<th scope="col">공지 내용</th> -->
															<th scope="col">등록일</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${companyBoardList}" var="notification" varStatus="status">
															<tr class="notification-row" 
																data-board-subject="${notification.board_subject}"
																data-board-content="${notification.board_content}"
																data-board-date="${notification.board_date}">
																<td scope="row">${status.index + 1}</td>
																<td>${notification.board_subject}</td>
																<td><fmt:formatDate value="${notification.board_date}" pattern="yyyy/MM/dd" /></td>
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
			</div>
		</div>
	</div>
	<!-- Modal -->
		<div class="modal fade" id="boardModal" tabindex="-1" role="dialog" aria-labelledby="boardModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="boardModalLabel">회원 상세 정보</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body text-center">
		        <table class="table mt-3">
		          <tbody>
		            <tr>
		              <th>제목</th>
		              <td><span id="modalBoardSubject"></span></td>
		            </tr>
		            <tr>
		              <th>등록일</th>
		              <td><span id="modalBoardDate"></span></td>
		            </tr>
		            <tr>
		              <th>내용</th>
		              <td><span id="modalBoardContent"></span></td>
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
    <!--   바텀 -->
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
     </footer>
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
  <script type="text/javascript">
  
  $('tr.notification-row').click(function() {
      var boardSubject = $(this).data('board-subject');
      var boardContent = $(this).data('board-content');
      var boardDate = $(this).data('board-date');
    
      // Date 포매팅
      var formattedDate = new Date(boardDate).toISOString().split('T')[0];

      // 모달 내용 업데이트
      $('#modalBoardSubject').text(boardSubject);
      $('#modalBoardContent').text(boardContent);
      $('#modalBoardDate').text(formattedDate); // 포매팅된 날짜로 업데이트

      $('#boardModal').modal('show'); // 모달 표시
  });
  
  </script>
</body>

</html>