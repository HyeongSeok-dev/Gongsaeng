<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>공생 | 공간을 생각하다</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/chat.css">

<script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/wow.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
</head>
<body>
    <jsp:include page="../inc/top.jsp"></jsp:include>
    	<br>
				<div class="col-lg-12">
				<div class="container">
					<h3 class=" text-center">메시지</h3>
					<div class="messaging">
						<div class="inbox_msg">
							<div class="inbox_people">
								<div class="headind_srch">
									<div class="recent_heading">
										<h4>대화 목록</h4>
									</div>
								</div>
								<div class="inbox_chat">
									<div class="chat_list active_chat">
										<div class="chat_people">
											<div class="chat_img">
												<img src="https://ptetutorials.com/images/user-profile.png" alt="sunil">
											</div>
											<div class="chat_ib">
												<h5>
													사랑 인테리어 <span class="chat_date">1월 22일</span>
												</h5>
												<p>안녕하세요.</p>
											</div>
										</div>
									</div>
									<div class="chat_list">
										<div class="chat_people">
											<div class="chat_img">
												<img src="https://ptetutorials.com/images/user-profile.png" alt="sunil">
											</div>
											<div class="chat_ib">
												<h5>
													미움 인테리어 <span class="chat_date">1월 21일</span>
												</h5>
												<p>메롱</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="mesgs">
								<div class="msg_history">
									<div class="incoming_msg">
										<div class="incoming_msg_img">
											<img src="https://ptetutorials.com/images/user-profile.png" alt="sunil">
										</div>
										<div class="received_msg">
											<div class="received_withd_msg">
												<p>ㄱㄱ?</p>
												<span class="time_date"> 11:01 오전 | 1월 21일</span>
											</div>
										</div>
									</div>
									<div class="outgoing_msg">
										<div class="sent_msg">
											<p>ㄴㄴ</p>
												<span class="time_date"> 11:02 오전 | 1월 21일</span>
										</div>
									</div>
									<div class="incoming_msg">
										<div class="incoming_msg_img">
											<img src="https://ptetutorials.com/images/user-profile.png" alt="sunil">
										</div>
										<div class="received_msg">
											<div class="received_withd_msg">
												<p>ㄱㄱ?</p>
												<span class="time_date"> 11:04 오전 | 1월 21일</span>
											</div>
										</div>
									</div>
									<div class="outgoing_msg">
										<div class="sent_msg">
											<p>ㄱㄱ</p>
												<span class="time_date"> 11:08 오전 | 오늘</span>
										</div>
									</div>
								</div>
								
								<div class="type_msg">
									<div class="input_msg_write">
										<input type="text" class="write_msg" placeholder="메시지를 입력하세요" />
										<button class="msg_send_btn" type="button">
											<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- Footer area -->
		<!-- 하단바 삽입-->
		<div class="bottom">
			<jsp:include page="../inc/bottom.jsp"/>
		</div>
</body>
</html>