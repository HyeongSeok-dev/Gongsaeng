
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>

<meta name="description" content="GARO is a real-estate template">
	<meta name="author" content="Kimarotec">
	<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<!-- 	<link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- 	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
	
	<%-- css 파일 --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
	
<link href="${pageContext.request.contextPath }/resources/css/payment.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" type="text/css">

        <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-select.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/easypiechart.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.easypiechart.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/wow.js"></script>
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main_noicheck.js"></script>
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

	<script src="${pageContext.request.contextPath }/resources/js/payment.js"></script>


<script type="text/javascript"> 
	function paymentAgreeView() {
			/* 팝업창 중앙 정렬 */
			var popupW = 950;
			var popupH = 700;
			var left = Math.ceil((window.screen.width - popupW)/2);
			var top = Math.ceil((window.screen.height - popupH)/2);
			window.open('${pageContext.request.contextPath }/payment/agree','','width='+popupW+',height='+popupH+',left='+left+',top='+top+',scrollbars=yes,resizable=no,toolbar=no,titlebar=no,menubar=no,location=no')	
		}
	
	//계좌인증
	function authAccount() {
		// 새 창을 사용하여 사용자 인증 페이지 요청
		let requestUri = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
							+ "response_type=code"
							+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
							+ "&redirect_uri=http://localhost:8081/gongsaeng/callback"
							+ "&scope=login inquiry transfer"
							+ "&state=${sessionScope.state}"
							+ "&auth_type=0";
		window.open(requestUri, "authWindow", "width=600, height=800");
	}
	
	//충전하기
	function charge(){
	window.open("payment/charge", "authWindow", "width=600, height=800");	
	}
	
</script>
</head>
<body>
 	<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
	<main>
		<!-- 제목 -->
		<div class="page-head">  
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">결제하기</h1>               
                    </div>
                </div>
            </div>
        </div>
		<form action="paymentPro" name="payForm" method="POST" id="payForm">
			<div class="div_outter">
			
				
				<div class="div_inner">
					<div class="div_left_box">
					
					<!-- 수강클래스====================================================== -->
					<section id="leftSec01" class="section_box">
					<h2>{class_title}</h2>
					<table class="info_tag" >
					    <tr>
					        <td rowspan="4">
					            <img src="${pageContext.request.contextPath }/resources/img/payment_test.png" width="140" id="kakao">
					        </td>
					    </tr>
					    
					    <tr>
					        <td width="130">
					            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수강인원</span>
					        </td>
					        <td>
					        	{res_person}
					        </td>
					    </tr>
					    <tr>
					        <td>
					            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;방문날짜/시간</span>
					        </td>
					        <td>
					        	{class_start_date}
					        	{class_start_time}
					        </td>
					    </tr>
					    <tr>
					        <td>
					            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;결제 금액</span>
					        </td>
					        <td>
					        	{payment}
					        </td>
					    </tr>
					</table>

				</section>
					
				<!-- 쿠폰선택========================================================== -->
				<section id="leftSec02" class="section_box">
					<h2>쿠폰선택</h2><br>
					<select>
				        <option value="">쿠폰을 선택하세요</option>
				        <option value="coupon1">쿠폰 1</option>
				        <option value="coupon2">쿠폰 2</option>
				        <option value="coupon3">쿠폰 3</option>
				    </select>
				</section>
					
				<!-- 포인트============================================================ -->
				<section id="leftSec03" class="section_box">
					<h2>포인트</h2>
						<div class="point">
							<div class="point_result">
<!-- 									<span class="font_stlye">포인트</span>  -->
								<span class="point_available">
									&nbsp;&nbsp;사용가능금액&nbsp;
									<span id="useablePoint">
											${map.paymentInfo.totalPoint}
									</span>
									원
									 &nbsp; <span><a id="useAllPoint">전액사용</a></span>
								</span>
							</div>
							<input type="text" value="" placeholder="사용할 포인트를 입력해 주세요" class="point_to_use" name="pointToUse"/><span class="won">원</span>
							<button id="usePoint" class="use_button"  type="button">사용하기</button>
						</div>
				</section>
				
				<!-- 0페이============================================================ -->
				<section id="leftSec03" class="section_box">
					<h2>0페이</h2>
						<div class="pay">
							<div class="pay_result">
<!-- 									<span class="font_stlye">포인트</span>  -->
								<span class="pay_available">
									&nbsp;&nbsp;사용가능페이금액&nbsp;
									<span id="useablePay">
											${map.paymentInfo.totalPoint}
									</span>
									원
									 &nbsp; <span><a id="useAllPoint">전액사용</a></span>
								</span>
							</div>
							<input type="text" value="" placeholder="사용할 0페이를 입력해 주세요" class="pay_to_use" name="payToUse" /><span class="won">원</span>
							
							<button id="chargePay" class="use_button charge" type="button" onclick="alert('계좌를 인증해주세요.'); authAccount();">사용하기</button>
							<!-- member_id유무에 따른 버튼 출력 -->
<%-- 							<c:choose> --%>
<%-- 								없을때(계좌등록) --%>
<%-- 								<c:when test="${empty sessionScope. }">  --%>
<!-- 									<button id="chargePay" class="use_button charge"  type="button" onclick="authAccount()">충전하기</button> -->
<%-- 								</c:when> --%>
<%-- 								있을때(사용) --%>
<%-- 								<c:when test="${not empty sessionScope. }">  --%>
<!-- 									<button id="usePay" class="use_button"  type="button">사용하기</button> -->
<%-- 								</c:when> --%>
<%-- 							</c:choose> --%>
							<%--충전하기 임시버튼 --%>
							<br>
							<button onclick="charge()">충전하기(임시버튼)</button>
						</div>
				</section>
				
				<!-- 결제수단================================================= -->
				<section id="leftSec04" class="section_box">
					<h2>결제수단</h2>
					<div class="choice_pay">
<!-- 						<div> -->
<!-- 							<input type="radio" name="pay_on_sit" value="2" id="onSitePayment"><span class="font_stlye"> 메뉴만 현장결제</span> -->
<!-- 						</div>	 -->
						<!-- 카카오페이 -->
						<div style="display: flex; align-items: center;">
							<input type="radio" name="pay_method" value="1" id="kakaoPay">&nbsp;
							<img src="${pageContext.request.contextPath }/resources/img/kakaoPay_png.png" width="65" id="kakao">
							<span class="font_stlye"> </span>
						</div>
						<br>
						<!-- 카드결제 -->
						<div style="display: flex; align-items: center;">
							<input type="radio" name="pay_method" value="2" id="creditCardPayment"><span class="font_stlye"> 카드결제</span>
						</div>
						<br>
						<!-- 휴대폰결제 -->
						<div style="display: flex; align-items: center;">	
							<input type="radio" name="pay_method" value="3" id="mobilePhonePayment"><span class="font_stlye"> 휴대폰결제</span>
						</div>
					</div>
				</section>
				
				<!-- 약관동의=============================================== -->
				<br>
				<section id="leftSec04" class="section_box">
					<h2>약관 동의</h2>
					<div class="agree_top">
						<!-- 이용약관동의 -->
						<div class="agree_main">
							<span style="display: flex; align-items: center;">
								<input type="checkbox" id="payAgree" name="agreement" class="agree">
								<span class="each_agree" style="width: 300px;">
									<span class="agree_font">[필수]</span> 
									결제이용 약관 동의 합니다.
								</span>
							</span>
							<span>
								<a onclick="paymentAgreeView()" class="info-content agree">보기</a>
							</span>
						</div>	
						<!-- 환불정책동의 -->
						<div class="agree_main">
							<span style="display: flex; align-items: center;">
								<input type="checkbox" id="payBackAgree" name="agreement" class="agree">
								<span class="each_agree">
									<span class="agree_font">[필수]</span> 
									환불정책 약관 동의 합니다.
								</span>
							</span>
							<span>
								<a onclick="paymentAgreeView()" class="info-content agree">보기</a>
							</span>
						</div>	
						<!-- 정보동의 -->
						<div class="agree_main">
							<span style="display: flex; align-items: center;">
								<input type="checkbox" name="per_info_consent" class="agree">
								<span class="each_agree">
									<span class="agree_font">[선택]</span> 
									개인정보 제3자 제공 동의 합니다.
								</span>
							</span>
							<span>
								<a onclick="paymentAgreeView()" class="info-content agree">보기</a>
							</span>
						</div>
						<!-- 전체동의 -->
						<div class="agree_main">
						<span style="display: flex; align-items: center;">
							<input type="checkbox" name="checkAllAgree" value="전체동의" class="agree" id="checkAllAgree">
							<span class="each_agree">
								<span class="all_agree">[전체동의]</span>
								 서비스약관에 동의 합니다.
							</span>
						</span>
						</div>
					</div>
				</section>
				
				<br>
				<div class="div_submit">
					<button type="button" class="pay_button" id="payBtn">결제</button> 
				</div>
				
			</div>
			<div class="div_right_box">
				<div class="right_box_stiky">
					<section id="rightSec01" class="section_box">
						<h2>결제 상세</h2>
						<div class="total">
							<div class="price_detail">
								<div>
									<span class="detail">결제금액</span>
									<span class="detail_price"><span id="reservationPrice">${map.paymentInfo.res_table_price}</span> 원</span>
									<%--paymentVO --%>
					 <%-- param--%> <input type="hidden" value="${map.res.res_table_price}" name="pay_per_price"/>
								</div>
				
								<!-- 쿠폰할인 -->
								<div>
									<span class="detail">쿠폰할인</span>
									<span class="detail_price">
										- 
										<span id="discountPoint_text">0</span>
										원
									</span>
								</div> 
								<!-- 포인트할인 -->
								<div>
									<span class="detail">포인트할인</span>
									<span class="detail_price">
										- 
										<span id="discountPoint_text">0</span>
										원
									</span>
								</div> 
							</div>
							<div class="point">
								<div class="points_earn">
									<span class="detail">적립예정 포인트</span>
									<span class="detail_price">
										<span id="earnedPoints_text">0</span> 원
									</span>
								</div>
								<div>
									<span class="detail"> </span>
									<span class="detail_price">
										<div class="info_price">
											<span></span>
											<span class="menu_name2">현재 포인트</span>
											<span class="price" >
												<span id="nowPoint">${map.paymentInfo.totalPoint}</span>
												원
											</span>
										</div>
										<div class="info_price">
											<span></span>
											<span class="menu_name2">총 포인트</span>
											<span class="price">
												<span id="totalPoint">0</span>
												원
											</span>
										</div>
									</span>
								</div> 
							</div>
							<div class="total_detail">
								<span class="total_info">총 결제 금액</span>
								<span class="total_price" >
									<span id="totalPayment_text">${map.paymentInfo.totalPrice}</span>
									원
								</span>
							</div>
						</div>
					</section>
					
					
				</div>
			</div>
		</div>
	</div>
			<%--info페이지에 필요한 할인전 예약금액 --%>
	<%-- 		<input type="hidden" value="${map.paymentInfo.totalPrice}" name="beforeDiscountTotalPrice"/> --%>
			<input type="hidden" value="${map.res.res_idx}" name="res_idx" id="res_idx"/>
			<input type="hidden" value="${map.pay}" name="pay_num" id="pay_num"/>
			<!-- 결제자(회원)와 예약자가 다를 수 있기 때문에 결제자 정보 저장 -->
			<input type="hidden" value="${map.member.user_email}" name="user_email" id="user_email"/>
			<input type="hidden" value="${map.member.user_name}" name="user_name" id="user_name"/>
			<input type="hidden" value="${map.member.user_phone}" name="user_phone" id="user_phone"/>
			<input type="hidden" value="" name="pay_card_co" id="pay_card_co"/>
			<input type="hidden" value="" name="discountPoint" id="discountPoint"/>
			<input type="hidden" value="" name="earnedPoints" id="earnedPoints" />
			<input type="hidden" value="" name="totalPayment"  id="totalPayment"/>
			<input type="hidden" value="" name="preOrderTotalPrice"  id="preOrderTotalPrice"/>
		</form>
	</main>
	
	<hr>
	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer> 
	
</body>
</html>