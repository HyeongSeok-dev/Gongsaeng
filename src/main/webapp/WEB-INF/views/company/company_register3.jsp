<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공생 | 클래스 등록 - 기타 제공 사항</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link
	href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css"
	rel="stylesheet" />
<!-- DatePicker -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- Global CSS -->
<link
	href="${pageContext.request.contextPath }/resources/css/global.css"
	rel="stylesheet" />
<style type="text/css">
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5!important;
	
}

.form-control {
  height: 50px; 
}

.custom-font-size {
    font-size: 18px;
}

.card label {
    font-size: 18px!important;
}

.register3_text {
	font-size: 1.2em!important;
		color: #000000;
	
}

.content {
	background-color: #fff!important;
}

.card label {
	color: #666A73!important;
}

.card_small {
	background-color: #fff;
	border-radius: 10px;
	padding: 5px;
	
}

.form-control {
	background-color: #fff!important;
	font-size: 16px!important;
	border-radius: 10px!important;
	font-family: 'NanumSquareNeo-Variable';
	color: #666A73;
}

.form-control:focus {
    border: none!important; /* 테두리 제거 */
    /* 필요에 따라 다른 스타일 속성 추가 */
}

 .main-panel { 
      overflow-y: auto;  /* 필요에 따라 스크롤바가 나타남  */
 } 

.unnecessary-scroll-area {
    overflow-y: hidden;
}


button {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
}  

</style>
<script type="text/javascript">
</script>
</head>
<body class="클래스 등록">
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
    	  <jsp:include page="./sidebar_wrapper.jsp"/>
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler"> 
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">클래스 등록 (기타 제공 사항)</a>

					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> 
						<span class="navbar-toggler-bar navbar-kebab"></span> 
						<span class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="now-ui-icons ui-1_zoom-bold"></i>
									</div>
								</div>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons media-2_sound-wave"></i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i
									class="now-ui-icons location_world"></i>
									<p>
										<span class="d-lg-none d-md-block">Some Actions</span>
									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons users_single-02"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-11">
						<div class="card">
							<div class="card-header">
								<h5 class="title">클래스 등록 (기타 제공사항)</h5>
							</div>
							<div class="card-body">
								<form>
				            <label>기타 제공사항 선택</label><br>         
								<div class="card_small">
									<div class="row">
									    <div class="col-md-12">
									        <div class="form-group">
									            <input type="checkbox" value="1" id="workshop">&nbsp;
									            <label for="workshop" class="register3_text_label">공방 보유</label>
									            <input type="checkbox" value="2" id="park">&nbsp;
									            <label for="park" class="register3_text_label">주차 공간</label>
									            <input type="checkbox" value="3" id="wifi">&nbsp;
									            <label for="wifi" class="register3_text_label">와이파이</label>
									            <input type="checkbox" value="4" id="coffee">&nbsp;
									            <label for="coffee" class="register3_text_label">커피 별도구매</label>
									            <input type="checkbox" value="5" id="bus">&nbsp;
									            <label for="bus" class="register3_text_label">대중교통 용이</label>
									        </div>
									    </div>
									</div>
									<div class="row">
									    <div class="col-md-12">
									        <div class="form-group">
    								            <input type="checkbox" value="6" id="taxi">&nbsp;
    								            <label for="taxi" class="register3_text_label">택시/자가용 추천</label>
									        	<input type="checkbox" value="7" id="snack">&nbsp;
									        	<label for="snack" class="register3_text_label">음료/간식 제공</label>
									        </div>
									    </div>
									</div>
								 </div>	
									<br>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
												<label>추가 제공사항 및 유의사항</label>
												<!-- ========================================================================== -->
												<br>
												<div class="form-group">
<!-- 													<label>시작일</label>  -->
													<input type="text" class="form-control" placeholder="내용을 입력해주세요" >
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
											<br>
												<label>태그 입력</label>
												<!-- ========================================================================== -->
												<br>
												<div class="form-group">
												<div class="guide">※ 키워드를 입력하고 스페이스바를 누르면 자동으로 '#'가 붙습니다.</div>
<!-- 													<input type="text" class="form-control" placeholder="검색에 사용되는 단어를 키워드로 등록해주세요" > -->
													<input type="text" class="form-control" id="keyword" name="com_search_tag" value="" placeholder="검색에 사용되는 단어를 키워드로 등록해주세요">
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
												<label>자주 하는 질문(FAQ)</label>
												<!-- ========================================================================== -->
												<br>
												<span class="register3_text">질문 1</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" >
												</div>
												<span class="register3_text">답변 1</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" >
												</div>
												<br>
												<span class="register3_text">질문 2</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" >
												</div>
												<span class="register3_text">답변 2</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" >
												</div>
												<br>
												<span class="register3_text">질문 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" >
												</div>
												<span class="register3_text">답변 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" >
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						</div>
					<div class="col-md-11 pl-1">	
					<div class="submit_btn d-flex justify-content-end">
						<button type="button" class="btn btn-danger btn-col-md-4 mr-2 custom-font-size">취소</button>
						<button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register2'">이전</button>
						<button type="button" class="btn btn-default btn-col-md-4  custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register4'">다음</button>
					</div>
					</div>
					</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class=" container-fluid ">
					<nav>
						<ul>
							<li><a href="https://www.creative-tim.com"> Creative Tim
							</a></li>
							<li><a href="http://presentation.creative-tim.com">
									About Us </a></li>
							<li><a href="http://blog.creative-tim.com"> Blog </a></li>
						</ul>
					</nav>
					<div class="copyright" id="copyright">
						&copy;
						<script>
							document.getElementById('copyright').appendChild(
									document.createTextNode(new Date()
											.getFullYear()))
						</script>
						, Designed by <a href="https://www.invisionapp.com"
							target="_blank">Invision</a>. Coded by <a
							href="https://www.creative-tim.com" target="_blank">Creative
							Tim</a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/core/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0"
		type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script
		src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
	<script type="text/javascript">
	
	$('#keyword').on('input', function(e) {
	    var lines = $(this).val().split('\n');
	    for (var i = 0; i < lines.length; i++) {
	        if (lines[i].length > 0 && lines[i][0] != '#') {
	            lines[i] = '#' + lines[i];
	        }
	    }
	    $(this).val(lines.join('\n'));
	    
	});
	
	$('#keyword').on('keydown', function(e) {
    if (e.which == 32) {
        e.preventDefault();
        $(this).val($(this).val() + '#'); 
    }
});
	
	</script>	
</body>

</html>