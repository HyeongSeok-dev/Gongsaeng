<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style>
.nav a {
   font-size: 18px !important; /* 원하는 크기로 조정 */
        }

/* .now-ui-icons.design_app { */
/* 	color: #000000!important; */
/* } */

.now-ui-icons,.simple-text {
	color: #000000!important;
}
        
</style>
</head>
<div class="logo">
    <a href="${pageContext.request.contextPath}/company/main" class="simple-text logo-mini">
        공생 | </a> <a href="${pageContext.request.contextPath}/company/main"
        class="simple-text logo-normal"> 반장님 페이지</a>
</div>
<div class="sidebar-wrapper" id="sidebar-wrapper">
    <ul class="nav">
        <!-- 클래스 관리 드롭다운 메뉴 -->
        <li class="nav-item">
            <a href="#classManagementDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
                <i class="now-ui-icons design_app"></i>
                <p>클래스 관리<b class="caret"></b></p>
            </a>
            <div id="classManagementDropdown" class="collapse" aria-labelledby="classManagementDropdown" data-parent="#sidebar-wrapper">
                <ul class="nav">
<%--                     <li><a href="${pageContext.request.contextPath}/company/class/register7">클래스 등록</a></li> --%>
                    <li><a href="${pageContext.request.contextPath}/company/classRegisterForm">클래스 등록</a></li>
<%--                     <li><a href="${pageContext.request.contextPath}/company/class">클래스 내역</a></li> --%>
                    <li><a href="${pageContext.request.contextPath}/company/class">클래스 내역</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/reservation">클래스 일정 관리</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/coupon">반장쿠폰관리</a></li>
                </ul>
            </div>
        </li>
        <!-- 클래스 매출/정산 드롭다운 메뉴 -->
        <li class="nav-item">
            <a href="#salesDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
                <i class="now-ui-icons location_map-big"></i>
                <p>클래스 매출/정산<b class="caret"></b></p>
            </a>
            <div id="salesDropdown" class="collapse" aria-labelledby="salesDropdown" data-parent="#sidebar-wrapper">
                <ul class="nav">
                    <li><a href="${pageContext.request.contextPath}/company/sales">매출 현황</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/income">정산 신청</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/income/list">정산 내역</a></li>
                </ul>
            </div>
        </li>
        <!-- 회원관리 드롭다운 메뉴 -->
        <li class="nav-item">
            <a href="#memberManagementDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
                <i class="now-ui-icons ui-1_bell-53"></i>
                <p>회원관리<b class="caret"></b></p>
            </a>
            <div id="memberManagementDropdown" class="collapse" aria-labelledby="memberManagementDropdown" data-parent="#sidebar-wrapper">
                <ul class="nav">
                    <li><a href="${pageContext.request.contextPath}/company/member">회원 목록</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/review">리뷰 목록</a></li>
<%--                     <li><a href="${pageContext.request.contextPath}/company/chat">채팅 관리</a></li> --%>
                    <li><a href="${pageContext.request.contextPath}/company/report">신고 관리</a></li>
                </ul>
            </div>
        </li>
        <!-- 반장님 공간 드롭다운 메뉴 -->
        <li class="nav-item">
            <a href="#leaderSpaceDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
                <i class="now-ui-icons users_single-02"></i>
                <p>반장님 공간<b class="caret"></b></p>
            </a>
            <div id="leaderSpaceDropdown" class="collapse" aria-labelledby="leaderSpaceDropdown" data-parent="#sidebar-wrapper">
                <ul class="nav">
                    <li><a href="${pageContext.request.contextPath}/company/community">반장 커뮤니티</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/notification">반장 공지사항</a></li>
                    <li><a href="${pageContext.request.contextPath}/company/inquiry">반장 1:1문의</a></li>
                </ul>
            </div>
        </li>
	</ul>
</div>
<!-- Include Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
$(document).ready(function() {
  // Prevent the dropdown from toggling on click
  $('.nav .nav-item a[data-toggle="collapse"]').click(function(e) {
    e.preventDefault();
    var $target = $($(this).attr('href'));
    var expanded = $target.hasClass('in');
    if(expanded){
      $target.collapse('hide');
    } else {
      $target.collapse('show');
    }
  });

  // Close other open dropdowns when one is opened
  $('.nav .nav-item a[data-toggle="collapse"]').on('click', function() {
    $('.nav .nav-item .collapse.in').not($(this).attr('href')).collapse('hide');
  });
});
</script>