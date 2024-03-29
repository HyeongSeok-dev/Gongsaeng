<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<!-- favicon  -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 정산 신청
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
  <!-- global CSS -->
    <link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />
    <style type="text/css">
    @font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

body {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
    	background: #f5f5f5; 
    
}

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5!important;
	
}


.content {
	background-color: #fff!important;
}

.btn {
    font-size: 15px !important;
    font-weight: bold;
}

    
    </style>
</head>

<body>
<!--   <div class="wrapper "> -->
    <div class="sidebar" data-color="orange">
      <jsp:include page="./sidebar_wrapper.jsp"/>
      </div>
<!--     </div> -->
    <div class="main-panel" id="main-panel">
		<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">정산 신청</a>
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
          <h2 class="title">정산 신청</h2>
<!--           <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p> -->
        </div>
      </div>
		<div class="content">
			<div class="row">
<!-- 				<div class="col-md-6"> -->
<!-- 					<h4 class="card-title">정산 가능 금액</h4> -->
<!-- 					<div class="card"> -->
<!-- 						<div class="card-header"></div> -->
<!-- 						<div class="card-body"> -->
<!-- 							<div class="income_btn d-flex align-items-center justify-content-between"> -->
<!-- 								<h5 class="card-title md-4">1,000,000원</h5> -->
<!-- 								<button type="button" class="btn btn-danger md-2">정산 신청</button> -->
<!-- 							</div> -->
<!-- 							<span class="account-number mt-2">국민은행</span><br> -->
<!-- 							<span class="account-number mt-2">11790204135187 조혜진</span> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<div class="col-md-6">
    <h4 class="card-title">정산 가능 금액</h4>
    <div class="card">
        <div class="card-header"></div>
        <br>
        <h5 class="card-title">&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${income}" groupingUsed="true" pattern="#,##0" />원</h5>
        <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
                <!-- 계좌 정보 -->
                <c:forEach items="${companyAccountInfo}" var="company">
                <div>
                    <span class="account-number">[ 계좌정보 ]</span><br>
                    <span class="account-number">${company.com_bank}</span><br>
                    <span class="account-number">${company.com_account}  ${company.com_account_name}</span>
                </div>
                </c:forEach>
                <!-- 정산 신청 버튼 -->
                <div>
                    <button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/company/income/list'">정산 신청</button>
                </div>
            </div>
        </div>
    </div>
</div>
				<div class="col-md-6">
					<h4 class="card-title">정산 완료 금액</h4>
					<div class="card">
						<div class="card-header"></div>
						<br>
<%-- 							<h5 class="card-title">&nbsp;&nbsp;&nbsp;${income}</h5> --%>
							<h5 class="card-title">&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${totalPayment}" groupingUsed="true" pattern="#,##0" />원</h5> 	
<%-- 							<h5 class="card-title">${totalPayment}원</h5> 	 --%>
						<div class="card-body">
          					 <div class="income_btn d-flex justify-content-end">
<!-- 								<button type="button" class="btn btn-danger md-2">환급 신청</button> -->
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
</body>

</html>