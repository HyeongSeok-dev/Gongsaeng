<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mypage.css">

<script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
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
<script type="text/javascript">
$(document).ready(function() {

	$("#cancel_btn").click(function(event) {
		if(!confirm('환불금액을 확인해주세요. 예약을 취소하시겠습니까?')){
			 event.preventDefault();
		}
	
	});
});
</script>
</head>
<body>
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<br>
	<div class="container">
		<div class="row">
			<!-- 좌측 메뉴바 -->
			<div class="col-sm-3">
				<c:choose>
					<c:when test="${empty member.member_img}">
						<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" style="cursor: pointer; max-height: 250px;"
							onclick="location.href='modifyProfile'">
					</c:when>
					<c:when test="${fn:contains(member.member_img,'http')}">
						<img alt="profile" src="${member.member_img}" style="cursor: pointer; max-height: 250px;" onclick="location.href='modifyProfile'">
					</c:when>
					<c:otherwise>
						<img alt="profile" src="${pageContext.request.contextPath }/resources/upload/${member.member_img}" style="cursor: pointer; max-height: 250px;"
							onclick="location.href='modifyProfile'">
					</c:otherwise>
				</c:choose>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title text-center cursor" onclick="javascript:location.href='main'">마이페이지</h4>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item cursor active" onclick="javascript:location.href='reservation'">예약 내역</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#alert">알림
								<div id="alert" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='alert'">알림</li>
<!-- 										<li class="list-group-item cursor" onclick="javascript:location.href='chat'">채팅</li> -->
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#offer">혜택
								<div id="offer" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor" onclick="javascript:location.href='coupon'">쿠폰</li>
										<li class="list-group-item cursor" onclick="javascript:location.href='cash'">캐쉬</li>
										
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#favorList">관심리스트
								<div id="favorList" class="panel-collapse collapse ">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='bookmark'">북마크</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='following'">팔로우</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='recent'">최근 본 클래스</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#review">리뷰/신고
								<div id="review" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='reviewWrite'">리뷰 쓰기</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='reviewList'">내가 쓴 리뷰</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#community">커뮤니티
								<div id="community" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='../community/question'">공생 커뮤니티</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='community'">내가 쓴 글</li>
									</ul>
								</div>
							</li>
							<li class="list-group-item cursor" data-toggle="collapse" href="#info">내 정보/반장 신청
								<div id="info" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item cursor " onclick="javascript:location.href='modifyProfile'">내 정보 수정</li>
										<li class="list-group-item cursor " onclick="javascript:location.href='../company/banjang/register'">반장회원 신청</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 우측 본문영역 -->
			<div class="col-sm-9">
				<h2>예약 취소하기</h2>
				<form action="reservationCancelPro" method="POST">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title text-center">${resInfo.class_title}</h3>
					</div>
					<div class="panel-body">
						<c:choose>
							<c:when test="${resInfo.class_category eq 1}">
								<div class="col-xs-6 text-center">정규수업 시작 일시: ${resInfo.class_start_date} &nbsp; ${fn:substring(resInfo.class_start_time,0,5)}</div>
								<div class="col-xs-6 text-center">정규수업 종료 일시: ${resInfo.class_end_date} &nbsp; ${fn:substring(resInfo.class_end_time,0,5)}</div>
							</c:when>
							<c:otherwise>
								<div class="col-xs-6 text-center">시작 시간: ${resInfo.res_visit_date} &nbsp; ${fn:substring(resInfo.res_visit_time,0,5)}</div>
								<div class="col-xs-6 text-center">종료 시간: ${resInfo.res_visit_date} &nbsp; ${fn:substring(resInfo.res_visit_time,0,5)}</div>
							</c:otherwise>
						</c:choose>
						<p class="text-center">예약 인원: ${resInfo.res_member_count}명</p>
						<div class="row">
							<div class="col-xs-9">반장님 : ${resInfo.com_name}</div>
							<div class="col-xs-3 text-right">
								<button class="btn btn-default" type="button" onclick="javascript:location.href='chat?com_idx=${resInfo.com_idx}'">채팅 문의</button>
							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">결제 정보</h3>
					</div>
					<div class="panel-body">
						<p>결제 방법: ${resInfo.pay_method}</p>
						<p>최종 결제 금액: ${resInfo.payment}원</p>
						<p>포인트 적립 내역: ${resInfo.point}포인트</p>
						<hr>
						<p>
							<strong>환불 예상 금액: ${resInfo.payment}원</strong>
						</p>
						<p>
							<strong>소멸 포인트: ${resInfo.point}포인트</strong>
						</p>
					</div>
				</div>

				<div class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">취소 및 환불 정책</h3>
						</div>
						<div class="panel-body">환불 정책 내용</div>
					</div>
				</div>
				<button class="btn btn-danger btn-block" id="cancel_btn" type="submit">예약 취소</button>
				<input type="hidden" value="${resInfo.pay_num}" name="pay_num">
				<input type="hidden" value="${resInfo.member_id}" name="member_id">
				</form>
			</div>
		</div>
	</div>
</body>
</html>