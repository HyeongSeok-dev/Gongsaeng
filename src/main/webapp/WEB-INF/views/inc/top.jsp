<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'> -->
<!-- <link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet"> -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
<%-- <link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet"> --%>
<%-- <link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet"> --%>
<link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css"> 
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">

<script>
//1:1 문의창
function openCenteredWindow(url, name, width, height) {
    var left = (screen.width - width) / 2;
    var top = (screen.height - height) / 2;

    window.open(url, name, 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
}

// 상단바 검색창 이벤트
function search_keyword(event) {
    let keyword = $("#search_input").val();

    if(keyword.trim() === "") {
        alert("키워드를 입력하세요.");
        event.preventDefault(); // 폼 제출X
    }
}
</script>

<nav class="navbar navbar-default ">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="main_logo_div">
				<a id="navbar-brand" href="${pageContext.request.contextPath}"><img class="main_logo1" src="${pageContext.request.contextPath}/resources/assets/img/logo2 (2).png" alt=""></a>
				<a id="navbar-brand" href="${pageContext.request.contextPath}"><img class="main_logo2" src="${pageContext.request.contextPath}/resources/assets/img/logo3.png" alt=""></a>
            </div>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse yamm" id="navigation">
        
            <div class="button navbar-right">
        	<c:choose>
        		<%-- 세션 아이디가 없을 경우 --%>
        		<c:when test="${empty sessionScope.sId}">
	            	<a href="${pageContext.request.contextPath}/member/login">
	                	<button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.45s">로그인</button>
					</a>
					<a href="${pageContext.request.contextPath}/member/joinAgree">
	                	<button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.48s">회원가입</button>
	            	</a>        		
        		</c:when>
        		
        		<%-- 일반 회원(관리자X)일 경우 --%>
        		<c:when test="${sessionScope.sCategory eq 1 and sessionScope.sId ne 'admin1234'}">
	            	<a href="${pageContext.request.contextPath}/mypage/main">
						<button class="navbar-btn nav-button_not" data-wow-delay="0.45s"><b>${sessionScope.sNick}</b>님</button>
					</a>

					<%-- 알림 --%>
					<div class="notify_dropdown">
						<button class="navbar-btn nav-button wow bounceInRight login" onclick="toggleDropdownMenu(event)" style="position: relative; z-index: 2;">
							알림
<!-- 							<span class="badge1">3</span> -->
						</button>
						
						<div class="notify_dropdown-content">
							  
							<div class="container-fluid">
								<div class="row notify_category">
									<div class="col-sm-3" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="1" class="notify_button first">알림</button>
									</div>
									<div class="col-sm-4" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="2" class="notify_button">공지사항</button>
									</div>
									<div class="col-sm-3" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="3" class="notify_button">이벤트</button>
									</div>
									<div class="col-sm-2" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="4" class="notify_setting">
											<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="25" height="25" viewBox="0 0 64 64">
												<path d="M 29.054688 10 C 27.715688 10 26.571703 10.964203 26.345703 12.283203 L 25.763672 15.664062 C 25.457672 15.781062 25.152469 15.902156 24.855469 16.035156 L 22.058594 14.058594 C 20.830594 13.209594 19.383344 13.520328 18.527344 14.361328 L 14.361328 18.525391 C 13.414328 19.472391 13.288547 20.962641 14.060547 22.056641 L 16.035156 24.855469 C 15.901156 25.152469 15.781063 25.455719 15.664062 25.761719 L 12.283203 26.34375 C 10.963203 26.57075 10 27.715688 10 29.054688 L 10 34.945312 C 10 36.284312 10.964203 37.428297 12.283203 37.654297 L 15.664062 38.236328 C 15.781062 38.542328 15.902156 38.847531 16.035156 39.144531 L 14.058594 41.941406 C 13.286594 43.034406 13.414328 44.525656 14.361328 45.472656 L 18.525391 49.638672 C 19.609391 50.698672 21.124641 50.614453 22.056641 49.939453 L 24.855469 47.964844 C 25.152469 48.098844 25.455719 48.218938 25.761719 48.335938 L 26.34375 51.716797 C 26.57075 53.036797 27.715688 54 29.054688 54 L 34.945312 54 C 36.284312 54 37.428297 53.035797 37.654297 51.716797 L 38.236328 48.335938 C 38.542328 48.218937 38.847531 48.097844 39.144531 47.964844 L 41.941406 49.941406 C 42.766406 50.549406 44.343656 50.768672 45.472656 49.638672 L 49.638672 45.474609 C 50.585672 44.527609 50.711453 43.037359 49.939453 41.943359 L 47.964844 39.144531 C 48.098844 38.847531 48.218938 38.544281 48.335938 38.238281 L 51.716797 37.65625 C 53.036797 37.42925 54 36.284312 54 34.945312 L 54 29.054688 C 54 27.715688 53.035797 26.571703 51.716797 26.345703 L 48.335938 25.763672 C 48.218937 25.457672 48.097844 25.152469 47.964844 24.855469 L 49.941406 22.058594 C 50.713406 20.965594 50.585672 19.474344 49.638672 18.527344 L 45.474609 14.361328 C 44.417609 13.329328 42.952359 13.351547 41.943359 14.060547 L 39.144531 16.035156 C 38.847531 15.901156 38.544281 15.781063 38.238281 15.664062 L 37.65625 12.283203 C 37.42925 10.963203 36.284312 10 34.945312 10 L 29.054688 10 z M 30.214844 14 L 33.787109 14 C 33.848109 14 33.900156 14.043516 33.910156 14.103516 L 34.681641 18.589844 C 36.449641 19.224844 38.104844 19.894141 39.589844 20.619141 L 43.302734 17.996094 C 43.352734 17.961094 43.421844 17.966766 43.464844 18.009766 L 45.990234 20.537109 C 46.033234 20.580109 46.040859 20.647266 46.005859 20.697266 L 43.380859 24.412109 C 44.139859 26.017109 44.824156 27.649359 45.410156 29.318359 L 49.896484 30.091797 C 49.956484 30.101797 50 30.153844 50 30.214844 L 50 33.787109 C 50 33.848109 49.955531 33.900156 49.894531 33.910156 L 45.410156 34.681641 C 44.825156 36.350641 44.148859 37.985844 43.380859 39.589844 L 46.005859 43.304688 C 46.040859 43.354688 46.033234 43.421844 45.990234 43.464844 L 43.464844 45.992188 C 43.421844 46.035187 43.352734 46.040859 43.302734 46.005859 L 39.589844 43.382812 C 37.949844 44.153812 36.313641 44.829109 34.681641 45.412109 L 33.908203 49.896484 C 33.898203 49.956484 33.846156 50 33.785156 50 L 30.212891 50 C 30.151891 50 30.099844 49.955531 30.089844 49.894531 L 29.318359 45.410156 C 27.709359 44.851156 26.075156 44.184859 24.410156 43.380859 L 20.695312 46.005859 C 20.645312 46.040859 20.578156 46.033234 20.535156 45.990234 L 18.007812 43.464844 C 17.964813 43.421844 17.959141 43.352734 17.994141 43.302734 L 20.617188 39.589844 C 19.838187 37.924844 19.161891 36.288641 18.587891 34.681641 L 14.103516 33.908203 C 14.043516 33.898203 14 33.846156 14 33.785156 L 14 30.212891 C 14 30.151891 14.043516 30.100844 14.103516 30.089844 L 18.589844 29.316406 C 19.170844 27.680406 19.837141 26.045156 20.619141 24.410156 L 17.994141 20.695312 C 17.959141 20.645312 17.966766 20.578156 18.009766 20.535156 L 20.535156 18.007812 C 20.578156 17.964813 20.647266 17.959141 20.697266 17.994141 L 24.410156 20.617188 C 25.958156 19.874187 27.599359 19.201891 29.318359 18.587891 L 30.091797 14.103516 C 30.101797 14.043516 30.153844 14 30.214844 14 z M 32 23 C 27.029 23 23 27.029 23 32 C 23 36.971 27.029 41 32 41 C 36.971 41 41 36.971 41 32 C 41 27.029 36.971 23 32 23 z M 32 27 C 34.761 27 37 29.239 37 32 C 37 34.761 34.761 37 32 37 C 29.239 37 27 34.761 27 32 C 27 29.239 29.239 27 32 27 z"></path>
											</svg>
										</button>
									</div>
								</div>
								
								<div class="notify_content">
									<div class="row">
										<div class="col-sm-12">
										
											<%-- 알림 - 알림 --%>
											<div class="notify_p notify_button_1">
												<b>01-19 18:00</b><br>
												알림[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											
											<%-- 알림 - 공지사항 --%>
											<div class="notify_p notify_button_2" style="display: none;">
												<b>01-19 18:00</b><br>
												공지사항1[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p notify_button_2" style="display: none;">
												<b>01-19 18:00</b><br>
												공지사항2[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p notify_button_2" style="display: none;">
												<b>01-19 18:00</b><br>
												공지사항3[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p notify_button_2" style="display: none;">
												<b>01-19 18:00</b><br>
												공지사항4[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p notify_button_2" style="display: none;">
												<b>01-19 18:00</b><br>
												공지사항5[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											
											<%-- 알림 - 이벤트 --%>
											<div class="notify_p notify_button_3" style="display: none;">
												<b>01-19 18:00</b><br>
												이벤트1[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p notify_button_3" style="display: none;">
												<b>01-19 18:00</b><br>
												이벤트2[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											
											<%-- 알림 - 설정 --%>
											<div class="notify_p notify_button_4" style="display: none; background-color: #fff">

												<fieldset>
													<div class="switch_area">
														<label class="swich_label">
															<input role="switch" type="checkbox" class="switch_checkbox"/><span>알람</span>
														</label>
														<label class="swich_label">
															<input role="switch" type="checkbox" class="switch_checkbox"/><span>공지사항</span>
														</label>
														<label class="swich_label">
															<input role="switch" type="checkbox" class="switch_checkbox"/><span>이벤트</span>
														</label>
														
														<hr>
														
														<label class="swich_label">
															<input role="switch" type="checkbox" class="switch_checkbox"/><span>이메일 알림</span>
														</label>
														<label class="swich_label">
															<input role="switch" type="checkbox" class="switch_checkbox"/><span>문자 알림</span>
														</label>
<!-- 														<label class="swich_label"> -->
<!-- 															<input role="switch" type="checkbox" class="switch_checkbox" disabled/><span>알람 (비활성화)</span> -->
<!-- 														</label> -->
													</div>
												</fieldset>
												
											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<%-- 장바구니--%>
	                <%-- 장바구니에 담은 상품이 있을 경우 --%>
					<a href="${pageContext.request.contextPath}/cart">
		                <button id="cartList" class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.48s">
		                	장바구니
		                	<c:set var="cartCount" value="${fn:length(cartList)}"></c:set>
	                		<%-- 장바구니 갯수가 0보다 크고 10보다 작을 경우 --%>
	                		<c:if test="${cartCount gt 0 and cartCount lt 10}">
	                			<span class="badge1">${cartCount}</span>
	                		</c:if>
	                		<%-- 장바구니 갯수가 10과 같거나 클 경우 --%>
	                		<c:if test="${cartCount ge 10}">
	                			<span class="badge2">${cartCount}</span>
	                		</c:if>
		                </button>
	                </a>
					<a href="${pageContext.request.contextPath}/member/logout">
						<button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.48s">로그아웃</button>
					</a>
        		</c:when>
        		
        		<%-- 업주 회원일 경우 --%>
        		<c:when test="${sessionScope.sCategory eq 2}">
	            	<a href="${pageContext.request.contextPath}/company/main">
						<button class="navbar-btn nav-button_not" data-wow-delay="0.45s"><b>${sessionScope.sName}</b>님</button>
					</a>
		            
					<%-- 알림 area --%>
					<div class="notify_dropdown">
						<button class="navbar-btn nav-button wow bounceInRight login" onclick="toggleDropdownMenu(event)">
							알림
<!-- 							<span class="badge2"></span> -->
						</button>
						
						<div class="notify_dropdown-content">
							  
							<div class="container-fluid">
								<div class="row">
									<div class="col-sm-3" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="notify_button_1" class="notify_button">알림</button>
									</div>
									<div class="col-sm-4" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="notify_button_2" class="notify_button">공지사항</button>
									</div>
									<div class="col-sm-3" style="text-align:center;">
										<button onclick="notify_button(this.value)" value="notify_button_3" class="notify_button">이벤트</button>
									</div>
									<div class="col-sm-2" style="text-align:center;">
										<button onclick="notify_setting()" class="notify_setting">
											<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="25" height="25" viewBox="0 0 64 64">
												<path d="M 29.054688 10 C 27.715688 10 26.571703 10.964203 26.345703 12.283203 L 25.763672 15.664062 C 25.457672 15.781062 25.152469 15.902156 24.855469 16.035156 L 22.058594 14.058594 C 20.830594 13.209594 19.383344 13.520328 18.527344 14.361328 L 14.361328 18.525391 C 13.414328 19.472391 13.288547 20.962641 14.060547 22.056641 L 16.035156 24.855469 C 15.901156 25.152469 15.781063 25.455719 15.664062 25.761719 L 12.283203 26.34375 C 10.963203 26.57075 10 27.715688 10 29.054688 L 10 34.945312 C 10 36.284312 10.964203 37.428297 12.283203 37.654297 L 15.664062 38.236328 C 15.781062 38.542328 15.902156 38.847531 16.035156 39.144531 L 14.058594 41.941406 C 13.286594 43.034406 13.414328 44.525656 14.361328 45.472656 L 18.525391 49.638672 C 19.609391 50.698672 21.124641 50.614453 22.056641 49.939453 L 24.855469 47.964844 C 25.152469 48.098844 25.455719 48.218938 25.761719 48.335938 L 26.34375 51.716797 C 26.57075 53.036797 27.715688 54 29.054688 54 L 34.945312 54 C 36.284312 54 37.428297 53.035797 37.654297 51.716797 L 38.236328 48.335938 C 38.542328 48.218937 38.847531 48.097844 39.144531 47.964844 L 41.941406 49.941406 C 42.766406 50.549406 44.343656 50.768672 45.472656 49.638672 L 49.638672 45.474609 C 50.585672 44.527609 50.711453 43.037359 49.939453 41.943359 L 47.964844 39.144531 C 48.098844 38.847531 48.218938 38.544281 48.335938 38.238281 L 51.716797 37.65625 C 53.036797 37.42925 54 36.284312 54 34.945312 L 54 29.054688 C 54 27.715688 53.035797 26.571703 51.716797 26.345703 L 48.335938 25.763672 C 48.218937 25.457672 48.097844 25.152469 47.964844 24.855469 L 49.941406 22.058594 C 50.713406 20.965594 50.585672 19.474344 49.638672 18.527344 L 45.474609 14.361328 C 44.417609 13.329328 42.952359 13.351547 41.943359 14.060547 L 39.144531 16.035156 C 38.847531 15.901156 38.544281 15.781063 38.238281 15.664062 L 37.65625 12.283203 C 37.42925 10.963203 36.284312 10 34.945312 10 L 29.054688 10 z M 30.214844 14 L 33.787109 14 C 33.848109 14 33.900156 14.043516 33.910156 14.103516 L 34.681641 18.589844 C 36.449641 19.224844 38.104844 19.894141 39.589844 20.619141 L 43.302734 17.996094 C 43.352734 17.961094 43.421844 17.966766 43.464844 18.009766 L 45.990234 20.537109 C 46.033234 20.580109 46.040859 20.647266 46.005859 20.697266 L 43.380859 24.412109 C 44.139859 26.017109 44.824156 27.649359 45.410156 29.318359 L 49.896484 30.091797 C 49.956484 30.101797 50 30.153844 50 30.214844 L 50 33.787109 C 50 33.848109 49.955531 33.900156 49.894531 33.910156 L 45.410156 34.681641 C 44.825156 36.350641 44.148859 37.985844 43.380859 39.589844 L 46.005859 43.304688 C 46.040859 43.354688 46.033234 43.421844 45.990234 43.464844 L 43.464844 45.992188 C 43.421844 46.035187 43.352734 46.040859 43.302734 46.005859 L 39.589844 43.382812 C 37.949844 44.153812 36.313641 44.829109 34.681641 45.412109 L 33.908203 49.896484 C 33.898203 49.956484 33.846156 50 33.785156 50 L 30.212891 50 C 30.151891 50 30.099844 49.955531 30.089844 49.894531 L 29.318359 45.410156 C 27.709359 44.851156 26.075156 44.184859 24.410156 43.380859 L 20.695312 46.005859 C 20.645312 46.040859 20.578156 46.033234 20.535156 45.990234 L 18.007812 43.464844 C 17.964813 43.421844 17.959141 43.352734 17.994141 43.302734 L 20.617188 39.589844 C 19.838187 37.924844 19.161891 36.288641 18.587891 34.681641 L 14.103516 33.908203 C 14.043516 33.898203 14 33.846156 14 33.785156 L 14 30.212891 C 14 30.151891 14.043516 30.100844 14.103516 30.089844 L 18.589844 29.316406 C 19.170844 27.680406 19.837141 26.045156 20.619141 24.410156 L 17.994141 20.695312 C 17.959141 20.645312 17.966766 20.578156 18.009766 20.535156 L 20.535156 18.007812 C 20.578156 17.964813 20.647266 17.959141 20.697266 17.994141 L 24.410156 20.617188 C 25.958156 19.874187 27.599359 19.201891 29.318359 18.587891 L 30.091797 14.103516 C 30.101797 14.043516 30.153844 14 30.214844 14 z M 32 23 C 27.029 23 23 27.029 23 32 C 23 36.971 27.029 41 32 41 C 36.971 41 41 36.971 41 32 C 41 27.029 36.971 23 32 23 z M 32 27 C 34.761 27 37 29.239 37 32 C 37 34.761 34.761 37 32 37 C 29.239 37 27 34.761 27 32 C 27 29.239 29.239 27 32 27 z"></path>
											</svg>
										</button>
									</div>
								</div>
								
								<div class="notify_content">
									<div class="row">
										<div class="col-sm-12">
<!-- 											<div class="notify_p" style="margin-top: 15px;"> -->
											<div class="notify_p" >
												<b>01-19 18:00</b><br>
												[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p">
												<b>01-19 18:00</b><br>
												[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
											<div class="notify_p">
												<b>01-19 18:00</b><br>
												[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<a href="${pageContext.request.contextPath}/member/logout">
						<button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.48s">로그아웃</button>
					</a>
        		</c:when>
        		
        		<%-- 관리자 회원일 경우 --%>
        		<c:when test="${sessionScope.sId eq 'admin1234'}">
	            	<a href="${pageContext.request.contextPath}/admin/">
						<button class="navbar-btn nav-button_not" data-wow-delay="0.45s"><b>관리자</b>님</button>
					</a>
					<a href="${pageContext.request.contextPath}/member/logout">
						<button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.48s">로그아웃</button>
					</a>
        		</c:when>
        	</c:choose>
        	
            	
            </div>
            
            <ul class="main-nav nav navbar-nav navbar-right">
            	
            	<li class="wow fadeInDown" data-wow-delay="0.2s" id="not_li">
            		<%-- 검색창 --%>
		            <form action="${pageContext.request.contextPath}/class/list" method="GET" class="css-4f6urn e1vfdeb40" onsubmit="search_keyword(event)">
						<div class="css-cdrjiy eeek7io3">
							<div class="e1vj7tvj0 css-yypaje eeek7io1">
								<input id="search_input" name="className" placeholder="키워드를 입력하세요" type="text" maxlength="50" autocomplete="off" autocorrect="off" autocapitalize="off" class="css-xv0cfn eeek7io2 top_search" value="${searchData.className}">
								<div class="suffix-wrapper css-kknodv">
									<span role="img" rotate="0" class="css-aah4od e1yku2jn1"><svg aria-hidden="true" fill="currentColor" focusable="false" height="24" preserveaspectratio="xMidYMid meet" viewbox="0 0 24 24" width="24" class="css-7kp13n e1yku2jn0"><path clip-rule="evenodd" d="M14.9401 16.2929C13.5799 17.3622 11.8644 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C18 11.833 17.3835 13.522 16.3466 14.871L20.7071 19.2315C21.0976 19.622 21.0976 20.2552 20.7071 20.6457C20.3166 21.0362 19.6834 21.0362 19.2929 20.6457L14.9401 16.2929ZM16 10C16 13.3137 13.3137 16 10 16C6.68629 16 4 13.3137 4 10C4 6.68629 6.68629 4 10 4C13.3137 4 16 6.68629 16 10Z" fill-rule="evenodd" xmlns="http://www.w3.org/2000/svg"></path></svg></span>
								</div>
							</div>
						</div>
					</form>
            	</li>
            </ul>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse yamm" id="navigation">
            
            <ul class="main-nav nav navbar-nav navbar-right" id="bottom-nav">
            	
                <li class="dropdown ymm-sw" data-wow-delay="0.1s">
                    <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">전체메뉴<b class="caret"></b></a>
                    <ul id="dropdown-submenu_event" class="dropdown-menu navbar-nav">
                    
			            <div class="submenu-container">
					        <li>
				                <ul style="margin-top: 13px;">
				                    <a href="javascript:void(0);" class="dropdown-menu-toggle mainMenu" data-value="1">바닥 시공</a>
				                    <div class="dropdown-submenu subMenu">
					                    <div style="border-left: 1px solid #ddd; margin-left: 15px; padding-left: 20px;">
					                        <a href="javascript:void(0);"><li data-value="1">바닥재 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="2">장판 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="3">타일 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="4">마루 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="5">카페트 시공</li></a>
					                    </div>
				                    </div>
				                </ul>
					        </li>
			            </div>
			            
			            <div class="submenu-container">
					        <li>
				                <ul>
				                    <a href="javascript:void(0);" class="dropdown-menu-toggle mainMenu" data-value="2">벽/천장 시공</a>
				                    <div class="dropdown-submenu subMenu">
					                    <div style="border-left: 1px solid #ddd; margin-left: 15px; padding-left: 20px;">
					                        <a href="javascript:void(0);"><li data-value="1">도배 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="2">칸막이 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="3">페인트 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="4">방음 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="5">단열 필름 시공</li></a>
					                    </div>
				                    </div>
				                </ul>
					        </li>
	                    </div>
					       
			            <div class="submenu-container">
					        <li>
				                <ul>
				                    <a href="javascript:void(0);" class="dropdown-menu-toggle mainMenu" data-value="3">부분 인테리어</a>
				                    <div class="dropdown-submenu subMenu">
					                    <div style="border-left: 1px solid #ddd; margin-left: 15px; padding-left: 20px;">
					                        <a href="javascript:void(0);"><li data-value="1">샷시 설치 및 수리</li></a>
					                        <a href="javascript:void(0);"><li data-value="2">화장실 리모델링</li></a>
					                        <a href="javascript:void(0);"><li data-value="3">주방 리모델링</li></a>
					                        <a href="javascript:void(0);"><li data-value="4">가구 리폼</li></a>
					                        <a href="javascript:void(0);"><li data-value="5">붙박이장 시공</li></a>
					                    </div>
				                    </div>
				                </ul>
					        </li>
			            </div>
			            
			            <div class="submenu-container">
					        <li>
				                <ul>
				                    <a href="javascript:void(0);" class="dropdown-menu-toggle mainMenu" data-value="4">야외 시공</a>
				                    <div class="dropdown-submenu subMenu">
					                    <div style="border-left: 1px solid #ddd; margin-left: 15px; padding-left: 20px;">
					                        <a href="javascript:void(0);"><li data-value="1">조경 공사</li></a>
					                       	<a href="javascript:void(0);"><li data-value="2">옥상 공사</li></a>
					                        <a href="javascript:void(0);"><li data-value="3">지붕 공사</li></a>
					                        <a href="javascript:void(0);"><li data-value="4">태양광 발전</li></a>
					                        <a href="javascript:void(0);"><li data-value="5">외벽 리모델링</li></a>
					                    </div>
				                    </div>
				                </ul>
					        </li>
			            </div>
			            
			            
			            <div class="submenu-container">
					        <li>
				                <ul>
				                    <a href="javascript:void(0);" class="dropdown-menu-toggle mainMenu" data-value="5">종합 인테리어</a>
				                    <div class="dropdown-submenu subMenu">
					                    <div style="border-left: 1px solid #ddd; margin-left: 15px; padding-left: 20px;">
					                        <a href="javascript:void(0);"><li data-value="1">집 인테리어</li></a>
					                        <a href="javascript:void(0);"><li data-value="2">상업공간 인테리어</li></a>
					                        <a href="javascript:void(0);"><li data-value="3">주택 리모델링</li></a>
					                        <a href="javascript:void(0);"><li data-value="4">집 수리</li></a>
					                        <a href="javascript:void(0);"><li data-value="5">인테리어 소품</li></a>
					                    </div>
				                    </div>
				                </ul>
					        </li>
			            </div>

			            <div class="submenu-container">
					        <li>
				                <ul>
				                    <a href="javascript:void(0);" class="dropdown-menu-toggle mainMenu" data-value="6">기타 시공</a>
				                    <div class="dropdown-submenu subMenu">
					                    <div style="border-left: 1px solid #ddd; margin-left: 15px; padding-left: 20px;">
					                        <a href="javascript:void(0);"><li data-value="1">줄눈 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="2">단열 시공</li></a>
					                        <a href="javascript:void(0);"><li data-value="3">미장 시공</li></a>
					                    </div>
				                    </div>
				                </ul>
					        </li>
			            </div>
			            
                    </ul>
                </li>

            	<li class="dropdown ymm-sw " data-wow-delay="0.2s">
                    <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">커뮤니티<b class="caret"></b></a>
                    <ul class="dropdown-menu navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/community/together">함께해요</a></li>
                        <li><a href="${pageContext.request.contextPath}/community/question">궁금해요</a></li>
                        <li><a href="${pageContext.request.contextPath}/community/myHome">집들이</a></li>
                    </ul>
                </li>

<%--                 <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="${pageContext.request.contextPath}/event">이벤트</a></li> --%>

                <li class="dropdown ymm-sw " data-wow-delay="0.3s">
                    <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">고객센터<b class="caret"></b></a>
                    <ul class="dropdown-menu navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/cs/notice">공지사항</a></li>
<%--                         <li><a href="${pageContext.request.contextPath}/cs/faq">자주 묻는 질문</a></li> --%>
                        <li><a href="javascript:void(0);" onclick="openCenteredWindow('${pageContext.request.contextPath}/cs/qna', 'newwindow', 570, 680); return false;">1:1 문의</a></li>
              			<li><a href="javascript:void(0);" onclick="openCenteredWindow('${pageContext.request.contextPath}/chat/chatBot', 'newwindow', 617, 821); return false;">챗봇</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
    </div>
</nav>

<div class="navbar-spacing"></div>
	