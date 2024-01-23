<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<style>
#footer-bottom {
	background: #fff;
	padding: 50px 50px 50px 0px;
	margin-top: 30px;
    padding-bottom: 30px;
}
#footer-bottom p {
	text-align: left;
	padding-top: 1.3;
	color: #454545;
/* 	font-size: 12px; */

	line-height: 2.0;
	letter-spacing: 0.2px;
}
#footer-bottom p a {
	color: #494C53;
	font-size: 15px;
}
.container_bottom {
    padding-right: 15px;
/*  padding-left: 15px; */
    margin-right: auto;
    margin-left: auto;
}
.p_col-md-12, .p_col-sm-12 {
	position: relative;
	min-height: 1px;
	padding-right: 30px;
	padding-left: 30px;
}

#block_line {
	display: flex;
	
}

.block > p {
	padding-bottom: 3px;
}

#bottom_left {
	margin-left: 30px;
}

#footer-bottom .bottom_info {
	font-size: 14px;
	font-weight: 600;
}

@media (min-width: 992px) {
	.container_bottom {
	 /* width: 970px; */
		width: 80%;
	}
}
@media only screen and (min-width: 768px) and (max-width: 991px) {
	#footer-bottom .block p {
    	text-align: center;
	}
	
}
</style>

<footer id="footer-bottom">
	<div class="container_bottom">
		<div class="row">
			<div class="p_col-md-12 p_col-sm-12" id="block_line">
				<div class="block">
					<p><a href="#">(주)공생</a></p>
					<p class="bottom_info">대표 이형석</p>
					<p class="bottom_info">부산광역시 부산진구 동천로 109 삼한골든게이트빌딩 7층</p>
					<p class="bottom_info">사업자 등록번호  107-87-77777</p>
					<p class="bottom_info">통신판매업신고   2024-부산부산진-7777호</p>
					<br>
					<p class="bottom_info">서비스 이용약관 | 개인정보 처리방침 | 위치정보 이용약관 | 인재 채용 | 광고/제휴문의<c:if test="${sessionScope.sCategory eq 3}"> | <a href="${pageContext.request.contextPath}/admin/main">관리자페이지</a></c:if></p>
					<p style="font-size: 12px;">공생은 통신판매중개자로서 중개하는 거래에 대하여 책임을 부담하지 않습니다.</p>
					<p style="font-size: 12px;">© 공생 Corp.</p>
				</div>
				<div class="block" id="bottom_left">
					<p><a>고객센터</a> <span style="font-size: 12px;">(평일 오전 9시 ~ 오후 6시)</span></p> 
					<p class="bottom_info">대표번호  051-803-0808 / 1544-0808</p>
					<p class="bottom_info">이메일 class@itwillbs.co.kr</p>
					<button class="navbar-btn nav-button wow bounceInRight login">문의하기</button>
				</div>
			</div>
		</div>
	</div>
</footer>
