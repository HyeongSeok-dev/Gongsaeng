
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
        <%--포트원 --%>
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
	
	//충전하기
	function payCharge(){
		window.open("payment/charge/main", "_blank2", "width=600, height=800");	
	}
	
	//계좌등록을 안했는데 포인트 사용하고 버튼누르면 계좌를 등록하기위한
// 	개인정보 동의 페이지(charge_agree)페이지로 이동
	function agreePage() {
	    alert('계좌를 등록해주세요.');
	    window.open('payment/charge/agree', '_blank', 'width=600, height=800 ');
	}
	
	//버튼 누르면 기본적으로 결제상세페이지에 0페이 금액표시 보유금액보다 더 높은금액 사용하기 막기
	function defaultPay() {
		var payValue = parseInt($("#pay").val().replace(/[^0-9]/g, '')); //사용할페이 적는곳
		var cashValue = parseInt("${allList.cash_value}"); // 보유중인 페이잔액

		console.log("payValue : " + payValue);
		console.log("cashValue : " + cashValue);
		
	  if (payValue < cashValue) {
	    // 사용할 페이 값이 작을 경우
	    $("#discountPay_text").text($("#pay").val()); // #discountPoint_text에 #pay 값 표시
	  } else if(payValue > cashValue){
	    // 사용할 페이 값이 클경우
	    alert("보유중인 페이가 부족합니다");
	    $("#pay").focus(); // #pay로 포커스 이동
	  }
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
					<c:choose>
					<c:when test="${map.type eq 'cart'}">
					<c:forEach var="List" items="${List}">
						<section id="leftSec01" class="section_box">
						<h2>${List.class_title}</h2>
						<table class="info_tag">
							<%-- 대표사진 --%>
						    <tr>
						        <td rowspan="5">
						            <img src="${pageContext.request.contextPath }/resources/img/payment_test.png" width="140" id="kakao">
						        </td>
						    </tr>
						    <%-- 수강인원 --%>
						    <tr>
						        <td width="130">
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수강인원</span>
						        </td>
						        <td>
						        	${List.res_member_count}명
						        </td>
						    </tr>
						    <%-- 방문날짜 --%>
						    <tr>
						        <td>
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;방문날짜</span>
						        </td>
						        <td>
						        	${List.res_visit_date}
						        </td>
						    </tr>
						    <%-- 방문시간 --%>
						    <tr>
						        <td>
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;방문시간</span>
						        </td>
						        <td>
						        	${List.res_visit_time} 
						        </td>
						    </tr>
						    <%-- 결제금액 --%>
						    <tr>
						        <td>
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;결제 금액</span>
						        </td>
						        <td>
						        	${List.class_price * List.res_member_count}원
						        </td>
						        <td>
						        	<input type="hidden" id="res_member_count" value="${List.res_member_count }">
						        	<input type="hidden" id="res_visit_time" value="${List.res_visit_time }">
						        	<input type="hidden" id="res_visit_date" value="${List.res_visit_date }">
						        	<input type="hidden" id="class_idx" value="${List.class_idx }">
						        	<input type="hidden" id="class_title" value="${List.class_title }">
						        </td>
						    </tr>
						</table>
					</section>
				</c:forEach>
					</c:when>
					
					<c:otherwise>
						<section id="leftSec01" class="section_box">
						<h2>${List.class_title}</h2>
						<table class="info_tag">
							<%-- 대표사진 --%>
						    <tr>
						        <td rowspan="5">
						            <img src="${pageContext.request.contextPath }/resources/img/payment_test.png" width="140" id="kakao">
						        </td>
						    </tr>
						    <%-- 수강인원 --%>
						    <tr>
						        <td width="130">
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수강인원</span>
						        </td>
						        <td>
						        	${List.res_member_count}명
						        </td>
						    </tr>
						    <%-- 방문날짜 --%>
						    <tr>
						        <td>
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;방문날짜</span>
						        </td>
						        <td>
						        	${List.res_visit_date}
						        </td>
						    </tr>
						    <%-- 방문시간 --%>
						    <tr>
						        <td>
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;방문시간</span>
						        </td>
						        <td>
						        	${List.res_visit_time} 
						        </td>
						    </tr>
						    <%-- 결제금액 --%>
						    <tr>
						        <td>
						            <span class="info_title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;결제 금액</span>
						        </td>
						        <td>
						        	${List.class_price * List.res_member_count}원
						        </td>
						        <td>
						        	<input type="hidden" id="res_member_count" value="${List.res_member_count }">
						        	<input type="hidden" id="res_visit_time" value="${List.res_visit_time }">
						        	<input type="hidden" id="res_visit_date" value="${List.res_visit_date }">
						        	<input type="hidden" id="class_idx" value="${List.class_idx }">
						        	<input type="hidden" id="class_title" value="${List.class_title }">
						        </td>
						    </tr>
						</table>
					</section>
					</c:otherwise>
					</c:choose>	
				<!-- 쿠폰선택========================================================== -->
				<section id="leftSec02" class="section_box">
					<h2>쿠폰선택</h2><br>
						<select>
					        <option value="">쿠폰을 선택하세요</option>
							<c:forEach var="couponList" items="${couponList}">
						        <option value="coupon" id="coupon" >${couponList.coupon_name}</option>
						    </c:forEach>
					    </select>
				</section>
					
				<!-- 포인트============================================================ -->
				
<!-- 				<section id="leftSec03" class="section_box"> -->
<!-- 					<h2>포인트</h2> -->
<!-- 						<div class="point"> -->
<!-- 							<div class="point_result"> -->
<!-- <!-- 									<span class="font_stlye">포인트</span>  --> 
<!-- 								<span class="point_available"> -->
<!-- 									&nbsp;&nbsp;사용가능금액&nbsp; -->
<!-- 									<span id="useablePoint"> -->
<%-- 											${map.paymentInfo.totalPoint} --%>
<!-- 									</span> -->
<!-- 									원 -->
<!-- 									 &nbsp; <span><a id="useAllPoint">전액사용</a></span> -->
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<input type="text" value="" placeholder="사용할 포인트를 입력해 주세요" class="point_to_use" name="pointToUse"/><span class="won">원</span> -->
<!-- 							<button id="usePoint" class="use_button"  type="button">사용하기</button> -->
<!-- 						</div> -->
<!-- 				</section> -->
				
				<!-- 0페이============================================================ -->
				<section id="leftSec03" class="section_box">
					<h2>0페이</h2>
						<div class="pay">
							<div class="pay_result">
<!-- 									<span class="font_stlye">포인트</span>  -->
								<span class="pay_available">
									&nbsp;&nbsp;보유중인페이금액&nbsp;
									<span id="useablePay">
									      ${allList.cash_value}
									</span>
									원
									 &nbsp; <span><a id="useAllPoint">전액사용</a></span>
								</span>
							</div>
							<input type="text" placeholder="사용할 0페이를 입력해 주세요" class="pay_to_use" name="payToUse" id="pay" /><span class="won">원</span>
							
<!-- 							<button id="chargePay" class="use_button charge" type="button" onclick="agreePage();">사용하기</button> -->
							<!-- 엑세스토큰이 존재하지 않을때 계좌인증 함수 호출  -->
							<!-- 보유중인 페이금액이 없을때 -->
							<!-- 아무 입력하지 않았을때 -->
							<!-- 버튼 누르면 기본적으로 결제상세페이지에 0페이 금액표시 보유금액보다 더 높은금액 사용하기 막기-->
							<c:choose>
							  <c:when test="${empty allList.member_id }">
							    <button  type="button"  onclick="agreePage()">사용하기1</button>
							  </c:when>
							  <c:when test=" ${allList.cash_value eq 0}">
							    <button  type="button"  onclick="alert('페이잔액을 충전해주세요.');payCharge()">사용하기2</button>
							  </c:when>
							  <c:when test="${empty allList.cash_value}">
							    <button type="button" onclick="alert('사용할 페이를 입력해주세요.'); document.querySelector('#useablePay').focus();">사용하기3</button>
							  </c:when>
							  <c:otherwise>
								<button id="chargePay" class="use_button charge" type="button" onclick="defaultPay()">사용하기0</button>
							  </c:otherwise>
							</c:choose>
							
							
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
									<span class="detail_price"><span id="reservationPrice">${total}</span> 원</span>
									<%--paymentVO --%>
					 <%-- param--%> <input type="hidden" value="${map.res.res_table_price}" name="pay_per_price"/>
								</div>
				
								<!-- 쿠폰할인 -->
								<div>
									<span class="detail">쿠폰할인</span>
									<span class="detail_price">
										- 
										<span id="discountCoupon_text">0</span>
										원
									</span>
								</div> 
								<!-- 포인트할인 -->
<!-- 								<div> -->
<!-- 									<span class="detail">포인트할인</span> -->
<!-- 									<span class="detail_price"> -->
<!-- 										-  -->
<!-- 										<span id="discountPoint_text">0</span> -->
<!-- 										원 -->
<!-- 									</span> -->
<!-- 								</div>  -->
								<!-- 0페이사용 -->
								<div>
									<span class="detail">0페이결제</span>
									<span class="detail_price">
										- 
										<span id="discountPay_text"></span>
										원
									</span>
								</div> 
							</div>
<!-- 							<div class="point"> -->
<!-- 								<div class="points_earn"> -->
<!-- 									<span class="detail">적립예정 포인트</span> -->
<!-- 									<span class="detail_price"> -->
<!-- 										<span id="earnedPoints_text">0</span> 원 -->
<!-- 									</span> -->
<!-- 								</div> -->
<!-- 								<div> -->
<!-- 									<span class="detail"> </span> -->
<!-- 									<span class="detail_price"> -->
<!-- 										<div class="info_price"> -->
<!-- 											<span></span> -->
<!-- 											<span class="menu_name2">현재 포인트</span> -->
<!-- 											<span class="price" > -->
<%-- 												<span id="nowPoint">${map.paymentInfo.totalPoint}</span> --%>
<!-- 												원 -->
<!-- 											</span> -->
<!-- 										</div> -->
<!-- 										<div class="info_price"> -->
<!-- 											<span></span> -->
<!-- 											<span class="menu_name2">총 포인트</span> -->
<!-- 											<span class="price"> -->
<!-- 												<span id="totalPoint">0</span> -->
<!-- 												원 -->
<!-- 											</span> -->
<!-- 										</div> -->
<!-- 									</span> -->
<!-- 								</div>  -->
<!-- 							</div> -->
							<div class="total_detail">
								<span class="total_info">총 결제 금액</span>
								<span class="total_price" >
								 
									<span id="totalPayment_text">1000</span>
									원
								</span>
							</div>
						</div>
					</section>
					
				</div>
			</div>
		</div>
	</div>
	<%-- 페이사용하기 버튼을 누르면 계좌 등록여부 판별을 위해 핀테크번호 넘기기  --%>
<%--  	<input type="hidden" value="${allList.user_seq_no}" id="user_seq_no"> --%>
			<%--info페이지에 필요한 할인전 예약금액 --%>
	<%-- 		<input type="hidden" value="${map.paymentInfo.totalPrice}" name="beforeDiscountTotalPrice"/> --%>
<%-- 			<input type="hidden" value="${map.res.res_idx}" name="res_idx" id="res_idx"/> --%>
			<input type="hidden" value="${map.pay}" name="pay_num" id="pay_num"/>
			<!-- 결제자(회원)와 예약자가 다를 수 있기 때문에 결제자 정보 저장 -->
<%-- 			<input type="hidden" value="${allList.user_email}" name="user_email" id="user_email"/> --%>
<%-- 			<input type="hidden" value="${map.member.user_name}" name="user_name" id="user_name"/> --%>
<%-- 			<input type="hidden" value="${map.member.user_phone}" name="user_phone" id="user_phone"/> --%>
<!-- 			<input type="hidden" value="" name="pay_card_co" id="pay_card_co"/> -->
<!-- 			<input type="hidden" value="" name="discountPoint" id="discountPoint"/> -->
<!-- 			<input type="hidden" value="" name="earnedPoints" id="earnedPoints" /> -->
<!-- 			<input type="hidden" value="" name="totalPayment"  id="totalPayment"/> -->
<!-- 			<input type="hidden" value="" name="preOrderTotalPrice"  id="preOrderTotalPrice"/> -->
		</form>
	</main>
	
	<hr>
	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer> 
	
</body>
</html>