<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  
  <!-- favicon 넣는 자리 -->	
  <%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title> 공생 | 클래스 등록 - 기본 정보 </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css" rel="stylesheet" />
  
<!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  
 <!-- FullCalendar 필요한 라이브러리 추가 -->
 <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
  <!-- 이미지 업로드 자바스크립트 -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- Global CSS -->
 <link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />
 <link href="${pageContext.request.contextPath}/resources/company_assets/css/class_register.css" rel="stylesheet">

 <style type="text/css">
 
 /* 새로운 파일 업로드 버튼 스타일 */
.custom-file-input {
    opacity: 1!important; /* 투명도 재설정 */
    position: relative!important; /* 절대 위치 대신 상대 위치 사용 */
    z-index: auto!important; /* z-index 재설정 */
    width: 100%!important; /* Make the file input take up 100% of its parent's width */
    
}

.input-group-curri {
  margin-bottom: 15px; /* 두 입력 필드 사이의 간격 조정 */
  overflow: visible; /* 스크롤바가 생기지 않도록 overflow 속성 조정 */
  

}


.input-group-custom {
  margin-bottom: 5px; /* 간격 조정을 위한 마진 값 */
}

.custom-file-input {
  margin-bottom: 0; /* 기본 마진 제거 */
}

#scheduleTable {
    font-size: 15px!important;
    margin-left: 10px;
}

.main-panel {
	background-color: #fff!important;
	
}    

.footer .wrapper {
	background-color: #fff!important;

}

.wrapper {
	background-color: #fff!important;

}
    
 </style>

 </head>
 <body>
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
			<jsp:include page="./sidebar_wrapper.jsp" />
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">클래스 수정</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<form>
							<div class="input-group no-border">
								<input type="text" value="" class="form-control search"
									placeholder="Search...">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="now-ui-icons ui-1_zoom-bold"></i>
									</div>
								</div>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons media-2_sound-wave"></i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i
									class="now-ui-icons location_world"></i>
									<p>
										<span class="d-lg-none d-md-block">Some Actions</span>
									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="now-ui-icons users_single-02"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
					<!--  본문 시작 -->
				<!-- 탭 링크 -->
			<div class="container">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">기본 정보</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">스케줄 및 부가정보</a>
					</li>
					<li class="nav-item">
<!-- 						<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">기타 제공사항</a> -->
							<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">기타 제공사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="extra-tab" data-toggle="tab" href="#extra" role="tab" aria-controls="extra" aria-selected="false">검수 요청 및 약관 동의</a>
					</li>
				</ul>
			<form action="classModifyPro" name="classModifyForm" method="post" enctype="multipart/form-data">
			<!-- HTML 내에 숨겨진 input 태그를 통해 값을 전달 -->
			<input type="hidden" id="hiddenMainCategory" value="${classDetail['class_main_category']}">
			<input type="hidden" id="hiddenSubCategory" value="${classDetail['class_sub_category']}">
    		<input type="hidden" name="class_idx" value="${classDetail.class_idx}">
	
				<div class="tab-content">
					<div class="tab-pane active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						
						<!-- 1번째 탭 -->
						<!--  본문 시작 -->
						<div class="col-md-11">
							<div class="card">
								<div class="card-header">
									<h5 class="title">클래스 수정 - 기본 정보</h5>
									<%-- 직접 입력받지 않은 글번호, 페이지번호를 폼 파라미터로 함께 전달하기 위해 --%>
									<%-- input type="hidden" 속성을 활용하여 폼 데이터로 추가 가능 --%>
									<%-- name 속성에 파라미터 이름, value 속성에 파라미터 값 지정 --%>
									<input type="hidden" name="com_idx" value="${board.board_num}">
									
								</div>
									<div class="card-body">
										<div class="row">
											<div class="col-md-3 pr-1">
												<div class="form-group">
												<label>모집 유형</label> 
											        <select class="form-control" name="class_category">
											            <!-- JSTL을 사용하여 선택된 값이 무엇인지 확인하고, 해당 값에 맞게 selected 속성 부여 -->
											            <option value="1" ${classDetail.class_category eq 1 ? 'selected' : ''}>정규모집</option>
											            <option value="2" ${classDetail.class_category eq 2 ? 'selected' : ''}>원데이 클래스</option>
     						  						</select>
												</div>
											</div>
											<div class="col-md-3 pr-1">
												<div class="form-group">
													<label>클래스 대분류</label> 
													<select class="form-control" name="class_main_category" id="interior_type">
														<option value="">대분류를 선택하세요</option>
														<option value="1" ${classDetail.class_category eq 1 ? 'selected' : ''}>바닥 시공</option>
														<option value="2" ${classDetail.class_category eq 2 ? 'selected' : ''}>벽/천장 시공</option>
														<option value="3" ${classDetail.class_category eq 3 ? 'selected' : ''}>부분 인테리어</option>
														<option value="4" ${classDetail.class_category eq 4 ? 'selected' : ''}>야외 시공</option>
														<option value="5" ${classDetail.class_category eq 5 ? 'selected' : ''}>종합 인테리어</option>
														<option value="6" ${classDetail.class_category eq 6 ? 'selected' : ''}>기타 시공</option>
													</select>
												</div>
											</div>
											<div class="col-md-3">
												<div class="form-group">
													<label>클래스 소분류</label> 
													<select class="form-control" name="class_sub_category" id="sub_interior_type">
														<option value="">소분류를 선택하세요</option>
													</select>
												</div>
											</div>
											<!--  <div class="col-md-6 px-1"> / px: 패딩관련-->
											<div class="col-md-8 pr-7">
												<div class="form-group">
													<label>클래스 타이틀</label> 
													<input type="text" class="form-control" name="class_title" placeholder="클래스 이름을 입력해 주세요"  value="${classDetail.class_title}">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12 pr-7">
												<div class="form-group">
													<label>대표 사진 등록</label> 
													<span class="pro_info" id="img_number">(0/3)</span>
													<div class="pic_instruction">
														- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br>
														&nbsp;&nbsp;(1:1 비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br>
														- 등록된 사진은 공생 SNS, 광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br>
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
														    <c:if test="${not empty classDetail.class_pic1}">
														        <div id="img_preview0" style="display:inline-block;">
														            <img src="${pageContext.request.contextPath}/resources/upload/${classDetail.class_pic1}" width="150" height="150">
														            <span id="del_sum" class="chk_style" onclick="del_sum();">x</span>
														        </div>
														    </c:if>
															    <!-- 프리뷰 이미지2 -->
															    <c:if test="${not empty classDetail.class_pic2}">
															        <div id="img_preview1" style="display:inline-block;">
															            <img src="${pageContext.request.contextPath}/resources/upload/${classDetail.class_pic2}" width="150" height="150">
															            <span id="del_img1" class="chk_style" onclick="del_img1();">x</span>
															        </div>
															    </c:if>
															
															    <!-- 프리뷰 이미지3 -->
															    <c:if test="${not empty classDetail.class_pic3}">
															        <div id="img_preview2" style="display:inline-block;">
															            <img src="${pageContext.request.contextPath}/resources/upload/${classDetail.class_pic3}" width="150" height="150">
															            <span id="del_img2" class="chk_style" onclick="del_img2();">x</span>
															        </div>
															    </c:if>
															</td>
														</tr>
														<!-- 이미지영역끝 -->
														<tr>
															<td class="td1" align="left">
																<input type="button" id="imgup" onclick="img_preview();" value="대표 이미지 업로드"
																	style="width: 150px; height: 50px; border-radius: 10px; border: 1px solid; 
																background-image: url('${ pageContext.request.contextPath }/resources/img/image_upload.png'); background-size: cover;">
															</td>
														</tr>
													</table>
													<!-- ========================================================================== -->
												</div>
											</div>
											<div class="col-md-6 pl-1">
												<div class="form-group">
													<label>&nbsp;&nbsp;&nbsp;기존 공방 주소</label><br>
													<div class="col-sm-8">
														<input type="radio" name="addressOption" id="existingAddress" value="existing" checked> 기존 공방 주소 출력하기 <br>
															<div class="form-group">
																<div class="row address-row">
																	<div class="col-6">
																		<input class="form-control smaller-input" type="text" name="class_post_code" id="postCode" value="${classDetail.class_post_code}">
																	</div>
																</div>
																	<br> 
																<input class="form-control smaller-input" type="text" name="class_address1" id="address1"  value="${classDetail.class_address1}" placeholder="기본주소"> 
																	<br> 
																<input class="form-control smaller-input" type="text" name="class_address2" id="address2" value="${classDetail.class_address2}" placeholder="상세주소">
															</div>
													</div>
													
													<div class="col-sm-8">
														<input type="radio" name="addressOption" id="newAddress" value="new"> 다른 주소 사용하기
													</div>
												</div>
												<!-- 주소 입력 필드, 처음에는 숨겨져 있음 -->
												<div id="additionalAddress" style="display: none;">
													<div class="row">
														<div class="col-md-12 offset-md-1">
															<div class="form-group">
																<div class="row address-row">
																	<div class="col-6">
																		<input class="form-control smaller-input" type="text" name="class_post_code" id="newPostCode">
																	</div>
																	<div class="col-6">
																		<input type="button" class="form-control smaller-input btn-primary" id="btnSearchAddress" value="주소검색">
																	</div>
																</div>
																	<br> 
																<input class="form-control smaller-input" type="text" name="class_address1" id="newAddress1" placeholder="기본주소"> 
																	<br> 
																<input class="form-control smaller-input" type="text" name="class_address2" id="newAddress2" placeholder="상세주소">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<br><br> 
													<label>클래스 소개문</label>
														<textarea rows="4" cols="80" class="form-control" name="class_introduction"  placeholder="클래스 소개문을 입력해주세요">${classDetail.class_introduction}</textarea>
													</div>
												</div>
											</div>
											<div class="row"></div>
										</div>
									</div>
<!-- 								</form> -->
												<div class="col-md-12">
								<div class="d-flex justify-content-end">
								    <!-- 이전 버튼 -->
<!-- 								    <button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" id="goToPreviousTab">이전</button> -->
								    <!-- 다음 버튼 -->
								    <button type="button" class="btn btn-default btn-col-md-4 custom-font-size" id="goTo2Tab">다음</button>
								</div>
								</div>
							</div>
						</div>
					</div>
					
						<!-- 2번째 탭 -->
					 <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					 
					 
						<div class="col-md-10 pl-1">
						 <div class="card">
						    <div class="card-header">
                                <h5 class="title">클래스 등록 - 스케줄 및 부가정보</h5>
                             </div>
                      	<div class="card-body">
                             
							<div class="form-group">
								<label for="modal_title">일정 설정</label><br>
								<!-- ================================================ -->
								<!-- 스케줄 정보를 표시할 테이블 -->
							<table id="existingScheduleTable" class="table">
							    <thead>
							    <hr>
							        <div class="exist_schedule"><b>[ 기존 일정 ]</b></div>
							        <tr>
							            <th>요일</th>
							            <th>날짜</th>
							            <th>운영시간</th>
							            <th>최대 인원</th>
							        </tr>
							    </thead>
							    <tbody>
							        <!-- 기존 스케줄 정보를 반복하여 행을 생성 -->
<%-- 							        <c:forEach items="${classDetail.schedules}" var="schedule"> --%>
							            <tr>
<%-- 							                <td><div id="displayDays">${classDetail.class_day}</div></td> --%>
<%-- 							                <td>${classDetail.class_day }</td> --%>
							                <td>${selectedDays}</td>
							                <td>${classDetail.class_start_date} ~ ${classDetail.class_end_date} </td>
							                <td>${classDetail.class_start_time} ~ ${classDetail.class_end_time}</td>
							                <td>${classDetail.class_member_count}</td>
							            </tr>
<%-- 							        </c:forEach> --%>
							    </tbody>
							</table>

								<!-- ================================================ -->
								<!-- 새로운 div에 '일정 등록' 버튼 추가 -->
								<div class="row">
									<div class="col-md-12 text-left">
										<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#scheduleModal">일정 등록</button>
									</div>
									<table id="scheduleTable" class="table">
										<thead>
											<tr>
												<th>요일</th>
												<th>날짜</th>
												<th>운영시간</th>
												<th>최대 인원</th>
											</tr>
										</thead>
										<tbody>
											<!-- 스크립트에서 생성한 행 추가됨 -->
										</tbody>
									</table>
								</div>
								<div class="row">
									<div class="col-md-12">
										<!-- 모달창 -->
										<div class="modal fade" id="scheduleModal" tabindex="-1"  role="dialog" aria-labelledby="scheduleModalLabel" aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="scheduleModalLabel">일정 등록</h5>
														<button type="button" class="close" data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">
														<div class="row">
															<div class="col-md-12 pr-1 mb-3">
																<div class="form-group">
																	<span class="modal_title">요일</span><br>
																	<!-- ====================================== -->
																	<div class="modal_check">
																		<input type="checkbox" id="mon_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="mon_checkbox" class="checkbox-label">월</label> 
																		<input type="hidden" name="class_day" value="1"> 
																		<input type="checkbox" id="tue_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="tue_checkbox" class="checkbox-label">화</label> 
																		<input type="hidden" name="class_day" value="2"> 
																		<input type="checkbox" id="wed_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="wed_checkbox" class="checkbox-label">수</label> 
																		<input type="hidden" name="class_day" value="3"> 
																		<input type="checkbox" id="thr_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="thr_checkbox" class="checkbox-label">목</label> 
																		<input type="hidden" name="class_day" value="4"> 
																		<input type="checkbox" id="fri_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="fri_checkbox" class="checkbox-label">금</label> 
																		<input type="hidden" name="class_day" value="5"> 
																		<input type="checkbox" id="sat_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="sat_checkbox" class="checkbox-label">토</label> 
																		<input type="hidden" name="class_day" value="6"> 
																		<input type="checkbox" id="sun_checkbox" onclick="updateCheckboxValue(this);" name="class_day"> 
																		<label for="sun_checkbox" class="checkbox-label">일</label> 
																		<input type="hidden" name="class_day" value="0"> <br>
																	</div>
																	<input type="hidden" id="selectedDays" name="selectedDays" value="">
																	<p class="modal_day_instruction">
																		하나 이상의 운영요일이 선택되어야 합니다.
																	</p>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-8 pr-1 mb-3">
																<span class="modal_title">날짜</span>
																	<br>
																<div class="modal_date">
																	<div class="form-group">
																		<input type="date" id="startDate" name="class_start_date" value="${classDetail.class_start_date}">&nbsp; ~
																		&nbsp;<input type="date" id="endDate" name="class_end_date" value="${classDetail.class_end_date}"> <br>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-8 pr-1 mb-3">
																<div class="form-group">
																	<span class="modal_title">클래스 운영시간(한 타임당)</span>
																		<br>
																	<div class="modal_time">
																		<input type="time" id="startTime" name="class_start_time" value="${classDetail.class_start_time }">&nbsp; ~
																		&nbsp;<input type="time" id="endTime" name="class_end_time" value="${classDetail.class_end_time }">
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-8 pr-1 mb-2">
																<div class="form-group">
																	<span class="modal_title">클래스 최대 인원(한 타임당)</span>
																	<div class="modal_select">
																		<select class="form-control" name="class_member_count">
																			<option value="1" ${classDetail.class_member_count eq 1 ? 'selected' : ''}>1명</option>
																			<option value="2" ${classDetail.class_member_count eq 2 ? 'selected' : ''}>2명</option>
																			<option value="3" ${classDetail.class_member_count eq 3 ? 'selected' : ''}>3명</option>
																			<option value="4" ${classDetail.class_member_count eq 4 ? 'selected' : ''}>4명</option>
																			<option value="5" ${classDetail.class_member_count eq 5 ? 'selected' : ''}>5명</option>
																			<option value="6" ${classDetail.class_member_count eq 6 ? 'selected' : ''}>6명</option>
																			<option value="7" ${classDetail.class_member_count eq 7 ? 'selected' : ''}>7명</option>
																			<option value="8" ${classDetail.class_member_count eq 8 ? 'selected' : ''}>8명</option>
																			<option value="9" ${classDetail.class_member_count eq 9 ? 'selected' : ''}>9명</option>
																			<option value="10" ${classDetail.class_member_count eq 10 ? 'selected' : ''}>10명</option>
																		</select>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- 모달 내부 -->
													<div class="modal-footer">
														<button type="button" class="btn btn-primary" id="saveButton">저장</button>
														<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
													</div>
												</div>
											</div>
										</div>
										<!-- 달력을 표시할 div -->
<!-- 										<div id="calendar"></div> -->
											<br><br>
									</div>
								</div>
							</div>
						<div class="col-md-12 pr-7">
							<div class="form-group">
								<!--  =================================================================================== -->
<!-- 								<span class="pro_info" id="img_number">(0/3)</span> -->
								<div class="pic_instruction">
<!-- 									- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br> &nbsp;&nbsp;(1:1 -->
<!-- 									비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br> - 등록된 사진은 공생 SNS, -->
<!-- 									광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br> -->
								</div>
								<!-- ========================================================================== -->
							  <!-- 파일업로드 용 폼 -->

<!-- 					    </div> -->
<!-- 					</div> -->
								<!--  =================================================================================== -->
								<hr>
								<div class="row">
								<label><b>커리큘럼 상세 등록</b></label>
										<div class="col-md-12 pl-1">
										    <label>1단계) 상세 내용</label>
										        <!-- 이미지 프리뷰 영역 -->
										        <div id="curriculum_imagePreview0" class="curriculum-image-preview">
										            <c:if test="${not empty classDetail.class_curriculum1}">
										                <img src="${pageContext.request.contextPath}/resources/upload/${classDetail.class_curriculum1}" width="150" height="150">
										            </c:if>
										        </div>
										    <div class="input-group-curri">
										        <input type="file" id="curriculum_imageFile0" name="file4" accept=".jpg, .jpeg, .png" class="custom-file-input" onchange="previewCurriculumImage(0, this)">
										        <input type="text" class="form-control" name="class_curriculum_detail1" placeholder="커리큘럼 1단계 상세내용을 입력해주세요" value="${classDetail.class_curriculum_detail1}">
										    </div>
										</div>
									<div class="col-md-12 pl-1">
										<label>2단계) 상세 내용</label>
								        <!-- 이미지 프리뷰 영역 -->
								        <div id="curriculum_imagePreview1" class="curriculum-image-preview">
								            <c:if test="${not empty classDetail.class_curriculum2}">
								                <img src="${pageContext.request.contextPath}/resources/upload/${classDetail.class_curriculum2}" width="150" height="150">
								            </c:if>
								        </div>
										<div class="input-group-curri">
											<input type="file" id="curriculum_imageFile1" name="file5" accept=".jpg, .jpeg, .png" class="custom-file-input">
											<input type="text" class="form-control"  name="class_curriculum_detail2" 
												placeholder="커리큘럼 2단계 상세내용을 입력해주세요"  value="${classDetail.class_curriculum_detail2}">
										</div>
									</div>
									<div class="col-md-12 pl-1">
										<label>3단계) 상세 내용</label>
								        <!-- 이미지 프리뷰 영역 -->
								        <div id="curriculum_imagePreview2" class="curriculum-image-preview">
								            <c:if test="${not empty classDetail.class_curriculum3}">
								                <img src="${pageContext.request.contextPath}/resources/upload/${classDetail.class_curriculum3}" width="150" height="150">
								            </c:if>
								        </div>
										<div class="input-group-curri">
											<input type="file" id="curriculum_imageFile2" name="file6" accept=".jpg, .jpeg, .png" class="custom-file-input">
											<input type="text" class="form-control" name="class_curriculum_detail3"  
												placeholder="커리큘럼 3단계 상세내용을 입력해주세요"  value="${classDetail.class_curriculum_detail3}">
										</div>
									</div>
									<br> <br>
									<div class="col-md-4 pl-1">
										<hr>
										<label>판매가격(원 단위)</label>
										<div class="input-group">
											<input type="text" class="form-control" placeholder="ex) 100,000" name="class_price"  value="${classDetail.class_price}">
<!-- 											<div class="input-group-append"> -->
<!-- 												<span class="input-group-text">원</span> -->
<!-- 											</div> -->
										</div>
									</div>
								</div>
							</div>
							
							</div>
							</div>
								<div class="d-flex justify-content-end">
								    <!-- 이전 버튼 -->
								    <button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" id="goToHomeFromProfile">이전</button>
								    <!-- 다음 버튼 -->
								    <button type="button" class="btn btn-default btn-col-md-4 custom-font-size" id="goTo3Tab">다음</button>
								</div>
						</div>
						</div>
					</div>
					
					
					
					<!-- 3번째 탭 -->
					<div class="tab-pane" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					
					   <div class="card">
                     <div class="card-header">
	                      <h5 class="title">클래스 등록 - 기타 제공사항</h5>
                       </div>
						<div class="card-body">
						   <label>기타 제공사항 선택</label><br>         
								<div class="card_small">
									<div class="row">
									    <div class="col-md-10">
               								 <c:set var="offeringList" value="${fn:split(classDetail.class_offering, ',')}" />
									       <div class="form-group">
						                    <input type="checkbox" name="class_offering" value="1" id="workshop">&nbsp;
						                    <label for="workshop" class="register3_text_label">공방 보유</label>
						
						                    <input type="checkbox" name="class_offering" value="1" id="park">&nbsp;
						                    <label for="park" class="register3_text_label">주차 공간</label>
						
						                    <input type="checkbox" name="class_offering" value="1" id="wifi"}>&nbsp;
						                    <label for="wifi" class="register3_text_label">와이파이</label>
						
						                    <input type="checkbox" name="class_offering" value="1" id="coffee">&nbsp;
						                    <label for="coffee" class="register3_text_label">커피 별도구매</label>
						
						                    <input type="checkbox" name="class_offering" value="1" id="bus">&nbsp;
						                    <label for="bus" class="register3_text_label">대중교통 용이</label>
						                </div>
									    </div>
									</div>
									<div class="row">
									    <div class="col-md-12">
									          <div class="form-group">
							                    <input type="checkbox" name="class_offering" value="1" id="taxi" >&nbsp;
							                    <label for="taxi" class="register3_text_label">택시/자가용 추천</label>

							                    <input type="checkbox" name="class_offering" value="1" id="snack" >&nbsp;
							                    <label for="snack" class="register3_text_label">음료/간식 제공</label>
              							  </div>
									    </div>
									</div>
								 </div>	
									<br>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
												<label>추가 제공사항 및 유의사항</label>
												<!-- ========================================================================== -->
												<br>
												<div class="form-group">
<!-- 													<label>시작일</label>  -->
													<input type="text" class="form-control" name="class_caution" 
														placeholder="내용을 입력해주세요" value="${classDetail.class_caution}">
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
											<br>
												<label>태그 입력</label>
												<!-- ========================================================================== -->
												<br>
												<div class="form-group">
												<div class="guide">※ 키워드를 입력하고 스페이스바를 누르면 자동으로 '#'가 붙습니다.</div>
<!-- 													<input type="text" class="form-control" placeholder="검색에 사용되는 단어를 키워드로 등록해주세요" > -->
													<input type="text" class="form-control" id="keyword" name="class_tag" 
														placeholder="검색에 사용되는 단어를 키워드로 등록해주세요"  value="${classDetail.class_tag}">
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
												<label>자주 하는 질문(FAQ)</label>
												<!-- ========================================================================== -->
												<br>
												<span class="register3_text">질문 1</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" 
														name="class_question1"  value="${classDetail.class_question1}">
												</div>
												<span class="register3_text">답변 1</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" 
														name="class_answer1"   value="${classDetail.class_answer1}">
												</div>
												<br>
												<span class="register3_text">질문 2</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" 
														name="class_question2"  value="${classDetail.class_question2}">
												</div>
												<span class="register3_text">답변 2</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" 
														name="class_answer2"  value="${classDetail.class_answer2}">
												</div>
												<br>
												<span class="register3_text">질문 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" 
														name="class_question3" value="${classDetail.class_question3}">
												</div>
												<span class="register3_text">답변 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" 
														name="class_answer3"  value="${classDetail.class_answer3}">
												</div>
											</div>
										</div>
									</div>
										<div class="d-flex justify-content-end">
										    <!-- 이전 버튼 -->
										    <button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" id="goToProfileFromContact">이전</button>
										    <!-- 다음 버튼 -->
										    <button type="button" class="btn btn-default btn-col-md-4 custom-font-size" id="goTo4Tab">다음</button>
										</div>
								</div>
							</div>
						</div>
						
					<!-- 4번째 탭 -->	
					<div class="tab-pane" id="extra" role="tabpanel" aria-labelledby="extra-tab">
					
				<div class="card">
					<div class="card-header">
                       <h5 class="title">클래스 등록 - 기본 정보</h5>
                     </div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-7 pr-1">
									<!-- 체크박스에 고유 ID 부여 -->
									<div class="form-group">
										<div class="checkbox">
											<label>
												<input type="checkbox" id="termsAgreement" value="">&nbsp;&nbsp;서비스 이용약관 동의(필수)
											</label>
										</div>
										<div class="checkbox">
											<label>
												<input type="checkbox" id="privacyPolicyAgreement" value="">&nbsp;&nbsp;서비스 개인정보 처리방침 동의(필수)
											</label>
										</div>
										<div class="checkbox">
											<label>
												<input type="checkbox" id="refundPolicyAgreement" value="">&nbsp;&nbsp;공생 환불 규정에 동의(필수)
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
<!-- 					</form> -->
			<!-- ============================================================================================= -->
			<div class="col-md-12 pl-1">
<!-- 				<div class="submit_btn d-flex justify-content-end"> -->
<!-- 					<button type="button" -->
<!-- 						class="btn btn-default btn-col-md-4 mr-2 custom-font-size" -->
<%-- 						onclick="location.href='${pageContext.request.contextPath}/company/class/register3'">이전</button> --%>
<%-- 						onclick="location.href='${pageContext.request.contextPath}/company/class/register3'">이전</button> --%>
					<div class="d-flex justify-content-end">
			<button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" id="goToContactFromExtra">이전</button>
					<input type="submit" class="btn btn-col-md-4 mr-2 custom-font-size examination" onclick="submit()" value="클래스 수정">
					</div>
<!-- 				</div> -->
			</div>
			<!-- ============================================================================================= -->
					</div>
					</div>
				</div> 
			</div>
			<!-- ============================================================================================= -->
<!-- 			<div class="col-md-11 pl-1"> -->
<!-- 				<div class="submit_btn d-flex justify-content-end"> -->
<!-- 					<button type="button" -->
<!-- 						class="btn btn-default btn-col-md-4 mr-2 custom-font-size" -->
<%-- 						onclick="location.href='${pageContext.request.contextPath}/company/class/register3'">이전</button> --%>
<!-- 					<input type="submit" class="btn btn-col-md-4 mr-2 custom-font-size examination" onclick="submitReview()" value="검수 신청"> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<!-- ============================================================================================= -->
			</form> <!-- 여기에서 form 태그 종료 -->
        </div> <!-- container 종료 -->
        <!-- 생략된 코드... -->
    </div>
</div>
	<!-- ============================================================================================== -->
		<footer class="footer"> </footer>
	<!-- 하단에 위치시킨 단일 jQuery 라이브러리 -->
    <!-- jQuery 라이브러리 -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- jQuery UI 라이브러리 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- Bootstrap과 관련된 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js"></script>
	
	<!-- 다음 주소검색 API 사용을 위한 라이브러리 추가 -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!--   Core JS Files   -->
	<!-- Popper.js, then Bootstrap JS -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
<%-- 	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script> --%>
	<!-- ... 나머지 스크립트 파일 ... -->
	<!-- Chart JS -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
	<!-- ============================================================================================== -->
	 <script src="${pageContext.request.contextPath}/resources/company_assets/js/class_register_modify.js"></script>
	<script type="text/javascript">
	
	
	</script>
	
	
</body>
</html>