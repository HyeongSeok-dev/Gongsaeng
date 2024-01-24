<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/admin_sidebar.css" rel="stylesheet" />
<div class="sidebar" data-color="dark">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
    <div class="logo">
    	<a id="navbar-brand" href="admin/main"><img class="main_logo2" src="${pageContext.request.contextPath}/resources/admin_assets/img/logoW-2.png" alt="" width="100"></a>
    	<a href="${pageContext.request.contextPath}/admin/dashboard"class="simple-text logo-normal"> 관리자 페이지</a>
	</div>
	<div class="sidebar-wrapper" id="sidebar-wrapper">
	    <ul class="nav">
	        <!-- 대쉬보드 드롭다운 메뉴 -->
	        <li class="nav-item">
	            <a href="#classManagementDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons business_chart-pie-36"></i>
	                <p>대쉬보드<b class="caret"></b></p>
	            </a>
	            <div id="classManagementDropdown" class="collapse" aria-labelledby="classManagementDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
	                    <li><a href="${pageContext.request.contextPath}/admin/class/register1">회원</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/class">사업체</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/coupon">매출</a></li>
	                </ul>
	            </div>
	        </li>
	        <!-- 회원 드롭다운 메뉴-->
	        <li class="nav-item">
	            <a href="#salesDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons  users_single-02"></i>
	                <p>회원<b class="caret"></b></p>
	            </a>
<!-- 	            <div id="salesDropdown" class="collapse" aria-labelledby="salesDropdown" data-parent="#sidebar-wrapper"> -->
<!-- 	                <ul class="nav"> -->
<%-- 	                    <li><a href="${pageContext.request.contextPath}/admin/sales">일반 회원</a></li> --%>
<%-- 	                    <li><a href="${pageContext.request.contextPath}/admin/income">반장 회원</a></li> --%>
<!-- 	                </ul> -->
<!-- 	            </div> -->
	        </li>
	        <!-- 사업체 드롭다운 메뉴-->
	        <li class="nav-item">
	            <a href="#salesDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons business_briefcase-24"></i>
	                <p>사업체<b class="caret"></b></p>
	            </a>
	            <div id="salesDropdown" class="collapse" aria-labelledby="salesDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
	                    <li><a href="${pageContext.request.contextPath}/admin/sales">클래스</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/income">거래 내역</a></li>
<%-- 	                    <li><a href="${pageContext.request.contextPath}/admin/income/list"></a></li> --%>
	                </ul>
	            </div>
	        </li>
	        <!-- 계좌관리 드롭다운 메뉴 -->
	        <li class="nav-item">
	            <a href="#memberManagementDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons  business_money-coins"></i>
	                <p>계좌<b class="caret"></b></p>
	            </a>
	            <div id="memberManagementDropdown" class="collapse" aria-labelledby="memberManagementDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
	                    <li><a href="${pageContext.request.contextPath}/admin/member">회원 계좌</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/review">반장 계좌</a></li>
	                </ul>
	            </div>
	        </li>
	        <!-- 페이 드롭다운 메뉴 -->
	        <li class="nav-item">
	            <a href="#leaderSpaceDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons shopping_credit-card"></i>
	                <p>페이<b class="caret"></b></p>
	            </a>
	            <div id="leaderSpaceDropdown" class="collapse" aria-labelledby="leaderSpaceDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
<%-- 	                    <li><a href="${pageContext.request.contextPath}/admin/community"></a></li> --%>
	                    <li><a href="${pageContext.request.contextPath}/admin/notification">충전환급관리</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/inquiry">수익지출관리</a></li>
	                </ul>
	            </div>
	        </li>
	        <!-- 마케팅센터 드롭다운 메뉴 -->
	        <li class="nav-item">
	            <a href="#leaderSpaceDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons business_bulb-63"></i>
	                <p>마케팅센터<b class="caret"></b></p>
	            </a>
	            <div id="leaderSpaceDropdown" class="collapse" aria-labelledby="leaderSpaceDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
	                    <li><a href="${pageContext.request.contextPath}/admin/community">이벤트</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/notification">쿠폰</a></li>
	                </ul>
	            </div>
	        </li>
	         <!-- 신고 드롭다운 메뉴 -->
	        <li class="nav-item">
	            <a href="#leaderSpaceDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons ui-1_bell-53"></i>
	                <p>신고<b class="caret"></b></p>
	            </a>
	            <div id="leaderSpaceDropdown" class="collapse" aria-labelledby="leaderSpaceDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
	                    <li><a href="${pageContext.request.contextPath}/admin/community">클래스 신고</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/notification">리뷰 신고</a></li>
	                </ul>
	            </div>
	        </li>
	        <!-- 고객센터 드롭다운 메뉴 -->
	        <li class="nav-item">
	            <a href="#leaderSpaceDropdown" class="nav-link" data-toggle="collapse" aria-expanded="false">
	                <i class="now-ui-icons travel_info"></i>
	                <p>고객센터<b class="caret"></b></p>
	            </a>
	            <div id="leaderSpaceDropdown" class="collapse" aria-labelledby="leaderSpaceDropdown" data-parent="#sidebar-wrapper">
	                <ul class="nav">
	                    <li><a href="${pageContext.request.contextPath}/admin/community">공지사항</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/notification">FAQ</a></li>
	                    <li><a href="${pageContext.request.contextPath}/admin/notification">1:1 채팅문의</a></li>
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
    
    
    
    
    
    
    
    
<!--       <div class="logo"> -->
<%-- <%-- 		<a id="navbar-brand" href="admin/main"><img class="main_logo1" src="${pageContext.request.contextPath}/resources/admin_assets/img/logoW-1.png" alt="" width="100"></a> --%> --%>
<%-- 		<a id="navbar-brand" href="admin/main"><img class="main_logo2" src="${pageContext.request.contextPath}/resources/admin_assets/img/logoW-2.png" alt="" width="100"></a> --%>
<!--       </div> -->
<!--       <div class="sidebar-wrapper" id="sidebar-wrapper"> -->
<!--         <ul class="nav"> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/dashboard.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/dashboard"> --%>
<!--               <i class="now-ui-icons business_chart-pie-36"></i> -->
<!--               <p>대쉬보드</p> -->
<!--             </a> -->
<!--             <ul class="nav nav_ul"> -->
<!--             	<li> -->
<%--             		<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>회원</p> -->
<!-- 	            	</a> -->
<!--             	</li> -->
<!--             	<li> -->
<%-- 					<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>사업체</p> -->
<!-- 	            	</a> -->
<!-- 				</li> -->
<!--             	<li> -->
<%-- 					<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>클래스</p> -->
<!-- 	            	</a> -->
<!-- 				</li> -->
<!--             	<li> -->
<%-- 					<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>매출</p> -->
<!-- 	            	</a> -->
<!-- 				</li> -->
<!--             </ul> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/icons.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/icons"> --%>
<!--               <i class="now-ui-icons users_single-02"></i> -->
<!--               <p>회원</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/typography.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/typography"> --%>
<!--               <i class="now-ui-icons text_caps-small"></i> -->
<!--               <p>사업체</p> -->
<!--             </a> -->
<!--             <ul class="nav nav_ul"> -->
<!--             	<li> -->
<%--             		<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>사업체 관리</p> -->
<!-- 	            	</a> -->
<!--             	</li> -->
<!--             	<li> -->
<%-- 					<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>클래스 관리</p> -->
<!-- 	            	</a> -->
<!-- 				</li> -->
<!--             </ul> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/map.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/map"> --%>
<!--               <i class="now-ui-icons business_money-coins"></i> -->
<!--               <p>계좌</p> -->
<!--             </a> -->
            
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/notifications.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/notifications"> --%>
<!--               <i class="now-ui-icons business_bulb-63"></i> -->
<!--               <p>이벤트</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/user.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/user"> --%>
<!--               <i class="now-ui-icons ui-1_bell-53"></i> -->
<!--               <p>신고</p> -->
<!--             </a> -->
<!--             <ul class="nav nav_ul"> -->
<!--             	<li> -->
<%-- 	            	<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>사업체</p> -->
<!-- 	            	</a> -->
<!--             	</li> -->
<!--             	<li> -->
<%-- 	            	<a href="${pageContext.request.contextPath}/admin/user"> --%>
<!-- 	            		<p>리뷰</p> -->
<!-- 	            	</a>	 -->
<!--             	</li> -->
<!--             </ul> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/tables.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/tables"> --%>
<!--               <i class="now-ui-icons travel_info"></i> -->
<!--               <p>고객센터</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           위가 우리 --%>
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/dashboard2.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/dashboard2"> --%>
<!--               <i class="now-ui-icons design_app"></i> -->
<!--               <p>쿠폰 관리</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/icons.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/icons.jsp"> --%>
<!--               <i class="now-ui-icons education_atom"></i> -->
<!--               <p>페이 관리</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/map.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/map"> --%>
<!--               <i class="now-ui-icons location_map-big"></i> -->
<!--               <p>계좌</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/notifications.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/notifications"> --%>
<!--               <i class="now-ui-icons ui-1_bell-53"></i> -->
<!--               <p>프로모션</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/user2.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/user2"> --%>
<!--               <i class="now-ui-icons users_single-02"></i> -->
<!--               <p>신고</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/tables.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/tables"> --%>
<!--               <i class="now-ui-icons design_bullet-list-67"></i> -->
<!--               <p>고객센터</p> -->
<!--             </a> -->
<!--           </li> -->
<%--           <li class="${pageContext.request.getRequestURI().endsWith('/admin/typography.jsp') ? 'active' : ''}"> --%>
<%--             <a href="${pageContext.request.contextPath}/admin/typography"> --%>
<!--               <i class="now-ui-icons text_caps-small"></i> -->
<!--               <p>Typography</p> -->
<!--             </a> -->
<!--           </li> -->
<!--         </ul> -->
<!--       </div> -->
    </div>