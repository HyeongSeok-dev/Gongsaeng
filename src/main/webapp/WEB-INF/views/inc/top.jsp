<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--                     <a id="navbar-brand" href="index"><img class="main_logo" src="${pageContext.request.contextPath }/resources/assets/img/logo1 (3).png" alt=""></a> -->
				<!--  로고임!! -->
				<div class="main_logo_div">
					<a id="navbar-brand" href="${pageContext.request.contextPath}"><img class="main_logo1"
						src="${pageContext.request.contextPath }/resources/assets/img/logo2 (2).png" alt=""></a> <a id="navbar-brand" href="${pageContext.request.contextPath}"><img
						class="main_logo2" src="${pageContext.request.contextPath }/resources/assets/img/logo3.png" alt=""></a>
				</div>
				<a id="navbar-brand" href="${pageContext.request.contextPath}"><img class="main_logo3"
					src="${pageContext.request.contextPath }/resources/assets/img/logo4.png" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<div class="button navbar-right">
					<a href="${pageContext.request.contextPath}/member/login"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.45s">Login</button></a>
					<button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property')" data-wow-delay="0.48s">고객센터</button>
					<!--                     	<a href=""><img src="${pageContext.request.contextPath }/resources/assets/img/free-icon-chat-5356106.png" alt="chat" width="50"></a> -->
				</div>
				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="dropdown ymm-sw " data-wow-delay="0.1s"><a href="index" class="dropdown-toggle active" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">클래스찾기<b class="caret"></b></a>
						<ul class="dropdown-menu navbar-nav">
							<li><a href="index-2">Home Style 2</a></li>
							<li><a href="index-3">Home Style 3</a></li>
							<li><a href="index-4">Home Style 4</a></li>
							<li><a href="index-5">Home Style 5</a></li>

						</ul></li>

					<li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="properties">반장님 찾기</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="property">커뮤니티</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>