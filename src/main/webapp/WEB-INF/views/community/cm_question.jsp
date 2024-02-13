<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
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
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/community.css">

<script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
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
<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mypage.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<%-- 페이지네이션 - pageNum 파라미터 가져와서 저장(없을 경우 기본값 1로 설정) --%>
	<c:set var="pageNum" value="1" />
	<c:if test="${not empty param.pageNum }">
		<c:set var="pageNum" value="${param.pageNum }" />
	</c:if>
    <jsp:include page="../inc/top.jsp"></jsp:include>
    <br>
    <div class="container">
        <div class="row">
            <!-- 좌측 메뉴바 -->
            <div class="col-sm-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title text-center">커뮤니티</h4>
                    </div>
                    <div class="panel-body">
                        <ul class="list-group">
                            <li class="list-group-item"><a href="question">궁금해요</a></li>
                            <li class="list-group-item"><a href="together">함께해요</a></li>
                            <li class="list-group-item"><a href="myHome">집들이</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 우측 본문 -->
			<div class="col-sm-9">
			    <!-- 글쓰기 버튼 추가 -->
				<div class="row">
				    <div class="col-sm-12 text-right">
				        <button class="btn btn-primary" id="writeButton" onclick="location.href='write';">
						    <span class="glyphicon glyphicon-pencil"></span> 글쓰기
						</button>
				    </div>
				</div>
			    <br>
<!-- 			    <div class="row"> -->
<!-- 			        <div class="col-sm-12 text-left"> -->
<!-- 			            <button class="btn btn-primary" id="resetButton" style="margin-right: 10px;">초기화</button> -->
<!-- 			            <select class="form-control" id="serviceType" style="display: inline-block; width: auto;"> -->
<!-- 			            	<option disabled selected>서비스</option> -->
<!-- 			                <option>시공</option> -->
<!--                             <option>설치 및 수리</option> -->
<!--                             <option>리모델링</option> -->
<!--                             <option>리폼</option> -->
<!--                             <option>인테리어</option> -->
<!--                             <option>기타</option> -->
<!-- 			            </select> -->
<!-- 			        </div> -->
<!-- 			    </div> -->
<!-- 				<br> -->
				<c:forEach var="question" items="${questionList}">
				<div class="cm_text">
				    <div class="row mt-5">
				        <div class="col-sm-9">
				            <p>궁금해요/
					            <c:choose>
						            	<c:when test="${question.board_sub_category eq 1}">시공</c:when>
						            	<c:when test="${question.board_sub_category eq 2}">설치 및 수리</c:when>
						            	<c:when test="${question.board_sub_category eq 3}">리모델링</c:when>
						            	<c:when test="${question.board_sub_category eq 4}">리폼</c:when>
						            	<c:when test="${question.board_sub_category eq 5}">인테리어</c:when>
						            	<c:when test="${question.board_sub_category eq 6}">기타</c:when>
					            </c:choose>
					        </p>
				            <a href="questionDetail?board_idx=${question.board_idx }"  class="cm_context">
				                <!-- 글제목 두껍게 -->
				                <h4 class="h4_community" style="font-weight: bold;">${question.board_subject}</h4>
				                <!-- 글 내용과 댓글은 일반 두께로 -->
				                <p class="text-truncate" style="font-weight: normal;">${fn:substring(question.board_content, 0, 100)}</p>
				                <p style="font-weight: normal;"><span class="fa fa-comment"></span> ${question.reply_count}</p>
				            </a>
				        </div>
				        <div class="col-sm-3">
				            <div class="cm_thumbnail">
									        <c:choose>
						            <c:when test="${not empty question.board_img1}">
						                <img src="${pageContext.request.contextPath }/resources/upload/${question.board_img1}" style="width:150px; height: 150px;" alt="이미지">
						            </c:when>
						            <c:otherwise>
						                <!-- board_img1이 없는 경우, 아무것도 출력하지 않음 -->
						            </c:otherwise>
						        </c:choose>
				                <div class="caption text-right">
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
				<br>
				</c:forEach>
				<section id="pageList">
					<%-- [이전] 버튼 클릭 시 BoardList.bo 서블릿 요청(파라미터 : 현재 페이지번호 - 1) --%>
					<%-- 단, 현재 페이지 번호(pageNum) 가 1보다 클 경우에만 동작(아니면 비활성화 처리) --%>
					<input type="button" style="width:100px" value="이전" 
							onclick="location.href = 'question?pageNum=${pageNum - 1}'"
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
								<a href="question?pageNum=${i}">${i}</a> <%-- 다른 페이지 번호 --%>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<%-- [다음] 버튼 클릭 시 BoardList.bo 서블릿 요청(파라미터 : 현재 페이지번호 + 1) --%>
					<%-- 단, 현재 페이지 번호(pageNum) 가 최대 페이지번호 보다 작을 경우에만 동작(아니면 비활성화 처리) --%>
					<input type="button" style="width:100px" value="다음" 
						onclick="location.href = 'question?pageNum=${pageNum + 1}'"
						<c:if test="${pageNum >= pageInfo.maxPage }">disabled</c:if>
					>	
				</section>  
			</div>
        </div>
    </div>
</body>
<br>
<!-- Footer area -->
<!-- 하단바 삽입-->
<div class="bottom">
	<jsp:include page="../inc/bottom.jsp"/>
</div>
</html>