<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
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
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cs_qna.css">
        
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
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main_noicheck.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/cs.js"></script>
        <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
        <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
        
        
    </head>
    <body>
<%-- 	<jsp:include page="../inc/top.jsp"></jsp:include> --%>
<div id="frame">
	<div id="sidepanel">
<!-- 		<div id="profile"> -->
<!-- 			<div class="wrap"> -->
<!-- 				<img id="profile-img" src="http://emilcarlsson.se/assets/mikeross.png" class="online" alt="" /> -->
<!-- 				<p>Mike Ross</p> -->
<!-- 				<i class="fa fa-chevron-down expand-button" aria-hidden="true"></i> -->
<!-- 				<div id="status-options"> -->
<!-- 					<ul> -->
<!-- 						<li id="status-online" class="active"><span class="status-circle"></span> <p>Online</p></li> -->
<!-- 						<li id="status-away"><span class="status-circle"></span> <p>Away</p></li> -->
<!-- 						<li id="status-busy"><span class="status-circle"></span> <p>Busy</p></li> -->
<!-- 						<li id="status-offline"><span class="status-circle"></span> <p>Offline</p></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 				<div id="expanded"> -->
<!-- 					<label for="twitter"><i class="fa fa-facebook fa-fw" aria-hidden="true"></i></label> -->
<!-- 					<input name="twitter" type="text" value="mikeross" /> -->
<!-- 					<label for="twitter"><i class="fa fa-twitter fa-fw" aria-hidden="true"></i></label> -->
<!-- 					<input name="twitter" type="text" value="ross81" /> -->
<!-- 					<label for="twitter"><i class="fa fa-instagram fa-fw" aria-hidden="true"></i></label> -->
<!-- 					<input name="twitter" type="text" value="mike.ross" /> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div id="search"> -->
<!-- 			<label for=""><i class="fa fa-search" aria-hidden="true"></i></label> -->
<!-- 			<input type="text" placeholder="Search contacts..." /> -->
<!-- 		</div> -->
<!-- 		<div id="contacts"> -->
<!-- 			<ul> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status online"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/louislitt.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Louis Litt</p> -->
<!-- 							<p class="preview">You just got LITT up, Mike.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact active"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status busy"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Harvey Specter</p> -->
<!-- 							<p class="preview">Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status away"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/rachelzane.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Rachel Zane</p> -->
<!-- 							<p class="preview">I was thinking that we could have chicken tonight, sounds good?</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status online"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/donnapaulsen.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Donna Paulsen</p> -->
<!-- 							<p class="preview">Mike, I know everything! I'm Donna..</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status busy"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/jessicapearson.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Jessica Pearson</p> -->
<!-- 							<p class="preview">Have you finished the draft on the Hinsenburg deal?</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/haroldgunderson.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Harold Gunderson</p> -->
<!-- 							<p class="preview">Thanks Mike! :)</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/danielhardman.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Daniel Hardman</p> -->
<!-- 							<p class="preview">We'll meet again, Mike. Tell Jessica I said 'Hi'.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status busy"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/katrinabennett.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Katrina Bennett</p> -->
<!-- 							<p class="preview">I've sent you the files for the Garrett trial.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/charlesforstman.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Charles Forstman</p> -->
<!-- 							<p class="preview">Mike, this isn't over.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li class="contact"> -->
<!-- 					<div class="wrap"> -->
<!-- 						<span class="contact-status"></span> -->
<!-- 						<img src="http://emilcarlsson.se/assets/jonathansidwell.png" alt="" /> -->
<!-- 						<div class="meta"> -->
<!-- 							<p class="name">Jonathan Sidwell</p> -->
<!-- 							<p class="preview"><span>You:</span> That's bullshit. This deal is solid.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 		<div id="bottom-bar"> -->
<!-- 			<button id="addcontact"><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> <span>Add contact</span></button> -->
<!-- 			<button id="settings"><i class="fa fa-cog fa-fw" aria-hidden="true"></i> <span>Settings</span></button> -->
<!-- 		</div> -->
	</div>
	<div class="content">
		<div class="contact-profile">
			<img src="${pageContext.request.contextPath }/resources/assets/img/logo.png" alt="" />
			<p>공생(gongsaeng)</p>
<!-- 			<div class="social-media"> -->
<!-- 				<i class="fa fa-facebook" aria-hidden="true"></i> -->
<!-- 				<i class="fa fa-twitter" aria-hidden="true"></i> -->
<!-- 				 <i class="fa fa-instagram" aria-hidden="true"></i> -->
<!-- 			</div> -->
		</div>
		<div class="messages">
			<ul>
				<li class="sent">
					<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
					<p>How the hell am I supposed to get a jury to believe you when I am not even sure that I do?!</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>When you're backed against the wall, break the god damn thing down.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Excuses don't win championships.</p>
				</li>
				<li class="sent">
					<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
					<p>Oh yeah, did Michael Jordan tell you that?</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>No, I told him that.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>What are your choices when someone puts a gun to your head?</p>
				</li>
				<li class="sent">
					<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
					<p>What are you talking about? You do what they say or they shoot you.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
				</li>
				<li class="replies">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
				</li>
			</ul>
		</div>
		<div class="message-input">
			<div class="wrap">
			<input type="text" placeholder="Write your message..." />
			<i class="fa fa-paperclip attachment" aria-hidden="true"></i>
			<button class="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
			</div>
		</div>
	</div>
</div>

    </body>
</html>