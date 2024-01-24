<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
// $("#notificationButton").on('click', function(e) {
// 	  var offset = $(this).offset();
// 	  $("#notificationDropdown").css({
// 	    top: offset.top + $(this).outerHeight(),
// 	    left: offset.left
// 	  }).toggle();
// });

// $(document).ready(function(){
//     $('.dropdown > button').click(function(e) {
//         e.stopPropagation();
//         $(this).next('.dropdown-content').toggleClass('show');
//     });
//     $(window).click(function() {
//         $('.dropdown-content.show').removeClass('show');
//     });
// });
function toggleDropdownMenu(event) {
    event.stopPropagation(); // 이벤트 버블링 방지
    var dropdownContent = document.getElementById('dropdown-content');
    if (dropdownContent.style.display === 'none' || dropdownContent.style.display === '') {
        dropdownContent.style.display = 'block';
    } else {
        dropdownContent.style.display = 'none';
    }
}

// 페이지를 클릭했을 때 드롭다운 메뉴 숨기기
// window.onclick = function(event) {
//     if (!event.target.matches('.navbar-btn')) {
//         var dropdownContent = document.getElementById('dropdown-content');
//         if (dropdownContent.style.display === 'block') {
//             dropdownContent.style.display = 'none';
//         }
//     }
// }

function notify_button(value) {
	alert(value + "눌렀따!");
	
	if(value == 1) {
		console.log("value = " + value);
	}
	if(value == 2) {
		console.log("value = " + value);
	}
	if(value == 3) {
		console.log("value = " + value);
	}
}
</script>


<style>
.dropdown {
	position: relative !important;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	min-width: 300px;
	z-index: 1000000;
	background-color: #fff;
	right: 150px;
	margin-top: -5px;
	border-radius: 5px;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 10px;
 	inset: 40px -50px auto auto;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown:hover .dropdown-content {
	display: block;
}


.notify_button {
	background-color: rgba(0,0,0,0);
	margin-top: 15px;
	color: #000;
    font-weight: 400;
}
.notify_p {
    margin-top: 10px;
    width: 300px;
    font-size: 12px;
    line-height: 1.5;
    color: #000;
    padding: 10px;
    border-radius: 5px;
    background-color: #e6e6e6;
}
</style>


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
                <button class="navbar-btn nav-button_not" onclick=" window.open('${pageContext.request.contextPath}/mypage/main')" data-wow-delay="0.45s">admin님</button>


		<div class="dropdown">
			<button class="navbar-btn nav-button wow bounceInRight login" onclick="toggleDropdownMenu(event)">
				알림<span class="badge2">3</span>
			</button>
			
			<div class="dropdown-content">
				  
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-4" style="text-align:center;">
							<button onclick="notify_button(this.value)" value="1" class="notify_button">알림</button>
						</div>
						<div class="col-sm-4" style="text-align:center;">
							<button onclick="notify_button(this.value)" value="2" class="notify_button">공지사항</button>
						</div>
						<div class="col-sm-4" style="text-align:center;">
							<button onclick="notify_button(this.value)" value="3" class="notify_button">이벤트</button>
						</div>
					</div>
					
					<div class="notify_content">
						<div class="row">
							<div class="col-sm-12">
								<div class="notify_p" style="margin-top: 15px;">
									<b>01-19 18:00</b><br>
									[미드센츄리모든학개론] 수업은 어떠셨나요? 수강후기를 남기시면 500포인트가 적립됩니다.
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="notify_p">
									<b>01- 17 11:00</b><br>
									프로 얼죽아를 위한 유투버 XXX님의 [홈카페 인테리어의 AtoZ] 지금 신청하세요!
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="notify_p" style="margin-bottom: 15px;">
									<b>01- 17 11:00</b><br>
									프로 얼죽아를 위한 유투버 XXX님의 [홈카페 인테리어의 AtoZ] 지금 신청하세요!
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
                
                
                
                
                
                
                
                
                <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('cart')" data-wow-delay="0.48s">장바구니</button>
                <%-- 장바구니에 담은 상품이 있을 경우 --%>
<!--                 <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('submit-property')" data-wow-delay="0.48s">장바구니(5)</button> -->
            </div>
            
            <ul class="main-nav nav navbar-nav navbar-right">
            	
            	<li class="wow fadeInDown" data-wow-delay="0.2s" id="not_li">
            		<%-- 검색창 --%>
<!-- 		            <form role="search" class="css-4f6urn e1vfdeb40"> -->
		            <form action="class/list" class="css-4f6urn e1vfdeb40">
						<div class="css-cdrjiy eeek7io3">
							<div class="e1vj7tvj0 css-yypaje eeek7io1">
								<input data-testid="search-input" placeholder="키워드를 입력하세요" type="text" maxlength="50" autocomplete="off" autocorrect="off" autocapitalize="off" class="css-xv0cfn eeek7io2" value="">
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
            	
                <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                    <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">전체메뉴<b class="caret"></b></a>
                    <ul class="dropdown-menu navbar-nav">
                        <li>
                            <a href="index-2">건축 설계</a>
                        </li>
                        <li>
                            <a href="index-3">실내 디자인</a>
                        </li>
                        <li>
                            <a href="index-4">건축 노하우</a>
                        </li>
                        <li>
                            <a href="index-5">타일</a>
                        </li>
                        <li>
                            <a href="index-5">도배/페인트</a>
                        </li>
                        <li>
                            <a href="index-5">인테리어 소품</a>
                        </li>
                        <li>
                            <a href="index-5">전기</a>
                        </li>
                    </ul>
                </li>

                <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="${pageContext.request.contextPath}/community/together">커뮤니티</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="${pageContext.request.contextPath}/event">이벤트</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="${pageContext.request.contextPath}/cs/notice">고객센터</a></li>
            </ul>
        </div>
    </div>
</nav>
	