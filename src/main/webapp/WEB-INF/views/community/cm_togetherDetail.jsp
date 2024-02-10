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
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

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
<script src="${pageContext.request.contextPath }/resources/js/community.js"></script>
<script type="text/javascript">
	// 삭제 버튼 클릭 시 확인창을 통해 "삭제하시겠습니까?" 출력 후
	// 확인 버튼 클릭 시 "BoardDelete.bo" 서블릿 요청(파라미터 : 글번호, 페이지번호)
	function confirmDelete() {
		if(confirm("게시글을 삭제하시겠습니까?")) {
			confirm("게시글이 삭제되었습니다.")
			location.href = "deleteForm?board_idx=${board.board_idx}&pageNum=${param.pageNum}";
		}
	}
</script>

</head>
<body>
    <jsp:include page="../inc/top.jsp"></jsp:include>
    <br>
    <div class="container">
			<div class="container bootstrap snippets bootdey">
			    <div class="col-lg-8 col-lg-offset-2">
			        <div class="panel panel-white post panel-shadow">
			            <div class="post-heading">
			                <div class="pull-left meta">
			                    <div class="category h6" style="font-weight: normal;">
			                        <p>커뮤니티 > 함께해요</p>
			                    </div>
			                    <div class="title h2" >
			                    <div class="category h6" style="font-weight: normal;">
			                    	<p>서비스/ 
				                    <c:choose>
						            	<c:when test="${board.board_sub_category eq 1}">시공</c:when>
						            	<c:when test="${board.board_sub_category eq 2}">설치 및 수리</c:when>
						            	<c:when test="${board.board_sub_category eq 3}">리모델링</c:when>
						            	<c:when test="${board.board_sub_category eq 4}">리폼</c:when>
						            	<c:when test="${board.board_sub_category eq 5}">인테리어</c:when>
						            	<c:when test="${board.board_sub_category eq 6}">기타</c:when>
						           	</c:choose>
			                    	</p>
			                    </div>
			                       	<b>${board.board_subject}</b>
			                    </div>
			                </div>
			            </div>
			            <br><br><br>
			            <div class="post-heading" style="margin-top: 10px;"> 
			                <div class="pull-left image">
			                    <img src="${pageContext.request.contextPath }/resources/upload/${board.member_img}" class="img-circle avatar" alt="user profile image">
			                </div>
			                <div class="pull-left meta">
			                    <div class="title h5">
			                        <b>${board.member_id }</b>
			                    </div>
			                    <h6 class="text-muted time" style="font-size: 13px">${fn:substring(board.board_date,0,16)}</h6>
			                </div>
			                <div class="pull-right meta">
				                <c:if test="${not empty sessionScope.sId and (board.member_id eq sessionScope.sId or sessionScope.sId eq 'admin')}">
						                <input type="button" value="수정" onclick="location.href='modifyForm?board_idx=${board.board_idx}&pageNum=${param.pageNum}'">
										<input type="button" value="삭제" onclick="confirmDelete()">
				                </c:if>
			                </div>
			            </div>
			            <div class="post-description"> 
			                <p style="margin-top: 20px; margin-bottom: 20px">${board.board_content }</p>
			                <div class="cm_img">
<%-- 			                	<a href="${pageContext.request.contextPath}/resources/img/house.png" target="_blank"> --%>
<%-- 								    <img src="${pageContext.request.contextPath}/resources/img/house.png" alt="이미지"> --%>
<!-- 								</a> -->
								<c:choose>
						            <c:when test="${not empty board.board_img1}">
							            <a href="${pageContext.request.contextPath}/resources/upload/${board.board_img1}" target="_blank" >
							                <img class="img1" src="${pageContext.request.contextPath }/resources/upload/${board.board_img1}" alt="이미지">
							            </a>
						            </c:when>
						            <c:otherwise>
						                <!-- board_img1이 없는 경우, 아무것도 출력하지 않음 -->
						            </c:otherwise>
						        </c:choose>
								<c:choose>
						            <c:when test="${not empty board.board_img2}">
							            <a href="${pageContext.request.contextPath}/resources/upload/${board.board_img2}" target="_blank" class="pull-left">
							                <img class="img2" src="${pageContext.request.contextPath }/resources/upload/${board.board_img2}" alt="이미지">
							            </a>
						            </c:when>
						            <c:otherwise>
						                <!-- board_img2이 없는 경우, 아무것도 출력하지 않음 -->
						            </c:otherwise>
						        </c:choose>
								<c:choose>
						            <c:when test="${not empty board.board_img3}">
							            <a href="${pageContext.request.contextPath}/resources/upload/${board.board_img3}" target="_blank" class="pull-left">
							                <img class="img3" src="${pageContext.request.contextPath }/resources/upload/${board.board_img3}" alt="이미지">
							            </a>
						            </c:when>
						            <c:otherwise>
						                <!-- board_img3이 없는 경우, 아무것도 출력하지 않음 -->
						            </c:otherwise>
						        </c:choose>
			                </div>
							    <span class="fa fa-eye"></span> 
								<span id="viewCount" style="margin-right: 10px;">${board.board_readcount }</span>
								<span class="fa fa-comment"></span> 
							    <span id="commentCount">3</span>
			            </div>
			            <div class="post-footer">
			                <div class="input-group"> 
			                    <input class="form-control" placeholder="댓글을 작성해주세요." type="text">
			                    <span class="input-group-addon">
			                        <a href="#"><i class="fa fa-edit"></i></a>  
			                    </span>
		                </div>
		                <ul class="comments-list">
		                    <li class="comment">
		                        <a class="pull-left" href="#">
		                            <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar">
		                        </a>
		                        <div class="comment-body">
		                           	<div class="comment-heading">
									    <h4 class="user">${board.member_id }</h4>
									    <h5 class="time">5분 전 </h5>
									    <i class="fa fa-reply"></i>
									</div>
		                            <p>시간대가 어떻게 되나요?</p>
		                        </div>
		                        <ul class="comments-list">
		                            <li class="comment">
		                                <a class="pull-left" href="#">
		                                    <img class="avatar" src="${pageContext.request.contextPath }/resources/upload/${board.member_img}" alt="avatar">
		                                </a>
		                                <div class="comment-body">
		                                    <div class="comment-heading">
		                                        <h4 class="user">${board.member_id }</h4>
		                                        <h5 class="time">4분 전 </h5>
		                                        <i class="fa fa-reply"></i>
		                                    </div>
		                                    <p>오전 10시 입니다.</p>
		                                </div>
		                            </li> 
		                            <li class="comment">
		                                <a class="pull-left" href="#">
		                                    <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar">
		                                </a>
		                                <div class="comment-body">
		                                    <div class="comment-heading">
		                                        <h4 class="user">${board.member_id }</h4>
		                                        <h5 class="time">3분 전 </h5>
		                                        <i class="fa fa-reply"></i>
		                                    </div>
		                                    <p>링크 부탁드려요</p>
		                                </div>
		                            </li> 
		                        </ul>
		                    </li>
		                </ul>
		            </div>
		        </div>
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