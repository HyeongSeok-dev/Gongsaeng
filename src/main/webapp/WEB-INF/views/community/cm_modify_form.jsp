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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<%-- <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/js/mypage.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/community.js"></script>
</head>
<body>
    <jsp:include page="../inc/top.jsp"></jsp:include>
    <br>
     <div class="container">
        <form action="modifyPro" method="post" enctype="multipart/form-data">
    	<%-- 직접 입력받지 않은 글번호, 페이지번호를 폼 파라미터로 함께 전달하기 위해 --%>
		<%-- input type="hidden" 속성을 활용하여 폼 데이터로 추가 가능 --%>
		<%-- name 속성에 파라미터 이름, value 속성에 파라미터 값 지정 --%>
        <input type="hidden" name="board_idx" value="${board.board_idx}">
		<input type="hidden" name="pageNum" value="${param.pageNum}">
        <div class="col-lg-10 col-lg-offset-1">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <select class="form-control" name="board_main_category" required>
                        	<option disabled selected value="" style="color: #EAEAEA;">
							<c:choose>
	                        	<c:when test="${board.board_main_category eq 5}">궁금해요</c:when>
				            	<c:when test="${board.board_main_category eq 6}">함께해요</c:when>
                        	</c:choose>
                        	</option>
                        	<option value="5">궁금해요</option>
                            <option value="6">함께해요</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-control" name="board_sub_category" required>
                            <option disabled selected value="" style="color: #EAEAEA;">
                            <c:choose>
	                            <c:when test="${board.board_sub_category eq 1}">시공</c:when>
				            	<c:when test="${board.board_sub_category eq 2}">설치 및 수리</c:when>
				            	<c:when test="${board.board_sub_category eq 3}">리모델링</c:when>
				            	<c:when test="${board.board_sub_category eq 4}">리폼</c:when>
				            	<c:when test="${board.board_sub_category eq 5}">인테리어</c:when>
				            	<c:when test="${board.board_sub_category eq 6}">기타</c:when>
                            </c:choose>
                            </option>
                            <option value="1">시공</option>
                            <option value="2">설치 및 수리</option>
                            <option value="3">리모델링</option>
                            <option value="4">리폼</option>
                            <option value="5">인테리어</option>
                            <option value="6">기타</option>
                        </select>
                    </div>
                </div>
            </div>
            <input type="hidden" name="member_id" value="${sessionScope.sId }" />
            <div class="form-group">
                <input type="text" class="form-control" name="board_subject" placeholder="제목을 입력하세요" value="${board.board_subject}" required>
            </div>
            <div class="form-group">
                <textarea class="form-control" name="board_content" rows="25" placeholder="내용을 입력하세요" required>${board.board_content}</textarea>
            </div>
            <div class="form-group">
            <div class="col-md-12 pr-7">
				<div class="form-group">
							<div class="td1" align="left">
								<input type="button" id="imgup" onclick="img_preview();" value="이미지 업로드"
									style="width: 150px; height: 50px; border-radius: 10px; border: 1px solid; 
								background-image: url('${ pageContext.request.contextPath }/resources/img/image_upload.png'); background-size: cover;">
							</div>
					<!-- ========================================================================== -->
					<!-- 파일업로드용 -->
					<input type="file" id="sumimage" name="file1" style="display: none;" accept=".jpg, .jpeg, .png">
					<input type="file" id="imageFile1" name="file2" style="display: none;" accept=".jpg, .jpeg, .png">
					<input type="file" id="imageFile2" name="file3" style="display: none;" accept=".jpg, .jpeg, .png">
					<!-- 	</form> -->
					<table style="margin-top: 30px;">
						<tr>
							<td class="td2" align="left">
								<!-- 이미지 등록 영역 -->
								<!-- 프리뷰 이미지1 -->
								<div id="img_zone">
									<c:if test="${not empty board.board_img1 }">
										<div id="img_preview0">
											<input type="image" class="image" id="imgup_sum" src="${ pageContext.request.contextPath }/resources/upload/${board.board_img1 }" onclick="send_0();" width="150px" height="150px"/> 
											<span id="sum_style">대표 이미지</span>
											<!-- 삭제버튼 -->
											<span id="del_sum" class="chk_style" onclick="del_sum();">x</span>
										</div>
									</c:if>
									<c:if test="${empty board.board_img1 }">
										<div id="img_preview0">
											<input type="image" class="image" id="imgup_sum" src="" onclick="send_0();" width="150px" height="150px"/>
											<span id="del_sum" class="chk_style" onclick="del_sum();">x</span>
										</div>
									</c:if>
								<!-- 프리뷰 이미지2 -->
									<div id="img_preview1">
										<input type="image" class="image" id="imgup_1" src="${board.board_img2 }"  onclick="send_1();" width="150px" height="150px" />
										<!-- 삭제버튼 -->
										<span id="del_img1" class="chk_style" onclick="del_img1();">x</span>
									</div>
	
	
								<!-- 프리뷰 이미지3 -->
									<div id="img_preview2">
										<input type="image" class="image" id="imgup_2" src="${board.board_img3 }"  onclick="send_2();"  width="150px" height="150px" /> 
										<span id="del_img2" class="chk_style" onclick="del_img2();">x</span>
									</div>
								</div>
							</td>
						</tr>
						<!-- 이미지영역끝 -->
					</table>
					<!-- ========================================================================== -->
					<span style="font-weight: bold">대표 사진 등록</span> 
					<span class="pro_info" id="img_number" style="font-weight: bold">(0/3)</span>
					<div class="pic_instruction">
						- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br>
						&nbsp;&nbsp;(1:1 비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br>
						- 등록된 사진은 공생 SNS, 광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br>
		        	<br>
					</div>
				</div>
			</div>
        	</div>
        		<div class="col-md-12 pr-7">
					<div class="form-group" style="text-align: center;">
			            <button type="submit" class="btn btn-primary">수정</button>
			            <button type="button" class="btn btn-default" onclick="history.back()">취소</button>
		            </div>
	            </div>
        </div>
        </form>
    </div>
</body>
<br>
<!-- Footer area -->
<!-- 하단바 삽입-->
<div class="bottom">
	<jsp:include page="../inc/bottom.jsp"/>
</div>
</html>