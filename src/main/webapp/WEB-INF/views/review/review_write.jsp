<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/lightslider.min.css">
<link href="${pageContext.request.contextPath}/resources/css/review_write.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">

<link href="${pageContext.request.contextPath}/resources/css/global.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
<!-- Js -->
<script src="${pageContext.request.contextPath}/resources/js/review_write.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
function addResIdx(res_idx) { 
	
// 	$('form').append('<input type="hidden" name="res_idx" value="${reviewItem.res_idx}" id="resIdx">');
// 	console.log($("#resIdx").html());
	$("#resIdx").val(res_idx);
	console.log("resIdx : " + $("#resIdx").val());
}

</script>
<title>리뷰 작성 페이지</title>
<!-- 수정 -->
</head>
<body>
<jsp:include page="../inc/top.jsp"/>
	<article id="reviewWriteForm">
	<div class="container">
		<form action="reviewWritePro" name="reviewWriteForm" method="POST" enctype="multipart/form-data">
		<div class="restaurant_info">
	 <a href="${pageContext.request.contextPath}/review/redetail?com_id=${com_id}"><h1>${comName}</h1></a>
			
		<span id="visitCountNumber">${visitCount}</span><span id="visitCount">번째 방문</span>
		<span>
		<select onchange="addResIdx(this.value)">
		<c:forEach var="reviewItem" items="${res_list}">
			<option value="${reviewItem.res_idx}"  
			<c:if test="${reviewItem.review_num ne '0'}">disabled</c:if>
			<c:if test="${reviewItem.res_idx eq param.res_idx}">selected</c:if>
			>
					${reviewItem.res_date}
					${reviewItem.res_time}
				<c:if test="${reviewItem.review_num ne '0'}">(작성완료)</c:if>
		</c:forEach>
		</select>
		</span>
		</div>
	    <input type="hidden" name="com_id" value="${param.com_id}">		
	    <input type="hidden" name="res_idx" value="${param.res_idx}" id="resIdx">
		<div class="separator"></div>
		<div class="review_rate_1" style="text-align: center;">
		<fieldset class="review_rate">
             <input type="radio" id="rating10" name="review_score" value="10"><label for="rating10" title="5점"></label>
             <input type="radio" id="rating9" name="review_score" value="9"><label class="half" for="rating9" title="4.5점"></label>
             <input type="radio" id="rating8" name="review_score" value="8"><label for="rating8" title="4점"></label>
             <input type="radio" id="rating7" name="review_score" value="7"><label class="half" for="rating7" title="3.5점"></label>
             <input type="radio" id="rating6" name="review_score" value="6"><label for="rating6" title="3점"></label>
             <input type="radio" id="rating5" name="review_score" value="5"><label class="half" for="rating5" title="2.5점"></label>
             <input type="radio" id="rating4" name="review_score" value="4"><label for="rating4" title="2점"></label>
             <input type="radio" id="rating3" name="review_score" value="3"><label class="half" for="rating3" title="1.5점"></label>
             <input type="radio" id="rating2" name="review_score" value="2"><label for="rating2" title="1점"></label>
             <input type="radio" id="rating1" name="review_score" value="1"><label class="half" for="rating1" title="0.5점"></label>
		</fieldset>
		</div>
		<br>
		<div class="like_section" style="text-align: center;">
			<div class="like_section_text">
				<p>
					이곳이 마음에 든다면,<br> '좋아요'를 눌러주세요<br>
					<!-- 취향이 비슷한 사람을 추천받으세요. -->
				</p>
			</div>
			<!-- ===================================================================== -->
			<label class="like_button" id="likeButton">
			    <input type="checkbox" name="review_like" value="true" style="display: none;"/>
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
						<input type="checkbox" id="review_food_big_checkbox" onclick="updateCheckboxValue(this);">
						<label for="review_food_big_checkbox" class="checkbox_label">친절해요</label>
						<input type="hidden" name="review_food_big" value="0">
						
						<input type="checkbox" id="review_food_deli_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_food_deli_checkbox" class="checkbox_label">꼼꼼해요</label>
				        <input type="hidden" name="review_food_deli" value="0">
				        
						<input type="checkbox" id="review_food_cheap_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_food_cheap_checkbox" class="checkbox_label">가격이 합리적이에요</label>
				        <input type="hidden" name="review_food_cheap" value="0">
				        
						<input type="checkbox" id="review_food_fresh_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_food_fresh_checkbox" class="checkbox_label">설명을 잘해주세요</label>
				        <input type="hidden" name="review_food_fresh" value="0">
				        

				</div>
				<div class="keyword_category">
						<input type="checkbox" id="review_mood_interior_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_mood_interior_checkbox" class="checkbox_label">인테리어가 멋져요</label>
				        <input type="hidden" name="review_mood_interior" value="0">
				        
						<input type="checkbox" id="review_food_healthy_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_food_healthy_checkbox" class="checkbox_label">트렌디해요</label>
				        <input type="hidden" name="review_food_healthy" value="0">
				        
						<input type="checkbox" id="review_mood_large_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_mood_large_checkbox" class="checkbox_label">매장이 넓어요</label>
				        <input type="hidden" name="review_mood_large" value="0">
				        
						<input type="checkbox" id="review_mood_meeting_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_mood_meeting_checkbox" class="checkbox_label">단체로 갈 수 있어요</label>
				        <input type="hidden" name="review_mood_meeting" value="0">
				</div>
				<div class="keyword_category">
						<input type="checkbox" id="review_etc_kind_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_etc_kind_checkbox" class="checkbox_label">분위기가 편해요</label>
				        <input type="hidden" name="review_etc_kind" value="0">
				        
						<input type="checkbox" id="review_etc_parking_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_etc_parking_checkbox" class="checkbox_label">주차하기 편해요</label>
				        <input type="hidden" name="review_etc_parking" value="0">
				        
						<input type="checkbox" id="review_etc_toilet_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_etc_toilet_checkbox" class="checkbox_label">화장실이 깨끗해요</label>
				        <input type="hidden" name="review_etc_toilet" value="0">
				        
						<input type="checkbox" id="review_etc_fast_checkbox" onclick="updateCheckboxValue(this);">
				        <label for="review_etc_fast_checkbox" class="checkbox_label">찾아가기 쉬워요</label>
				        <input type="hidden" name="review_etc_fast" value="0">
				</div>
				<div class="keyword_category">
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;</h3>
				        <input type="checkbox" id="review_no_keyword_checkbox" onclick="toggleKeywords(this);">
				        <label for="review_no_keyword_checkbox" class="checkbox_label">선택할 키워드가 없어요</label>
				        <input type="hidden" name="review_no_keyword" value="0">
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
		    <input type="file" id="photoInput" name="file1" accept="image/*" style="display: none;"/>
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
			<!-- ===================================================================== -->
			<!-- 리뷰 텍스트 박스  -->
			<textarea cols="50" rows="8" class="review_textarea" maxlength="500"
				name="review_content" placeholder="업주와 다른 사용자들이 상처받지 않도록 좋은 표현을 사용해주세요.(500자수 제한)"></textarea>
			<a class="caution_link" href="#" onclick="openPopup()">리뷰 작성 유의사항</a>
			<section id="commandCell">
			<button class="register_button" onclick="location.href='${pageContext.request.contextPath}/review/complete?com_id=${com_id}">등록하기</button>
<%-- 		    <a href="${pageContext.request.contextPath}/review/write?com_id=${param.com_id}"><i class="fas fa-pencil-alt"></i> &nbsp;리뷰쓰기</a> --%>
			</section>
		</div>
	</form>
	</div>
	<!-- ===================================================================== -->
	<!-- 팝업 창 -->
	<div id="popup">
		<h2>리뷰 작성 유의사항</h2>
		<p>
		<p>
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