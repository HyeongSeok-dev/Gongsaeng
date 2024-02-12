<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>공생 | 공간을 생각하다</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
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
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/lightslider.min.css">
<link href="${pageContext.request.contextPath}/resources/css/review_modify.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"> -->
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">


<!-- Js -->
<script src="${pageContext.request.contextPath}/resources/js/review_modify.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript"> 
                 
function deleteFile(review_idx, review_img_1) {
	
	 // 새로운 파일 입력 요소 HTML 생성
  var newFileInputHtml = `
        <input type="file" id="photoInput${review_img_1}" name="file${review_img_1}" accept="image/*" style="display:none;">
        <button type="button" id="photoBtn${review_img_1}" class="photo_btn" name="file${review_img_1}">
            <i class="fas fa-camera"></i> 사진 추가
        </button>
        <div class="preview_container" id="previewContainer${review_img_1}" style="display: none;"></div>`;

    if (confirm("삭제하시겠습니까?")) {
        $.ajax({
            url: "ReviewDeleteFile",
            type: "POST",
            data: {
                "review_idx": review_idx,
                "review_img_1": review_img_1
            },
            success: function(response) {
                if(response == "true") {
                    // 프리뷰 요소 삭제
					$(".imagePreview").empty().hide();
                    $(".remove_btn").hide();

                    // 새로운 파일 입력 요소 HTML 생성
                    $("#fileItemArea").html(newFileInputHtml);

                    // 새 요소에 대한 이벤트 핸들러 설정
                    bindNewFileInputEvents(review_img_1);
                } else {
                    alert('이미지 삭제 실패: ' + response.message);
                }
            }
        });
    }
}

function bindNewFileInputEvents(review_img_1) {
    $("#photoBtn" + review_img_1).on('click', function() {
        $("#photoInput" + review_img_1).click();
    });

    $("#photoInput" + review_img_1).on('change', function(event) {
        handleImagePreview(event, review_img_1);
    });
}

function removePreview(review_img_1) {
    $("#previewContainer" + review_img_1).empty().hide();
    $("#photoInput" + review_img_1).val('');
}

</script> 
<title>리뷰 수정 페이지</title>
<!-- 수정 -->
</head>
<body>
<jsp:include page="../inc/top.jsp"/>
	<article id="reviewModifyForm">
		<div class="container">
			<form action="reviewModifyPro" method="POST" enctype="multipart/form-data" class="formSize">
				<input type="hidden" name="review_idx" value="${review.review_idx}"> <!-- 231228 추가 -->
			    <input type="hidden" name="com_name" value="${param.com_name}" id="comName">    <!-- 231228 추가 -->
			    <input type="hidden" name="class_idx" value="${review.class_idx}">    <!-- 231228 추가 -->
			    <input type="hidden" name="member_id" value="${sId}">  <!-- 231228 추가 -->
				<div class="restaurant_info">
	<!-- 			 <a href="detail?com_id=1"><h1>음식점 이름</h1></a> -->
	<!-- 			 <a href="redetail?com_id=1"><h1>칸다소바 부전점</h1></a> -->
	<%-- 			 <a href="redetail?com_id=1"><h1>${com_id}</h1></a> --%>
					<br>
					<span class="review_modify_page">[ 리뷰 수정 페이지 ]</span>
					<h1 class="classTitle"><a href="${pageContext.request.contextPath}/review/detail?class_idx=${review.class_idx}">${classTitle}</a></h1>
				 <!--            ~~~~~~~~~ : 나중에 ${com_id}로 고쳐서 값 받아오기 -->
	<!-- 			 <input type="submit" value="음식점 이름" onclick="location.href=detail"> -->
	<!-- 			<p>먹은 메뉴</p> -->
				</div>
<!-- 			<form action="ReviewModifyPro" name="reviewModifyForm" method="POST" enctype="multipart/form-data"> -->
			    
				<div class="separator"></div>
				<div class="review_rate_1" style="text-align: center;">
					<fieldset class="review_rate">
						<input type="radio" id="rating10" name="review_score" value="10" ${review.review_score == 10 ? 'checked' : ''}><label for="rating10" title="5점"></label>
						<input type="radio" id="rating9" name="review_score" value="9" ${review.review_score == 9 ? 'checked' : ''}><label class="half" for="rating9" title="4.5점"></label>
						<input type="radio" id="rating8" name="review_score" value="8" ${review.review_score == 8 ? 'checked' : ''}><label for="rating8" title="4점"></label>
						<input type="radio" id="rating7" name="review_score" value="7" ${review.review_score == 7 ? 'checked' : ''}><label class="half" for="rating7" title="3.5점"></label>
						<input type="radio" id="rating6" name="review_score" value="6" ${review.review_score == 6 ? 'checked' : ''}><label for="rating6" title="3점"></label>
						<input type="radio" id="rating5" name="review_score" value="5" ${review.review_score == 5 ? 'checked' : ''}><label class="half" for="rating5" title="2.5점"></label>
						<input type="radio" id="rating4" name="review_score" value="4" ${review.review_score == 4 ? 'checked' : ''}><label for="rating4" title="2점"></label>
						<input type="radio" id="rating3" name="review_score" value="3" ${review.review_score == 3 ? 'checked' : ''}><label class="half" for="rating3" title="1.5점"></label>
						<input type="radio" id="rating2" name="review_score" value="2" ${review.review_score == 2 ? 'checked' : ''}><label for="rating2" title="1점"></label>
						<input type="radio" id="rating1" name="review_score" value="1" ${review.review_score == 1 ? 'checked' : ''}><label class="half" for="rating1" title="0.5점"></label>
					</fieldset>
				</div>
				<br>
				<div class="like_section" style="text-align: center;">
					<div class="like_section_text">
						<p>
							클래스가 마음에 든다면,<br> '좋아요'를 눌러주세요<br>
							<!-- 취향이 비슷한 사람을 추천받으세요. -->
						</p>
					</div>
					<!-- 좋아요 버튼, 'checked' 상태는 서버에서 제공된 review 데이터를 기반으로 결정됩니다. -->
					<label class="like_button" id="likeButton">
					    <input type="checkbox" name="review_like" value="true" ${review.review_like ? 'checked' : ''} style="display: none;"/>
					    <svg id="heart" xmlns="http://www.w3.org/2000/svg" fill="none" 
					    	viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
					        <path stroke-linecap="round" stroke-linejoin="round" 
					        	d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z">
				        	</path>
					    </svg> 클래스 추천
					</label>
				<!-- ===================================================================== -->
				</div>
				<br>
				<div class="separator"></div>
				<div class="review_section">
					<h2>어떤 점이 좋았나요?</h2>
					<p>이 장소에 어울리는 키워드를 골라주세요.</p>
					<div class="keyword_section">
						<div class="keyword_category">
							<input type="checkbox" id="review_kind_checkbox" ${review.review_kind == 1 ? 'checked' : ''}>
							<label for="review_kind_checkbox" class="checkbox_label">친절해요</label>
							<input type="hidden" name="review_kind" value="${review.review_kind}">
							
							<input type="checkbox" id="review_detail_checkbox" ${review.review_detail == 1 ? 'checked' : ''}>
					        <label for="review_detail_checkbox" class="checkbox_label">꼼꼼해요</label>
					        <input type="hidden" name="review_detail" value="${review.review_detail}">
					        
							<input type="checkbox" id="review_cheap_checkbox" ${review.review_cheap == 1 ? 'checked' : ''}>
					        <label for="review_cheap_checkbox" class="checkbox_label">가격이 합리적이에요</label>
					        <input type="hidden" name="review_cheap" value="${review.review_cheap}">
					        
							<input type="checkbox" id="review_explanation_checkbox" ${review.review_explanation == 1 ? 'checked' : ''}>
					        <label for="review_explanation_checkbox" class="checkbox_label">설명을 잘해주세요</label>
					        <input type="hidden" name="review_explanation" value="${review.review_explanation}">
						</div>
						<div class="keyword_category">
							<input type="checkbox" id="review_interior_checkbox" ${review.review_interior == 1 ? 'checked' : ''}>
					        <label for="review_interior_checkbox" class="checkbox_label">인테리어가 멋져요</label>
					        <input type="hidden" name="review_interior" value="${review.review_interior}">
					        
							<input type="checkbox" id="review_trendy_checkbox" ${review.review_trendy == 1 ? 'checked' : ''}>
					        <label for="review_trendy_checkbox" class="checkbox_label">트렌디해요</label>
					        <input type="hidden" name="review_trendy" value="${review.review_trendy}">
					        
							<input type="checkbox" id="review_large_checkbox" ${review.review_large == 1 ? 'checked' : ''}>
					        <label for="review_large_checkbox" class="checkbox_label">매장이 넓어요</label>
					        <input type="hidden" name="review_large" value="${review.review_large}">
					        
							<input type="checkbox" id="review_meeting_checkbox" ${review.review_meeting == 1 ? 'checked' : ''}>
					        <label for="review_meeting_checkbox" class="checkbox_label">단체로 갈 수 있어요</label>
					        <input type="hidden" name="review_meeting" value="${review.review_meeting}">
						</div>
						<div class="keyword_category">
							<input type="checkbox" id="review_comfortable_checkbox" ${review.review_comfortable == 1 ? 'checked' : ''}>
					        <label for="review_comfortable_checkbox" class="checkbox_label">분위기가 편해요</label>
					        <input type="hidden" name="review_comfortable" value="${review.review_comfortable}">
					        
							<input type="checkbox" id="review_parking_checkbox" ${review.review_parking == 1 ? 'checked' : ''}>
					        <label for="review_parking_checkbox" class="checkbox_label">주차하기 편해요</label>
					        <input type="hidden" name="review_parking" value="${review.review_parking}">
					        
							<input type="checkbox" id="review_clean_toilet_checkbox" ${review.review_clean_toilet == 1 ? 'checked' : ''}>
					        <label for="review_clean_toilet_checkbox" class="checkbox_label">화장실이 깨끗해요</label>
					        <input type="hidden" name="review_clean_toilet" value="${review.review_clean_toilet}">
					        
							<input type="checkbox" id="review_etc_fast_checkbox" ${review.review_etc_fast == 1 ? 'checked' : ''}>
					        <label for="review_etc_fast_checkbox" class="checkbox_label">찾아가기 쉬워요</label>
					        <input type="hidden" name="review_etc_fast" value="${review.review_etc_fast}">
						</div>
						<div class="keyword_category">
							<h3>&nbsp;&nbsp;&nbsp;&nbsp;</h3>
					        <input type="checkbox" id="review_no_keyword_checkbox" ${review.review_no_keyword == 1 ? 'checked' : ''}>
					        <label for="review_no_keyword_checkbox" class="checkbox_label">선택할 키워드가 없어요</label>
					        <input type="hidden" name="review_no_keyword" value="${review.review_no_keyword}">
						</div>
						<div class="separator"></div>
					</div>
				</div>
				<br> <br> <br>
				<div class="review_input_section">
					<div class="separator"></div>
					<h2 style="text-align: center;">리뷰를 남겨주세요</h2>
					<!-- 사진 추가 버튼 컨테이너 -->
					<div class="photo_box">
	<!-- 					<div class="file" id="fileItemArea1"> -->
						<div class="file" id="fileItemArea">
			        		<c:choose>
								<c:when test="${not empty review.review_img_1}">
									<div class="image_wrapper">
										<img src="${pageContext.request.contextPath }/resources/upload/${review.review_img_1}" alt="Image Preview" class="imagePreview"/>
										<!-- 수정된 removePreview 함수 호출 -->
<%-- 			                 		    <div class="remove_btn" onclick="deleteFile(${review.review_num}, '${review.review_img_1}')">X</div> --%>
			                    		<div class="remove_btn" onclick="deleteFile(${review.review_idx}, '${review.review_img_1}')">
	                		      			<img src="${pageContext.request.contextPath}/resources/img/close2.png" style="width: 20px; height: 20px;" alt="Delete">
			                  			</div>
			                		</div>
			            		</c:when>
			            		<c:otherwise>
									<div class="photo_box">
										<div class="file" id="fileItemArea1">
											<input type="file" id="photoInput" name="file1" accept="image/*" style="display:none;"/>
											<button type="button" id="photoBtn" class="photo_btn">
												<i class="fas fa-camera"></i> 사진 추가
											</button>
											<div id="previewContainer" class="preview_container" style="display: none;">
												<div class="image_wrapper">
													<img id="imagePreview" src="#" alt="Image Preview"/>
													<div class="remove_btn" onclick="removePreview()">
														<img src="${pageContext.request.contextPath}/resources/img/close2.png" style="width: 20px; height: 20px;" alt="Delete">
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<!-- ===================================================================== -->
				
					<!-- 리뷰 텍스트 박스 -->
<!-- 				<div class="modsify_bottom"> -->
					<textarea class="review_textarea" maxlength="500"
						name="review_content" placeholder="업주와 다른 사용자들이 상처받지 않도록 좋은 표현을 사용해주세요.(500자수 제한)">${review.review_content }</textarea>
			<!-- 			<a class="caution_link" href="#" onclick="openPopup()">리뷰 작성 유의사항</a> -->
					<section id="commandCell">
						<button id="register_button" onclick="location.href='${pageContext.request.contextPath}/review/complete'">수정하기</button>
<!-- 						<div class="review_input_section"> -->
<!-- 						</div> -->
					</section>
<!-- 				</div> -->
				</div>
			</form>
		</div>
		<br><br><br>
	
		<div class="footer-area">
			<jsp:include page="../inc/bottom.jsp"/>
		</div>
		<!-- ===================================================================== -->
		<!-- 팝업 창 -->
		<div id="popup">
			<h2>리뷰 작성 유의사항</h2>
			<p>
				<b>리뷰 작성 유의사항</b>
			</p>
			<p>
				리뷰 운영 정책을 위반한 경우, 통보 없이 리뷰를 숨김처리 하거나 회원의 리뷰 <br>작성 권한을 중지 또는 해지할
				수 있습니다.
			</p>
	
			<p>
				<ul>
					<li>잘못된 방문 인증이나 정상 이용 완료되지 않은 예약에 대해 리뷰를 작성한 경우</li><br>
					<li>장소와 무관한 내용이나 사진, 동일 문자의 반복 등 부적합한 내용을 포함한 경우</li><br>
					<li>욕설, 비방, 명예훼손을 포함한 내용이 포함한 내용이 있는 경우</li><br>
					<li>저작권, 초상권 등 타인의 권리, 명예, 신용, 기타 정당한 이익을 침해하는 경우</li>
				</ul><br>
				 더 자세한 이용 정책은 방문자리뷰 이용정책을 확인해주세요.
			</p>
			<button onclick="closePopup()">닫기</button>
		</div>
		<!-- ===================================================================== -->
		<!-- 토스트 메시지 -->
		 <div id="toastMessage" class="toast-message">좋아요가 반영되었습니다</div>
	</article>
</body>
</html>