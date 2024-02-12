<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mypage.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">리뷰 신고</h4>
					</div>
					<div class="panel-body">
						<form action="reviewReportPro" method="POST">
						    <input type="hidden" name="class_idx" value="${classIdx}">
						    <input type="hidden" name="review_idx" value="${reviewIdx}">
						    <input type="hidden" name="member_id" value="${memberId}">
							<div class="form-group">
								<label><strong>어떤 점이 불편하셨나요?</strong></label>
								<div class="radio">
									<label><input type="radio" name="report_reason" required value="1" style="margin-left: -240px">신뢰하기 어려운 홍보 게시</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="report_reason" required value="2" style="margin-left: -240px">음란성 또는 부적절한 내용</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="report_reason" required value="3" style="margin-left: -240px">추명예훼손 및 저작권 침해</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="report_reason" required value="4" style="margin-left: -240px">기타</label>
								</div>
							</div>
							<div class="form-group">
								<label for="report_content"><strong>신고 내용을 작성하세요</strong></label>
								<textarea class="form-control" id="report_content" name="report_content" required rows="3"
								placeholder="타당한 사유가 없는 허위 신고 시 이용에 제한이 가해질 수 있으므로,  &#13;&#10;신중하게 제보해 주세요.&#13;&#10;신고된 내용은 7일 이내의 검수과정을 거친 후 적용됩니다.(500자 제한)"></textarea>
								<input type="hidden" name="class_idx" value="${param.class_idx}">
								<input type="hidden" name="member_id" value="${member_member_id}">
							</div>
							<div class="form-group">
								<label for="email"><strong>답변받을 이메일</strong></label>
								<input type="email" id="email" value="${member.member_email}" name="member_email" class="form-control" required >
							</div>
							<div class="form-group">
								<label for="email"><strong>답변받을 전화번호(선택)</strong></label>
								<input type="tel" id="phone" name="member_phone" class="form-control" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
							</div>
												<hr class="line">
					<br>
					<p class="law_info">
						수집하는 개인정보는 신고 내용 처리를 위해 꼭 필요한 정보로 동의 후 이용 가능하며, 수집된 정보는 관련 법령에 따라
						3년간 보관 후 삭제됩니다. <br>※ 수집 개인정보 : 이메일,휴대폰 번호
					</p>
					<br>
					<div class="agree_checkbox_block">
					  <label class="label_checkbox">
					    <input type="checkbox" class="form_checkbox" id="agreeCheckbox"> 
					    <span class="label strong">[필수] 개인정보 수집 및 이용 동의</span>
					  </label>
					  <a href="#" class="info-content">보기</a>
					  <!-- Popup window -->
<!-- 					  <div id="infoPopup" class="popup"> -->
<!-- 					    <div class="popup-content"> -->
<!-- 					      <div class="law_content">개인정보 처리 방침</div><br> -->
<!-- 					      <p>주식회사 찜콩(이하 "회사"라 한다)는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법령에 따라 이용자의 개인정보를 보호하고, 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침을 수립합니다.</p><br> -->
<!-- 					      <p>개인정보처리방침은 이용자가 언제나 쉽게 열람할 수 있도록 서비스 초기화면을 통해 공개하고 있으며 관련법령, 지침, 고시 또는 캐치테이블 서비스 정책의 변경에 따라 달라질 수 있습니다. 1. 개인정보의 수집·이용 회사는 다음과 같이 이용자의 개인정보를 수집합니다. 처리하고 있는 개인정보는 다음의 수집·이용 목적 이외의 용도로는 활용되지 않으며, 수집·이용 목적이 변경되는 경우에는 개인정보보호법에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p> -->
<!-- 					      Close button -->
<!-- 					      <button id="closePopup" class="close-btn">닫기</button> -->
<!-- 					    </div> -->
<!-- 					  </div> -->
<!-- 					</div> -->
					<div class="sticky_bottom_btns">
			<a href="${pageContext.request.contextPath}/review/detail?class_idx=${classIdx}" class="btn btn-lg btn-outline" id="cancelButton">취소</a>
			<button class="btn btn-lg btn-red" id="reportButton" type="submit">신고하기</button>
		</div>
							
<!-- 							<button type="submit" class="btn btn-default">신고하기</button> -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>