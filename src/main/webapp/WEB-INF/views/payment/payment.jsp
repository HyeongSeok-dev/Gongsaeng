
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>
<link href="${pageContext.request.contextPath }/resources/css/payment.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
<!-- <script src="https://cdn.iamport.kr/v1/iamport.js"></script> -->
<!-- <script src="https://cdn.portone.io/v2/browser-sdk.js"></script> -->
<script src="${pageContext.request.contextPath }/resources/js/payment.js"></script>
<%-- <script src="${pageContext.request.contextPath }/resources/js/payment_API.js"></script> --%>
<script type="text/javascript"> 
	function paymentAgreeView() {
			/* 팝업창 중앙 정렬 */
			var popupW = 950;
			var popupH = 700;
			var left = Math.ceil((window.screen.width - popupW)/2);
			var top = Math.ceil((window.screen.height - popupH)/2);
			window.open('${pageContext.request.contextPath }/payment/agree','','width='+popupW+',height='+popupH+',left='+left+',top='+top+',scrollbars=yes,resizable=no,toolbar=no,titlebar=no,menubar=no,location=no')	
		}
</script>
</head>
<body>
 	<header>
<%-- 		<jsp:include page="../inc/top.jsp"></jsp:include> --%>
	</header>
	<main>
		<form action="paymentPro" name="payForm" method="POST" id="payForm">
			<div class="div_outter">
			
				<div class="div_form_header">
					<span><h1>결제하기</h1></span>
				</div>
				
				<div class="div_inner">
					<div class="div_left_box">
					
					<!-- 수강클래스====================================================== -->
					<section id="leftSec01" class="section_box">
					<h2>수강클래스이름</h2>
					<div class="info_tag">
						<!-- 클래스대표사진 -->
						<div class="info img_info">
							<img src="${pageContext.request.contextPath }/resources/img/payment_test.png" width="65" id="kakao">
						</div><br>
						<!-- 클래스명 -->
<!-- 						<div class="info"> -->
<!-- 							<span class="info_title"><h3>클래스명</h3></span> -->
<%-- 							<span class="info_content">${res.res_date}</span> --%>
<%-- 							<input type="hidden" name="res_date" value="${res.res_date}"> --%>
<!-- 						</div> -->
						<div class="info">
							<span class="info_title">수강인원</span>
<%-- 							<span class="info_content">${res.res_time}</span> --%>
<%-- 							<input type="hidden" name="res_time" value="${res.res_time}"> --%>
						</div>
						<div class="info">
							<span class="info_title">방문날짜/시간</span>
<%-- 							<span class="info_content" >${res.res_person}명</span> --%>
<%-- 							<input type="hidden" name="res_person" value="${res.res_person}"> --%>
						</div>
						<div class="info">
							<span class="info_title">결제 금액</span>
<%-- 							<span class="info_content" ><b>${map.res_table_price_str}</b>원</span> --%>
<%-- 							<input type="hidden" name="res_table_price" value="${res.res_table_price}" id="resTablePrice"> --%>
						</div>
					</div><!-- 대표사진 끝나는곳-->
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
				
				<!-- 결제수단================================================= -->
				<section id="leftSec04" class="section_box">
					<h2>결제수단</h2>
					<div class="choice_pay">
<!-- 						<div> -->
<!-- 							<input type="radio" name="pay_on_sit" value="2" id="onSitePayment"><span class="font_stlye"> 메뉴만 현장결제</span> -->
<!-- 						</div>	 -->
						<div>
							<input type="radio" name="pay_method" value="1" id="kakaoPay">&nbsp;
							<img src="${pageContext.request.contextPath }/resources/img/kakaoPay_png.png" width="65" id="kakao">
							<span class="font_stlye"> </span>
						</div>
						<br>
						<div>
							<input type="radio" name="pay_method" value="2" id="creditCardPayment"><span class="font_stlye"> 카드결제</span>
						</div>
						<br>
						<div>	
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
							<span>
								<input type="checkbox" id="payAgree" name="agreement" class="agree">
								<span class="each_agree">
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
							<span>
								<input type="checkbox" id="payAgree" name="agreement" class="agree">
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
							<span>
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
						<span>
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
	<footer>
<%-- 		<jsp:include page="../inc/bottom.jsp"></jsp:include> --%>
	</footer> 
</body>
</html>