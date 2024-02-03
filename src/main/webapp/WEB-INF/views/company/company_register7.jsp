<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 클래스 등록 - 기본 정보
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css" rel="stylesheet" />
  
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  <!-- 이미지 업로드 자바스크립트 -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<!--  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
 	<!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
<%--   <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script> --%>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
  <!-- 다음 주소검색 API 사용을 위한 라이브러리 추가 -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 
 <!-- 등록페이지 CSS / JS -->
 <link href="${pageContext.request.contextPath}/resources/company_assets/css/class_register.css" rel="stylesheet">
<%--  <script src="${pageContext.request.contextPath}/resources/js/class_register.js"></script> --%>
<%--  <script src="${pageContext.request.contextPath}/resources/company_assets/js/class_register.js"></script> --%>
 <script src="${pageContext.request.contextPath}/resources/company_assets/js/class_register1.js"></script>
 
 <link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />

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
						<a class="navbar-brand" href="#pablo">클래스 등록</a>
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
						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">탭 1</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">탭 2</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">탭 3</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="extra-tab" data-toggle="tab" href="#extra" role="tab" aria-controls="extra" aria-selected="false">탭 4</a>
					</li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<!-- 1번째 탭 -->
						<!--  본문 시작 -->
						<div class="col-md-11">
							<div class="card">
								<div class="card-header">
									<h5 class="title">클래스 등록 - 기본 정보</h5>
								</div>
									<div class="card-body">
										<div class="row">
											<div class="col-md-3 pr-1">
												<div class="form-group">
													<label>모집 유형</label> 
													<select class="form-control" name="class_category">
														<option value="1">정규모집</option>
														<option value="2">원데이 클래스</option>
													</select>
												</div>
											</div>
											<div class="col-md-3 pr-1">
												<div class="form-group">
													<label>클래스 대분류</label> 
													<select class="form-control" name="class_main_category" id="interior_type">
														<option value="">대분류를 선택하세요</option>
														<option value="1">바닥 시공</option>
														<option value="2">벽/천장 시공</option>
														<option value="3">부분 인테리어</option>
														<option value="4">야외 시공</option>
														<option value="5">종합 인테리어</option>
														<option value="6">기타 시공</option>
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
													<input type="text" class="form-control" name="class_title" placeholder="클래스 이름을 입력해 주세요" value="">
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
																<div id="img_zone">
																	<div id="img_preview0">
																		<input type="image" id="imgup_sum" onclick="send_0();" src="" width="150px" height="150px"> 
																		<span id="sum_style">대표 이미지</span>
																		<!-- 삭제버튼 -->
																		<span id="del_sum" class="chk_style" onclick="del_sum();">x</span>
																	</div>


																<!-- 프리뷰 이미지2 -->
																	<div id="img_preview1">
																		<input type="image" id="imgup_1" onclick="send_1();" src="" width="150px" height="150px">
																		<!-- 삭제버튼 -->
																		<span id="del_img1" class="chk_style" onclick="del_img1();">x</span>
																	</div>


																<!-- 프리뷰 이미지3 -->
																	<div id="img_preview2">
																		<input type="image" id="imgup_2" onclick="send_2();" src="" width="150px" height="150px"> 
																		<span id="del_img2" class="chk_style" onclick="del_img2();">x</span>
																	</div>
																</div>
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
													<label>&nbsp;&nbsp;&nbsp;기존 공방 주소</label>
													<div class="col-sm-8">
														<input type="radio" name="class_address" id="existingAddress" checked> 기존 공방 주소 출력하기 <br>
													</div>
													
													<div class="col-sm-8">
														<input type="radio" name="class_address" id="newAddress"> 다른 주소 사용하기
													</div>
												</div>
												<!-- 주소 입력 필드, 처음에는 숨겨져 있음 -->
												<div id="additionalAddress" style="display: none;">
													<div class="row">
														<div class="col-md-8 offset-md-1">
															<div class="form-group">
																<div class="row address-row">
																	<div class="col-6">
																		<input class="form-control smaller-input" type="text" name="post_code" id="postCode" required>
																	</div>
																	<div class="col-6">
																		<input type="button" class="form-control smaller-input btn-primary" id="btnSearchAddress" value="주소검색">
																	</div>
																</div>
																	<br> 
																<input class="form-control smaller-input" type="text" name="address1" id="address1" placeholder="기본주소" required> 
																	<br> 
																<input class="form-control smaller-input" type="text" name="address2" id="address2" placeholder="상세주소" required>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<br><br> 
													<label>클래스 소개문</label>
														<textarea rows="4" cols="80" class="form-control" name="class_introduction" placeholder="내용을 입력해주세요"> 
														</textarea>
													</div>
												</div>
											</div>
											<div class="row"></div>
										</div>
									</div>
<!-- 								</form> -->
							</div>
						</div>
					</div>
					<div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
						<!-- 2번째 탭 -->
						<div class="col-md-10 pl-1">
							<div class="form-group">
								<label for="modal_title">일정 설정</label>
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
																		<input type="checkbox" id="mon_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="mon_checkbox" class="checkbox-label">월</label> 
																		<input type="hidden" name="class_day" value="1"> 
																		<input type="checkbox" id="tue_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="tue_checkbox" class="checkbox-label">화</label> 
																		<input type="hidden" name="class_day" value="2"> 
																		<input type="checkbox" id="wed_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="wed_checkbox" class="checkbox-label">수</label> 
																		<input type="hidden" name="class_day" value="3"> 
																		<input type="checkbox" id="thr_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="thr_checkbox" class="checkbox-label">목</label> 
																		<input type="hidden" name="class_day" value="4"> 
																		<input type="checkbox" id="fri_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="fri_checkbox" class="checkbox-label">금</label> 
																		<input type="hidden" name="class_day" value="5"> 
																		<input type="checkbox" id="sat_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="sat_checkbox" class="checkbox-label">토</label> 
																		<input type="hidden" name="class_day" value="6"> 
																		<input type="checkbox" id="sun_checkbox" onclick="updateCheckboxValue(this);"> 
																		<label for="sun_checkbox" class="checkbox-label">일</label> 
																		<input type="hidden" name="class_day" value="0"> <br>
																	</div>
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
																		<input type="date" id="startDate">&nbsp; ~
																		&nbsp;<input type="date" id="endDate"> <br>
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
																		<input type="time" id="startTime">&nbsp; ~
																		&nbsp;<input type="time" id="endTime">
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-8 pr-1 mb-2">
																<div class="form-group">
																	<span class="modal_title">클래스 최대 인원(한 타임당)</span>
																	<div class="modal_select">
																		<select class="form-control">
																			<option value="1">1명</option>
																			<option value="2">2명</option>
																			<option value="3">3명</option>
																			<option value="4">4명</option>
																			<option value="5">5명</option>
																			<option value="6">6명</option>
																			<option value="7">7명</option>
																			<option value="8">8명</option>
																			<option value="9">9명</option>
																			<option value="10">10명</option>
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
						</div>
						<div class="col-md-12 pr-7">
							<div class="form-group">
								<label>커리큘럼 상세 사진등록</label> 
								<span class="pro_info" id="img_number">(0/3)</span>
								<div class="pic_instruction">
									- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br> &nbsp;&nbsp;(1:1
									비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br> - 등록된 사진은 공생 SNS,
									광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br>
								</div>
								<!--                         <input type="text" class="form-control" placeholder="Company" value="Mike"> -->
								<!-- ========================================================================== -->
								<!-- 파일업로드 용 폼 -->
								<input type="file" id="imageFile3" style="display: none;" name="file4" accept=".jpg, .jpeg, .png"> 
								<input type="file" id="imageFile4" style="display: none;" name="file5" accept=".jpg, .jpeg, .png"> 
								<input type="file" id="imageFile5" style="display: none;" name="file6" accept=".jpg, .jpeg, .png">
								<table style="margin-top: 30px;">
									<tr>
										<td class="td2 curriculum-detail" align="left">
											<!-- 이미지 등록 영역 -->
											<div id="img_zone">
												<div id="img_preview3">
													<input type="image" id="imgup_sum" onclick="send_3();" src="" width="150px" height="150px"> 
													<span id="sum_style">대표 이미지</span>
													<!-- 삭제버튼 -->
													<span id="del_sum" class="chk_style" onclick="del_img3();">x</span>
												</div>
												<div id="img_preview4">
													<input type="image" id="imgup_1" onclick="send_4();" src="" width="150px" height="150px">
													<!-- 삭제버튼 -->
													<span id="del_img1" class="chk_style" onclick="del_img4();">x</span>
												</div>
												<div id="img_preview5">
													<input type="image" id="imgup_5" onclick="send_5();" src="" width="150px" height="150px"> 
													<span id="del_img5" class="chk_style" onclick="del_img5 ();">x</span>
												</div>
											</div>
										</td>
									</tr>
									<!-- 이미지영역끝 -->
									<tr>
										<td class="td1" align="left">
										<input type="button" id="imgup" onclick="img_preview();" value="대표 이미지 업로드"
											style="width: 150px; height: 50px; border-radius: 10px; border: 1px solid; background-image: url('${ pageContext.request.contextPath }/resources/img/image_upload.png'); background-size: cover;">
										</td>
									</tr>
								</table>
								<br> <br>
								<!-- ========================================================================== -->
								<hr>
								<div class="row">
									<div class="col-md-12 pl-1">
										<label>1단계) 상세 내용</label>
										<div class="input-group">
											<input type="text" class="form-control" placeholder="커리큘럼 1단계 상세내용을 입력해주세요">
										</div>
									</div>
									<div class="col-md-12 pl-1">
										<label>2단계) 상세 내용</label>
										<div class="input-group">
											<input type="text" class="form-control" placeholder="커리큘럼 2단계 상세내용을 입력해주세요">
										</div>
									</div>
									<div class="col-md-12 pl-1">
										<label>3단계) 상세 내용</label>
										<div class="input-group">
											<input type="text" class="form-control" placeholder="커리큘럼 3단계 상세내용을 입력해주세요">
										</div>
									</div>
									<br> <br>
									<div class="col-md-4 pl-1">
										<hr>
										<label>판매가격</label>
										<div class="input-group">
											<input type="text" class="form-control" placeholder="ex) 100,000">
											<div class="input-group-append">
												<span class="input-group-text">원</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 3번째 탭 -->
					<div class="tab-pane" id="contact" role="tabpanel" aria-labelledby="contact-tab">
						<div class="card-body">
<!-- 							<form action="company/class/register4" method="post" enctype="multipart/form-data"> -->
								<%-- ============================================================================= --%> 
								<input type="hidden" name="class_category" value="${gclass.class_category}">
							    <input type="hidden" name="class_main_category" value="${gclass.class_main_category}">
							    <input type="hidden" name="class_sub_category" value="${gclass.class_sub_category}">
							    <input type="hidden" name="class_title" value="${gclass.class_title}">
<%-- 							    <input type="hidden" name="file1" value="${file1}"> --%>
<%-- 							    <input type="hidden" name="file2" value="${file2}"> --%>
<%-- 							    <input type="hidden" name="file3" value="${file3}"> --%>
							    <input type="hidden" name="address1" value="${gclass.address1}">
							    <input type="hidden" name="address2" value="${gclass.address2}">
							    <input type="hidden" name="class_introduction" value="${gclass.class_introduction}">
								<%-- ============================================================================= --%> 
							    <input type="hidden" name="class_day" value="${gclass.class_day}">
							    <input type="hidden" name="class_start_date" value="${gclass.class_start_date}">
							    <input type="hidden" name="class_end_date" value="${gclass.class_end_date}">
							    <input type="hidden" name="class_start_time" value="${gclass.class_start_time}">
							    <input type="hidden" name="class_end_time" value="${gclass.class_end_time}">
							    <input type="hidden" name="class_member_count" value="${gclass.class_member_count}">
							    <input type="hidden" name="class_curriculum_detail1" value="${gclass.class_curriculum_detail1}">
							    <input type="hidden" name="class_curriculum_detail2" value="${gclass.class_curriculum_detail2}">
							    <input type="hidden" name="class_curriculum_detail3" value="${gclass.class_curriculum_detail3}">
							    <input type="hidden" name="class_price" value="${gclass.class_price}">
								<%-- ============================================================================= --%> 
							    <input type="hidden" name="class_offering" value="${gclass.class_offering}">
							    <input type="hidden" name="class_caution" value="${gclass.class_caution}">
							    <input type="hidden" name="class_tag" value="${gclass.class_tag}">
							    <input type="hidden" name="class_question1" value="${gclass.class_question1}">
							    <input type="hidden" name="class_answer1" value="${gclass.class_answer1}">
							    <input type="hidden" name="class_question2" value="${gclass.class_question2}">
							    <input type="hidden" name="class_answer2" value="${gclass.class_answer2}">
							    <input type="hidden" name="class_question3" value="${gclass.class_question3}">
							    <input type="hidden" name="class_answer3" value="${gclass.class_answer3}">
								<%-- ============================================================================= --%> 
						   <label>기타 제공사항 선택</label><br>         
								<div class="card_small">
									<div class="row">
									    <div class="col-md-12">
									        <div class="form-group">
									            <input type="checkbox" value="1" id="workshop">&nbsp;
									            <label for="workshop" class="register3_text_label">공방 보유</label>
									            <input type="checkbox" value="2" id="park">&nbsp;
									            <label for="park" class="register3_text_label">주차 공간</label>
									            <input type="checkbox" value="3" id="wifi">&nbsp;
									            <label for="wifi" class="register3_text_label">와이파이</label>
									            <input type="checkbox" value="4" id="coffee">&nbsp;
									            <label for="coffee" class="register3_text_label">커피 별도구매</label>
									            <input type="checkbox" value="5" id="bus">&nbsp;
									            <label for="bus" class="register3_text_label">대중교통 용이</label>
									        </div>
									    </div>
									</div>
									<div class="row">
									    <div class="col-md-12">
									        <div class="form-group">
    								            <input type="checkbox" value="6" id="taxi">&nbsp;
    								            <label for="taxi" class="register3_text_label">택시/자가용 추천</label>
									        	<input type="checkbox" value="7" id="snack">&nbsp;
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
													<input type="text" class="form-control" name="class_caution" placeholder="내용을 입력해주세요" >
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
													<input type="text" class="form-control" id="keyword" name="class_tag" value="" placeholder="검색에 사용되는 단어를 키워드로 등록해주세요">
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
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" name="class_question1">
												</div>
												<span class="register3_text">답변 1</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" name="class_answer1">
												</div>
												<br>
												<span class="register3_text">질문 2</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" name="class_question2">
												</div>
												<span class="register3_text">답변 2</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" name="class_answer2" >
												</div>
												<br>
												<span class="register3_text">질문 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" name="class_question3" >
												</div>
												<span class="register3_text">답변 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" name="class_answer3" >
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
					<div class="tab-pane" id="extra" role="tabpanel" aria-labelledby="extra-tab">
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
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
<!-- 					</form> -->
					</div>
				</div> 
			</div>
			<div class="col-md-11 pl-1">
		<div class="submit_btn d-flex justify-content-end">
			<button type="button" class="btn btn-danger btn-col-md-4 mr-2 custom-font-size">
				취소
			</button>
			<button type="button" class="btn btn-default btn-col-md-4  custom-font-size" onclick="location.href='${pageContext.request.contextPath}/company/class/register2'">
				다음
			</button>
		</div>
	</div>

 
 <script type="text/javascript">
 
 document.getElementById('newAddress').addEventListener('change', function() {
     if(this.checked) {
         document.getElementById('additionalAddress').style.display = 'block';
     }
 });

 document.getElementById('existingAddress').addEventListener('change', function() {
     if(this.checked) {
         document.getElementById('additionalAddress').style.display = 'none';
     }
 });
 
	// =====================================================================
	// 주소 검색 API 활용 기능 추가
	// "t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" 스크립트 파일 로딩 필수!
	document.querySelector("#btnSearchAddress").onclick = function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 우편번호(zonecode) 가져와서 우편번호 항목(postCode)에 출력
	            document.getElementById('postCode').value = data.zonecode; 
	            
	            // 기본주소(address) 가져와서 기본주소 항목(address1)에 출력
	            let address = data.address;
	            if(data.buildingName != "") {
	                address += " (" + data.buildingName + ")";
	            }
	            document.getElementById('address1').value = address;
	
	            // 상세주소 항목(address2)에 포커스 요청
	            document.getElementById('address2').focus();
	        }
	    }).open();
	};
	

 </script>
</body>

</html>