<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.time.LocalDate"%>
<% LocalDate today = LocalDate.now(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<!-- favicon  -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공생 | 클래스 등록</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<!-- CSS Files -->
<link href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css" rel="stylesheet" />

<!-- 이미지 업로드 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Global CSS -->
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/company_assets/css/class_register.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
			<jsp:include page="./sidebar_wrapper.jsp" />
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">클래스 등록</a>
					</div>
					<div class="collapse navbar-collapse justify-content-end" id="navigation">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" href="#pablo"> 
									<i class="now-ui-icons users_single-02"></i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<!-- 탭 링크 -->
			<div class="container">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav-top-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"> 
							기본 정보 
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"> 
							스케줄 및 부가정보 
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false"> 
							기타 제공사항 
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="extra-tab" data-toggle="tab" href="#extra" role="tab" aria-controls="extra" aria-selected="false"> 
							검수 요청 및 약관 동의 
						</a>
					</li>
				</ul>
				<!-- Tab panes -->
				<form action="classRegisterPro" method="post" enctype="multipart/form-data">
					<div class="tab-content">
						<div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">
							<!-- 1번째 탭 -->
							<div class="card card-content">
								<div class="card-header">
									<h5 class="title">
										클래스 등록 - 기본 정보
									</h5>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-3 lg-3 mr-3">
											<div class="form-group">
												<label>모집 유형</label> 
												<select class="form-control" name="class_category">
													<option value="1">정규모집</option>
													<option value="2">원데이 클래스</option>
												</select>
											</div>
										</div>
										<div class="col-md-3 lg-3 mr-3">
											<div class="form-group">
												<label>클래스 대분류</label> 
												<select class="form-control form-name" name="class_main_category" id="interior_type">
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
										<div class="col-md-3 lg-3 ">
											<div class="form-group">
												<label>클래스 소분류</label> 
												<select class="form-control form-name" name="class_sub_category" id="sub_interior_type">
													<option value="">소분류를 선택하세요</option>
												</select>
											</div>
										</div>
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
												<input type="file" id="sumimage" name="file1" style="display: none;" accept=".jpg, .jpeg, .png" required="required">
												<input type="file" id="imageFile1" name="file2" style="display: none;" accept=".jpg, .jpeg, .png" required="required">
												<input type="file" id="imageFile2" name="file3" style="display: none;" accept=".jpg, .jpeg, .png" required="required">
												<table style="margin-top: 30px;">
													<tr>
														<td class="td2" align="left">
															<!-- 이미지 등록 영역 --> 
															
															<!-- 프리뷰 이미지1 -->
															<div id="img_zone">
																<div id="img_preview0">
																	<input type="image" id="imgup_sum" onclick="send_0();" src="" width="150px" height="150px"> 
																	<span id="sum_style">대표 이미지</span>
																	<span id="del_sum" class="chk_style" onclick="del_sum();">x</span>
																</div>

																<!-- 프리뷰 이미지2 -->
																<div id="img_preview1">
																	<input type="image" id="imgup_1" onclick="send_1();" src="" width="150px" height="150px">
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
															<input type="button" id="imgup" onclick="img_preview();" value="대표 이미지 업로드" style="width: 150px; height: 50px; border-radius: 10px; border: 1px solid; 
																background-image: url('${ pageContext.request.contextPath }/resources/img/image_upload.png'); background-size: cover;">
														</td>
													</tr>
												</table>
												<!-- ========================================================================== -->
											</div>
										</div>
										<div class="col-md-6 pl-1">
											<div class="form-group">
												<label>&nbsp;&nbsp;&nbsp;클래스 교육장소</label>
												<div class="col-sm-8">
													<input type="radio" name="addressOption" id="existingAddress" value="existing" checked>&nbsp;&nbsp;기존 공방 주소 
													<br>
													<div class="form-group">
														<div class="row address-row">
															<div class="col-6">
																<input class="form-control smaller-input" type="text" name="class_post_code" id="postCode" value="${companyAddress.com_post_code}">
															</div>
														</div>
														<br> 
															<input class="form-control smaller-input form-address" type="text" name="class_address1" id="address1" value="${companyAddress.com_address1}" placeholder="기본주소">
														<br> 
															<input class="form-control smaller-input form-address" type="text" name="class_address2" id="address2" value="${companyAddress.com_address2}" placeholder="상세주소">
													</div>
												</div>

												<div class="col-sm-8">
													<input type="radio" name="addressOption" id="newAddress" value="new">&nbsp;&nbsp;다른 주소 사용하기
												</div>
											</div>
											<!-- 주소 입력 필드, 처음에는 숨겨져 있음 -->
											<div id="additionalAddress" style="display: none;">
												<div class="row">
													<div class="col-md-12 offset-md-1">
														<div class="form-group">
															<div class="row address-row">
																<div class="col-6">
																	<input class="form-control smaller-input form-postcode" type="text" name="class_post_code" id="newPostCode" value="우편번호">
																</div>
																<div class="col-6">
																	<input type="button" class="form-control smaller-input btn-primary" id="btnSearchAddress" value="주소검색">
																</div>
															</div>
															<br> 
																<input class="form-control smaller-input form-address" type="text" name="class_address1" id="newAddress1" placeholder="기본주소"> 
															<br> 
																<input class="form-control smaller-input form-address" type="text" name="class_address2" id="newAddress2" placeholder="상세주소">
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
												<br><br> 
												<label>클래스 소개문</label>
													<textarea rows="4" cols="80" class="form-control form-introduction" name="class_introduction" placeholder="내용을 입력해주세요"></textarea>
												</div>
											</div>
										</div>
										<div class="row"></div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="d-flex justify-content-end">
										<button type="button" class="btn btn-default btn-col-md-4 custom-font-size" id="goTo2Tab">다음</button>
									</div>
								</div>
							</div>
						</div>

						<!-- 2번째 탭 -->
						<div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
							<div class="card card-content1">
								<div class="card-header">
									<h5 class="title">클래스 등록 - 스케줄 및 부가정보</h5>
								</div>
								<div class="card-body">
									<div class="form-group">
										<label for="modal_title">일정 설정</label>
										<div class="row">
											<div class="col-md-12 text-left">
												<button type="button" id="openScheduleModal" class="btn btn-secondary" data-toggle="modal" data-target="#scheduleModal">
													일정 등록
												</button>
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
												</tbody>
											</table>
										</div>
										<div class="row">
											<div class="col-md-12">
												<!-- 모달창 -->
												<div class="modal fade" id="scheduleModal" tabindex="-1" role="dialog" aria-labelledby="scheduleModalLabel" aria-hidden="true">
													<div class="modal-dialog" role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="scheduleModalLabel">
																	일정 등록
																</h5>
																<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
																<div class="row">
																	<div class="col-md-12 pr-1 mb-3">
																		<div class="form-group">
																			<span class="modal_title">요일</span><br>
																			<div class="modal_check">
																				<input type="checkbox" id="mon_checkbox" onclick="updateCheckboxValue(this);" name="class_day"  value="1"> 
																					<label for="mon_checkbox" class="checkbox-label">월</label> 
																				<input type="hidden" name="class_day"> 
																				
																				<input type="checkbox" id="tue_checkbox" onclick="updateCheckboxValue(this);" name="class_day" value="2"> 
																					<label for="tue_checkbox" class="checkbox-label">화</label> 
																				<input type="hidden" name="class_day"> 
																			
																				<input type="checkbox" id="wed_checkbox" onclick="updateCheckboxValue(this);" name="class_day" value="3"> 
																					<label for="wed_checkbox" class="checkbox-label">수</label> 
																				<input type="hidden" name="class_day"> 
																				
																				<input type="checkbox" id="thr_checkbox" onclick="updateCheckboxValue(this);" name="class_day" value="4"> 
																					<label for="thr_checkbox" class="checkbox-label">목</label>
																				<input type="hidden" name="class_day"> 
																				
																				<input type="checkbox" id="fri_checkbox" onclick="updateCheckboxValue(this);" name="class_day" value="5"> 
																					<label for="fri_checkbox" class="checkbox-label">금</label> 
																				<input type="hidden" name="class_day"> 
																				
																				<input type="checkbox" id="sat_checkbox" onclick="updateCheckboxValue(this);" name="class_day" value="6"> 
																					<label for="sat_checkbox" class="checkbox-label">토</label> 
																				<input type="hidden" name="class_day">
																				 
																				<input type="checkbox" id="sun_checkbox" onclick="updateCheckboxValue(this);" name="class_day" value="0"> 
																					<label for="sun_checkbox" class="checkbox-label">일</label> 
																				<input type="hidden" name="class_day" value="0">
																				<br>
																			</div>
																			<p class="modal_day_instruction">
																				하나 이상의 운영요일이 선택되어야 합니다.
																			</p>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12 pr-1 mb-3">
																		<span class="modal_title">날짜</span><br>
																		<div class="modal_date">
																			<div class="form-group">
																				<input type="date" id="startDate" name="class_start_date" min="<%=today%>">
																					&nbsp; ~ &nbsp; 
																				<input type="date" id="endDate" name="class_end_date" min="<%=today%>">
																			</div>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-8 pr-1 mb-3">
																		<div class="form-group">
																			<span class="modal_title">클래스 운영시간(한 타임당)</span><br>
																			<div class="modal_time">
																				<input type="time" id="startTime" name="class_start_time">
																					&nbsp; ~ &nbsp; 
																				<input type="time" id="endTime" name="class_end_time">
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
															<div class="modal-footer">
																<button type="button" class="btn btn-primary" id="saveButton">저장</button>
															</div>
														</div>
													</div>
												</div>
												<br><br>
											</div>
										</div>
									</div>
									<div class="col-md-12 pr-7">
										<div class="form-group">
											<div class="pic_instruction"></div>
											<hr>
											<div class="row">
												<label><b>커리큘럼 상세 등록</b></label>
												<div class="col-md-12 pl-1">
													<label>1단계) 상세 내용</label>
													<div class="input-group-curri">
														<input type="file" id="curriculum_imageFile0" name="file4" accept=".jpg, .jpeg, .png" class="custom-file-input">
														<img id="previewImg0" />
														<button type="button" class="remove-image" onclick="removeFile('curriculum_imageFile0', 'previewImg0')" style="display: none;">X</button>
														<input type="text" class="form-control" name="class_curriculum_detail1" placeholder="커리큘럼 1단계 상세내용을 입력해주세요">
													</div>
												</div>
												<div class="col-md-12 pl-1">
													<label>2단계) 상세 내용</label>
													<div class="input-group-curri">
														<input type="file" id="curriculum_imageFile1" name="file5" accept=".jpg, .jpeg, .png" class="custom-file-input">
															<img id="previewImg1" />
														<button type="button" class="remove-image" onclick="removeFile('curriculum_imageFile1', 'previewImg1')" style="display: none;">X</button>
														<input type="text" class="form-control" name="class_curriculum_detail2" placeholder="커리큘럼 2단계 상세내용을 입력해주세요">
													</div>
												</div>
												<div class="col-md-12 pl-1">
													<label>3단계) 상세 내용</label>
													<div class="input-group-curri">
														<input type="file" id="curriculum_imageFile2" name="file6" accept=".jpg, .jpeg, .png" class="custom-file-input">
															<img id="previewImg2" />
														<button type="button" class="remove-image" onclick="removeFile('curriculum_imageFile2', 'previewImg2')" style="display: none;">X</button>
														<input type="text" class="form-control" name="class_curriculum_detail3" placeholder="커리큘럼 3단계 상세내용을 입력해주세요">
													</div>
												</div>
												<br> <br>
												<div class="col-md-4 pl-1">
													<hr>
													<label>판매가격(원 단위)</label>
													<div class="input-wrapper">
														<input type="text" class="form-control" placeholder="ex) 100,000" name="class_price" id="class_price" oninput="formatPrice(this)"> 
														<span class="currency">원</span>
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
						<!-- 3번째 탭 -->
						<div class="tab-pane" id="contact" role="tabpanel" aria-labelledby="contact-tab">
							<div class="card card-content2">
								<div class="card-header">
									<h5 class="title">클래스 등록 - 기타 제공사항</h5>
								</div>
								<div class="card-body">
									<label>기타 제공사항 선택</label><br>
									<div class="card_small">
										<div class="row">
											<div class="col-md-10">
												<div class="form-group">
													<input type="checkbox" name="class_offering" value="1" id="workshop">&nbsp; 
													<label for="workshop" class="register3_text_label">공방 보유</label> 
											
													<input type="checkbox" name="class_offering" value="2" id="park">&nbsp;
													<label for="park" class="register3_text_label">주차 공간</label> 
													
													<input type="checkbox" name="class_offering" value="3" id="wifi">&nbsp;
													<label for="wifi" class="register3_text_label">와이파이</label> 
													
													<input type="checkbox" name="class_offering" value="4" id="coffee">&nbsp; 
													<label for="coffee" class="register3_text_label">커피 별도구매</label> 
													
													<input type="checkbox" name="class_offering" value="5" id="bus">&nbsp;
													<label for="bus" class="register3_text_label">대중교통 용이</label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<input type="checkbox" name="class_offering" value="6" id="taxi">&nbsp; 
													<label for="taxi" class="register3_text_label">택시/자가용 추천</label> 
													
													<input type="checkbox" name="class_offering" value="7" id="snack">&nbsp;
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
												<br>
												<div class="form-group">
													<input type="text" class="form-control" name="class_caution" placeholder="내용을 입력해주세요">
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
												<br>
													<label>태그 입력</label> 
												<br>
												<div class="form-group">
													<div class="guide">
														※ 키워드를 입력하고 스페이스바를 누르면 자동으로 '#'가 붙습니다.
													</div>
													<input type="text" class="form-control" id="keyword" name="class_tag" value="" placeholder="검색에 사용되는 단어를 키워드로 등록해주세요">
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-9 pr-7">
											<div class="form-group">
												<label>자주 하는 질문(FAQ)</label><br> 
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
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" name="class_answer2">
												</div>
												<br> 
												
												<span class="register3_text">질문 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문을 입력해주세요" name="class_question3">
												</div>
												
												<span class="register3_text">답변 3</span>
												<div class="form-group">
													<input type="text" class="form-control" placeholder="자주하는 질문의 답변을 입력해주세요" name="class_answer3">
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
							<div class="card card-content3">
								<div class="card-header">
									<h5 class="title">클래스 등록 - 검수 요청 및 약관 동의</h5>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-7 pr-1">
											<!-- 체크박스에 고유 ID 부여 -->
											<div class="form-group">
												<div class="checkbox_agree">
													<input type="checkbox" id="termsAgreement" value="">
													<label for="termsAgreement"></label> 
													<span id="termsModalButton" class="terms-hover">
														서비스 이용약관 동의(필수)
													</span>
												</div>
												
												<div class="checkbox_agree">
													<input type="checkbox" id="privacyPolicyAgreement" value="">
													<label for="privacyPolicyAgreement"></label> 
													<span id="privacyPolicyModalButton" class="terms-hover">
														서비스 개인정보 처리방침 동의(필수)
													</span>
												</div>
												<div class="checkbox_agree">
													<input type="checkbox" id="refundPolicyAgreement" value="">
													<label for="refundPolicyAgreement"></label> 
													<span id="refundPolicyModalButton" class="terms-hover">
														공생 환불 규정에 동의(필수)
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 pl-1">
									<div class="d-flex justify-content-end">
										<button type="button" class="btn btn-default btn-col-md-4 mr-2 custom-font-size" id="goToContactFromExtra">이전</button>
										<input type="submit" class="btn btn-col-md-4 mr-2 custom-font-size examination" onclick="return submitClass()" value="클래스 등록">
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 서비스 이용약관 동의 모달 -->
	<div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="termsModalLabel">공생 서비스 이용약관</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						제 1조 목적<br> 본 약관은 ㈜공생(이하 “회사”라 함)가 제공하는 공생 서비스(이하 “공생” 또는
						“서비스”라 합니다)의 이용과 관련하여 회원과 회사 간의 권리와 의무, 책임사항, 기타 필요한 사항을 규정함을 목적으로
						합니다.<br>
						<br> 제 2조 용어의 정의<br> 1. 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
						“서비스”라 함은 "회사"가 회원에게 접근기기를 통해 “작가”와 “회원”의 거래를 연결하기 위하여 주고받을 수 있는
						모든 서비스를 말합니다.<br> “작가”라 함은 회사에 콘텐츠를 공급하고 판매를 통해 정산받는 사용자를
						말합니다.<br> “회원” 회사에 개인정보를 제공하여 회원 등록을 한 자로서, 이 약관에 따라 회사와 서비스
						이용계약을 체결한 자를 말합니다.<br> “접근기기”라 함은 휴대전화, PC, 태블릿, 기타 디지털 콘텐츠를
						다운로드 받아 설치하여 이용하거나 네트워크를 통해 이용할 수 있는 유형물을 의미합니다.<br> "콘텐츠" 라
						함은 공생에서 판매 가능한 상품으로 유형의 제품 혹은 무형의 서비스를 말합니다.<br> "UGC"란,
						온라인플랫폼과 관련하여 이용자가 제작한 일체의 콘텐츠를 의미합니다. UGC에는 이용자가 공생 서비스에 업로드하는
						이미지, 영상, 초상, 텍스트, 사운드 등 또는 이들의 조합으로 이루어진 자료 및 정보가 포함됩니다.<br>
						<br> 제 3조 신원정보 등의 제공<br> 회사는 이 약관의 내용, 상호, 대표자 성명, 전화번호,
						팩스번호, 사업자등록번호 등을 회원이 쉽게 알 수 있도록 서비스 화면에 순차적으로 게시합니다.<br>
						<br>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 개인정보 처리방침 동의 모달 -->
	<div class="modal fade" id="privacyPolicyModal" tabindex="-1" aria-labelledby="privacyPolicyModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="privacyPolicyModalLabel">
						공생 개인정보 처리방침
					</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						1. 총칙<br> (주)공생 [이하 “회사”]는 회원의 개인정보보호를 소중하게 생각하고, 회원의 개인정보를
						보호하기 위하여 항상 최선을 다해 노력하고 있습니다.<br>
						<br> 1. 회사는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」을 비롯한 모든 개인정보보호 관련
						법률규정을 준수하고 있으며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다.<br>
						<br> 2. 회사는 「개인정보처리방침」을 제정하여 이를 준수하고 있으며, 이를 인터넷사이트 및 모바일
						어플리케이션에 공개하여 이용자가 언제나 용이하게 열람할 수 있도록 하고 있습니다.<br>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 환불 규정 동의 모달 -->
	<div class="modal fade" id="refundPolicyModal" tabindex="-1" aria-labelledby="refundPolicyModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="refundPolicyModalLabel">공생 환불 규정</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						<strong>클래스 환불정책</strong><br> 클래스 환불은 예약 '시간'이 아닌 예약 '일자'를
						기준으로 합니다.<br>
						<br> 1) 결제 후 1시간 이내 취소 시<br> - 100% 환불 (포인트, 쿠폰 복원)<br>
						(결제 후 1시간 이내 취소 시 100% 환불 단, 당일 예약 상품은 1시간 이내 취소 시에도 환불 불가)<br>
						<br> 2) 예약일 6일 이전 취소 시<br> - 100% 환불 (포인트 복원: 유효기간 6개월,
						쿠폰 복원)<br>
						<br> 3) 예약일 5일 이전 취소 시<br> - 결제 금액의 5% 배상 후 환불 (포인트, 쿠폰
						소멸)<br>
						<br> 4) 예약일 4일 이전 취소 시<br> - 결제 금액의 10% 배상 후 환불 (포인트, 쿠폰
						소멸)<br>
						<br> 5) 예약일 3일 이전 취소 시<br> - 결제 금액의 20% 배상 후 환불 (포인트, 쿠폰
						소멸)<br>
						<br> 6) 예약일 2일 이전 취소 시<br> - 결제 금액의 30% 배상 후 환불 (포인트, 쿠폰
						소멸)<br>
						<br> 7) 예약일 1일 이전 취소 시<br> - 환불 불가 (포인트, 쿠폰 소멸)<br>
						(단, 결제 후 1시간 이내 취소 시, 밤12시 이전 100% 환불)<br>
						<br> 8) 예약일 당일 취소 시<br> - 환불 불가 (포인트, 쿠폰 소멸)<br>
						<br> 9) 당일 예약 상품 구매 시<br> - 환불 불가 (포인트, 쿠폰 소멸)<br>
						<br> 10) 모집 인원 미달인 경우<br> - 예약일 48시간 이내 100% 환불 (포인트 복원:
						유효기간 6개월, 쿠폰 복원)<br>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- ============================================================================================== -->
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
	<!--  Notifications Plugin    -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
	<!-- ============================================================================================== -->
	<script src="${pageContext.request.contextPath}/resources/company_assets/js/class_register1.js"></script>

</body>
</html>