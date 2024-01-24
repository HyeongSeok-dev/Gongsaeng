<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/admin_sidebar.css" rel="stylesheet" />
<div class="sidebar" data-color="dark">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
		<a id="navbar-brand" href="admin/main"><img class="main_logo1" src="${pageContext.request.contextPath}/resources/admin_assets/img/logoW-1.png" alt="" width="100"></a>
		<a id="navbar-brand" href="admin/main"><img class="main_logo2" src="${pageContext.request.contextPath}/resources/admin_assets/img/logoW-2.png" alt="" width="100"></a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/dashboard.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/dashboard">
              <i class="now-ui-icons business_chart-pie-36"></i>
              <p>대쉬보드</p>
            </a>
            <ul class="nav nav_ul">
            	<li>
            		<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>회원</p>
	            	</a>
            	</li>
            	<li>
					<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>사업체</p>
	            	</a>
				</li>
            	<li>
					<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>클래스</p>
	            	</a>
				</li>
            	<li>
					<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>매출</p>
	            	</a>
				</li>
            </ul>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/icons.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/icons">
              <i class="now-ui-icons users_single-02"></i>
              <p>회원</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/typography.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/typography">
              <i class="now-ui-icons text_caps-small"></i>
              <p>사업체</p>
            </a>
            <ul class="nav nav_ul">
            	<li>
            		<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>사업체 관리</p>
	            	</a>
            	</li>
            	<li>
					<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>클래스 관리</p>
	            	</a>
				</li>
            </ul>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/map.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/map">
              <i class="now-ui-icons business_money-coins"></i>
              <p>계좌</p>
            </a>
            
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/notifications.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/notifications">
              <i class="now-ui-icons business_bulb-63"></i>
              <p>이벤트</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/user.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/user">
              <i class="now-ui-icons ui-1_bell-53"></i>
              <p>신고</p>
            </a>
            <ul class="nav nav_ul">
            	<li>
	            	<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>사업체</p>
	            	</a>
            	</li>
            	<li>
	            	<a href="${pageContext.request.contextPath}/admin/user">
	            		<p>리뷰</p>
	            	</a>	
            	</li>
            </ul>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/tables.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/tables">
              <i class="now-ui-icons travel_info"></i>
              <p>고객센터</p>
            </a>
          </li>
          <%-- 위가 우리 --%>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/dashboard2.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/dashboard2">
              <i class="now-ui-icons design_app"></i>
              <p>대쉬보드2</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/icons.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/icons.jsp">
              <i class="now-ui-icons education_atom"></i>
              <p>회원</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/map.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/map">
              <i class="now-ui-icons location_map-big"></i>
              <p>계좌</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/notifications.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/notifications">
              <i class="now-ui-icons ui-1_bell-53"></i>
              <p>프로모션</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/user2.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/user2">
              <i class="now-ui-icons users_single-02"></i>
              <p>신고</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/tables.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/tables">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>고객센터</p>
            </a>
          </li>
          <li class="${pageContext.request.getRequestURI().endsWith('/admin/typography.jsp') ? 'active' : ''}">
            <a href="${pageContext.request.contextPath}/admin/typography">
              <i class="now-ui-icons text_caps-small"></i>
              <p>Typography</p>
            </a>
          </li>
        </ul>
      </div>
    </div>