<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | NOTICE page</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.css" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cs_notice.css">
       
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
        <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/cs.js"></script>
    </head>
    <body>
    <%-- 페이지네이션 - pageNum 파라미터 가져와서 저장(없을 경우 기본값 1로 설정) --%>
	<c:set var="pageNum" value="1" />
	<c:if test="${not empty param.pageNum }">
		<c:set var="pageNum" value="${param.pageNum }" />
	</c:if>
     <jsp:include page="../inc/top.jsp"></jsp:include>
    	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">공지사항</h1>               
                    </div>
                </div>
            </div>
        </div>
     	<br>
            <div class="container" id="csNotice">
<!-- 	        <span> -->
<!-- 	        	<button type="button" class="notice_point" onclick=>전체</button> -->
<!-- 	        	<button type="button" class="notice_point" onclick=>공지</button> -->
<!-- 	        	<button type="button" class="notice_point" onclick=>이벤트</button> -->
<!-- 	        </span> -->
	        <br>
	        <br>
		    <div class="panel-group" id="faqAccordion">
		       <c:forEach var="notice" items="${noticeList}" varStatus="status">
				    <c:if test="${notice.board_sub_category eq 1}">
				        <div class="panel panel-default ">
				            <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question${status.index}">
				                <h4 class="panel-title">
				                    <a href="#" class="ing"><span class="cs_notice">공지</span><span style="margin-left: 20px; font-size: 15px;">${notice.board_subject }</span></a>
				                </h4>
				            </div>
				            <div id="question${status.index}" class="panel-collapse collapse" style="height: 0px;">
				                <div class="panel-body">
				                    <p>${notice.board_content }</p>
				                </div>
				            </div>
				        </div>
				    </c:if>
				</c:forEach>
		    </div>
		    <br><br>
		<section id="pageList" style="margin-left: 50%">
			<%-- [이전] 버튼 클릭 시 BoardList.bo 서블릿 요청(파라미터 : 현재 페이지번호 - 1) --%>
			<%-- 단, 현재 페이지 번호(pageNum) 가 1보다 클 경우에만 동작(아니면 비활성화 처리) --%>
			<input type="button" style="width:100px" value="이전" 
					onclick="location.href = 'notice?pageNum=${pageNum - 1}'"
					<c:if test="${pageNum <= 1 }">disabled</c:if>
			>	
			<%-- 현재 페이지 번호가 저장된 pageInfo 객체를 통해 페이지 번호 출력 --%>
			<%-- 시작페이지(startPage) 부터 끝페이지(endPage) 까지 표시 --%>
			<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
				<%-- 각 페이지마다 하이퍼링크 설정(페이지번호를 pageNum 파라미터로 전달) --%>
				<%-- 단, 현재 페이지는 하이퍼링크 제거하고 굵게 표시 --%>
				<c:choose>
					<%-- 현재 페이지번호와 표시될 페이지번호가 같을 경우 판별 --%>
					<c:when test="${pageNum eq i}">
						<b>${i}</b> <%-- 현재 페이지 번호 --%>
					</c:when>
					<c:otherwise>
						<a href="notice?pageNum=${i}">${i}</a> <%-- 다른 페이지 번호 --%>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<%-- [다음] 버튼 클릭 시 BoardList.bo 서블릿 요청(파라미터 : 현재 페이지번호 + 1) --%>
			<%-- 단, 현재 페이지 번호(pageNum) 가 최대 페이지번호 보다 작을 경우에만 동작(아니면 비활성화 처리) --%>
			<input type="button" style="width:100px" value="다음" 
				onclick="location.href = 'notice?pageNum=${pageNum + 1}'"
				<c:if test="${pageNum >= pageInfo.maxPage }">disabled</c:if>
			>	
		</section>
		    <!--/panel-group-->
		</div>
		<!-- Footer area -->
		<!-- 하단바 삽입-->
		<div class="bottom">
			<jsp:include page="../inc/bottom.jsp"/>
		</div>
    </body>
</html>