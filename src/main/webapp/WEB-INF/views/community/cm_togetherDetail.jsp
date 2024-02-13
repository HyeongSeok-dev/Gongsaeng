<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	// 삭제 버튼 클릭 시 확인창을 통해 "삭제하시겠습니까?" 출력 후
	// 확인 버튼 클릭 시 "BoardDelete.bo" 서블릿 요청(파라미터 : 글번호, 페이지번호)
	function confirmDelete() {
		if(confirm("게시글을 삭제하시겠습니까?")) {
			confirm("게시글이 삭제되었습니다.")
			location.href = "deleteForm?board_idx=${board.board_idx}&pageNum=${param.pageNum}";
		}
	}
	
	// 대댓글 작성 아이콘 클릭 시
	function reReplyWriteForm(reply_idx, reply_re_ref, reply_re_lev, reply_re_seq) {

		// 기존에 존재하는 대댓글 입력폼이 있을 경우 해당 폼 요소 제거(tr 태그 제거)
		// => "reReplyTr" id 선택자 활용
		$("#reReplyTr").remove();

		// 지정한 댓글 아래쪽에 대댓글 입력폼 표시
		// => 댓글 지정하기 위해 댓글 tr 태그의 id 값 활용() - $("#replyTr_" + reply_num)
		// => 지정한 댓글 아래쪽에 댓글 입력폼 표시를 위해 after() 메서드 활용
		$("#replyTr_" + reply_idx).after(
			'<tr id="reReplyTr">'
			+ '	<td colspan="3">'
			+ '		<form action="TogetherReReplyWrite" method="post" id="reReplyForm">'
			+ '			<input type="hidden" name="board_idx" value="${board.board_idx}">'
			+ '			<input type="hidden" name="member_id" value="${sessionScope.sId}">'
			+ '			<input type="hidden" name="reply_idx" value="' + reply_idx + '">'
			+ '			<input type="hidden" name="reply_re_ref" value="' + reply_re_ref + '">'
			+ '			<input type="hidden" name="reply_re_lev" value="' + reply_re_lev + '">'
			+ '			<input type="hidden" name="reply_re_seq" value="' + reply_re_seq + '">'
			+ '			<div class="input-group"><input class="form-control" id="reReplyTextarea" name="reply_content" placeholder="댓글을 작성해주세요." type="text">'
			+ '			<span class="input-group-addon"><input type="button" id="replySubmit" onclick="reReplyWrite()" value="등록"></span></div>'
			+ '		</form>'
			+ '	</td>'
			+ '</tr>'
		);
	}
	
	// 대댓글 작성 요청(AJAX)
	function reReplyWrite() {
		// 대댓글 입력항목(textarea) 체크
		if($("#reReplyTextarea").val() == "") {
			alert("내용 입력 필수!");
			$("#reReplyTextarea").focus();
			return;
		}
		
		// "TogetherReReplyWrite" 서블릿 주소 요청 - AJAX
		// => 요청메서드 : POST, 응답 데이터 타입 : "text"
		// => 폼 태그 내의 모든 데이터 파라미터로 전달
		$.ajax({
			type: "POST",
			url: "TogetherReReplyWrite",
			data: $("#reReplyForm").serialize(), // 해당 폼의 모든 입력 요소(hidden 포함) 파라미터화
			dataType: "text",
			success: function(result) {
				// 대댓글 등록 요청 결과 처리
				// => 성공 시 화면 갱신, 실패 시 오류 메세지 출력
				if(result == "true") {
					location.reload(); // 페이지 갱신
				} else {
					alert("댓글 등록 실패!");
				}
			},
			error: function() {
				alert("요청 실패!");
			}
		});
		
	}
	
	// 댓글 삭제 아이콘 클릭 시
	function confirmReplyDelete(reply_idx) {
		if(confirm("댓글을 삭제하시겠습니까?")) { // 확인 클릭 시
			// AJAX 활용하여 BoardTinyReplyDelete 서블릿 요청(파라미터 : 댓글번호)
			$.ajax({
				type: "GET",
				url: "TogetherReplyDelete",
				data: {
					"reply_idx" : reply_idx
				},
				dataType: "text",
				success: function(result) {
					// 댓글 삭제 요청 결과 판별("true"/"false")
					if(result == "true") {
						// 댓글 삭제 성공 시 해당 댓글의 tr 태그 자체 삭제
						// => replyTr_ 문자열과 댓글번호를 조합하여 id 선택자 지정
						$("#replyTr_" + reply_idx).remove();
					} else if(result == "false") {
						alert("댓글 삭제 실패!");
					} else if(result == "invalidSession") { // 세션아이디 없을 경우
						alert("권한이 없습니다!");
						return;
					}
				},
				error: function() {
					alert("요청 실패!");
				}
			});
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
				                <c:choose>
									<c:when test="${empty board.member_img}">
										<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" class="img-circle avatar" alt="user profile image">
									</c:when>
									<c:when test="${fn:contains(board.member_img,'http')}">
										<img alt="profile" src="${board.member_img}" class="img-circle avatar" alt="user profile image">
									</c:when>
									<c:otherwise>
					                    <img src="${pageContext.request.contextPath }/resources/upload/${board.member_img}" class="img-circle avatar" alt="user profile image">
									</c:otherwise>
								</c:choose>
			                </div>
			                <div class="pull-left meta">
			                    <div class="title h5">
			                        <b>${board.member_nick }</b>
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
			            <form action="TogetherReplyWrite" method="post">
			            	<input type="hidden" name="board_idx" value="${board.board_idx}">
							<input type="hidden" name="pageNum" value="${param.pageNum}">
							<input type="hidden" name="member_id" value="${sessionScope.sId}">
               				<div class="input-group">
	               				<c:choose>
									<c:when test="${empty sessionScope.sId}"> <%-- 세션 아이디 없음 --%>
										<input class="form-control" name="reply_content" placeholder="로그인 후 작성 가능합니다." type="text" disabled>
										<span class="input-group-addon">
					                        <button type="submit" id="replySubmit" disabled>
											    <i class="fa fa-edit"></i>
											</button>
					                    </span>
									</c:when>
									<c:otherwise>
										<input class="form-control" name="reply_content" placeholder="댓글을 작성해주세요." type="text" required>
										<span class="input-group-addon">
					                        <button type="submit" id="replySubmit">등록</button>
					                    </span>
									</c:otherwise>
								</c:choose>
				            </div>
		                </form>
		                <ul class="comments-list">
		                <c:forEach var="togetherReplyBoard" items="${togetherReplyBoardList}">
			                <div id="replyTr_${togetherReplyBoard.reply_idx}">
			                    <li class="comment">
			                        <a class="pull-left">
			                    	   <c:forEach var="i" begin="1" end="${togetherReplyBoard.reply_re_lev}">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</c:forEach>
										<c:choose>
											<c:when test="${empty togetherReplyBoard.member_img}">
												<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" class="avatar" alt="user profile image">
											</c:when>
											<c:when test="${fn:contains(board.member_img,'http')}">
												<img alt="profile" src="${togetherReplyBoard.member_img}" class="avatar" alt="user profile image">
											</c:when>
											<c:otherwise>
							                    <img class="avatar" src="${pageContext.request.contextPath }/resources/upload/${togetherReplyBoard.member_img}" class="img-circle avatar" alt="user profile image">
											</c:otherwise>
										</c:choose>
<%-- 			                            <img class="avatar" src="${pageContext.request.contextPath }/resources/upload/${togetherReplyBoard.member_img}" alt="avatar"> --%>
			                        </a>
			                        <div class="comment-body">
			                           	<div class="comment-heading">
                    					<c:forEach var="i" begin="1" end="${togetherReplyBoard.reply_re_lev}">
											&nbsp;&nbsp;
										</c:forEach>
										    <h4 class="user">${togetherReplyBoard.member_nick}</h4>
										    <h5 class="time">
										    	<fmt:parseDate var="parsedReplyDate" value="${togetherReplyBoard.reply_date}" pattern="yyyy-MM-dd'T'HH:mm" type="both" />
												<fmt:formatDate value="${parsedReplyDate}" pattern="MM-dd HH:mm" />									   
										    </h5>
										    <c:if test="${not empty sessionScope.sId}">
										    	<a href="javascript:reReplyWriteForm(${togetherReplyBoard.reply_idx}, ${togetherReplyBoard.reply_re_ref}, ${togetherReplyBoard.reply_re_lev}, ${togetherReplyBoard.reply_re_seq})">
													<i class="fa fa-reply"></i>
												</a>
												<c:if test="${sessionScope.sId eq togetherReplyBoard.member_id or sessionScope.sId eq 'admin'}">
										    	<a href="javascript:void(0)" onclick="confirmReplyDelete(${togetherReplyBoard.reply_idx})">
													<i class="fa fa-trash-o"></i>
												</a>
												</c:if>
											</c:if>
										</div>
				                    	<c:forEach var="i" begin="1" end="${togetherReplyBoard.reply_re_lev}">
											&nbsp;&nbsp;
										</c:forEach>
			                            ${togetherReplyBoard.reply_content}
			                        </div>
			                    </li>
			                </div>
		                </c:forEach> 
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




