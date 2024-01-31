<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png"> --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>공생 | 클래스 등록 - 스케줄 및 부가정보</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<!-- CSS Files -->
<link href="${pageContext.request.contextPath }/resources/company_assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/resources/company_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="${pageContext.request.contextPath }/resources/company_assets/demo/demo.css" rel="stylesheet" />

<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
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


<style type="text/css">

	
    /* FullCalendar 바탕색 변경 */
    .fc {
        background-color: white;
        border: 1px solid #ddd; /* 옵션: 테두리 추가 */
    }


.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
    background-color: #F1F3F5!important;	
}

.card label {
    font-size: 21px!important;
}

.form-control {
    height: 50px;
    font-size: 16px; /* 원하는 폰트 크기로 설정 */
    /* 추가적인 스타일링 */
    background-color: #fff;
    border-radius: 0; /* 모서리를 각진 형태로 설정 */
}


.input-group {
  height: 50px!important; 
  border-radius: 5px!important;
}

.day-checkbox {
    display: none; /* 체크박스 숨김 */
 }
 
.btn-day-selected {
    color: white;
    background-color: #007bff; /* 선택된 버튼의 스타일 */
  }
 
 /* 체크박스(요일) */
 
  .checkbox-label {
    /* 버튼처럼 보이도록 스타일링 */
    display: inline-block;
    padding: .5em 1em;
    text-align: center;
    border: 1px solid #ddd;
    border-radius: .25rem;
    background-color: #f8f9fa;
    cursor: pointer;
    transition: background-color .3s, color .3s;
  }

  .checkbox-label:hover {
    background-color: #e2e6ea; /* 호버 시 배경색 변경 */
  }

   /* 체크박스 체크시 스타일 */
  .checkbox-label.checked {
    background-color: lightgray;
    color: #fff;
  }
 
  #mon_checkbox,#tue_checkbox,#wed_checkbox,#thr_checkbox,#fri_checkbox,#sat_checkbox,#sun_checkbox {
 	display: none;
 }
  
  /* 모달창 */
  .modal_check, .modal_date, .modal_time,.modal_select {
   	margin-top: 5px; 
  }
  
  .modal_day_instruction {
  	font-size: 0.8em;
  }
  
  .modal_title {
  	margin-bottom: 20px;
  	font-size: 18px;
  	color: #666A73!important;
  }
  
  label {
  	color: #666A73!important;
  }
  
  
  @font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
  
 .btn-secondary  {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
    font-size: 18px;
}
 

.custom-font-size {
    font-size: 18px;
} 


.content {
	background-color: #fff!important;
} 

.wrapper, .main-panel {
/* 	overflow-y: hidden!important; /* 가로 스크롤 숨김 */ */
/* 	overflow-y: auto!important; /* 세로 스크롤 자동 조정 */ */
}

button {
    font-family: 'NanumSquareNeo-Variable', sans-serif;
}  
  
/* 커리큘럼 등록 */  
 	/* 이미지 미리보기 css */
	#img_preview0, #img_preview1, #img_preview2, #img_preview3, #img_preview4, #img_preview5{
		display: none;
		position: relative;
		
		margin:5px;
		
		width: 150px;
		height: 150px; 
		
/* 		border: 2px solid black; */
	
	}
	/* 미리보기 삭제버튼 css */
	#sum_style{
		text-align:center;
		width:75px;
		height:20spx;
	    position:absolute; 
		font-size:12px;
		outline:none;
		border:none;
		border-radius:15px;
	    right:70px;
	    bottom:130px;
	    /* z-index:1; */
	    background-color:rgba(0,0,0,0.5);
	    color:white;
	}
	.chk_style{
		vertical-align: middle;
		text-align:center;
		
		width:28px;
		height:28px;
	    position:absolute; 
		/* font-size:20px; */
		outline:none;
		border:none;
		border-radius:18px;
	    right:9px;
	    bottom:115px;
	    /* z-index:1; */
	    background-color:rgba(0,0,0,0.5);
	    color:#ffcccc;
	}
	
		
	/* 미리보기 삭제 css */
	#del_img1, #del_img2, #del_img3, #del_img4, #del_img5,#del_sum{
		cursor: pointer;
		display: none;
	}
	
	#imgup{
		margin-top: 5px;
	}
	
	/* 이미지 미리보기 css */
	#imgup_1,#imgup_2, #imgup_3, #imgup_4, #imgup_5,#imgup_sum {
		cursor: pointer;
		display: none;
	}
	
	
	.input-tag:focus{
		outline: none;
		border: 1px solid black;
	}

	
	/* 테이블 간의 간격 */
/* 	td { */
.curriculum-detail {
		width: 1020px;
		padding: 0.8em 1.4em 0.5em 0.8em;
	}
	
	.td1{
		width: 20%;
		vertical-align: top;
		
	}
	
	.td2{
		width: 80%;
	}
	
	#img_zone{
		
		/* background-color: black; */
/* 		margin: auto;  */
		width: 100%; 
		min-height: 50px;
		margin-bottom: 50px;
	}
	#img_intro{
		
		font-size:16px;
		color : skyblue;
		/* background-color: #ccffcc; */
		margin: auto; 
		width: 65%; 
		min-height: 50px;
	}
	
	/* 대표 사진 등록 */
	.pic_instruction {
		font-size: 14px;
		color: #666A73;
	}
	
	.custom-font-size {
    font-size: 18px;
}
  
  
  
</style>
</head>
<body class="클래스 등록">
	<div class="wrapper ">
		<div class="sidebar" data-color="orange">
			<!-- Include sidebar_wrapper.jsp -->
			<jsp:include page="./sidebar_wrapper.jsp" />
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
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
						<a class="navbar-brand" href="#pablo">클래스 등록 (스케줄 및 부가정보)</a>
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
								<input type="text" value="" class="form-control"
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
			<div class="content">
				<div class="row">
					<div class="col-md-11">
						<div class="card">
							<div class="card-header">
								<h5 class="title">클래스 등록 (스케줄 및 부가정보)</h5>
							</div>
							<div class="card-body">
								<form>
									<div class="col-md-10 pl-1">
										<div class="form-group">
											<label for="modal_title">일정 설정</label>
											<!-- 새로운 div에 '일정 등록' 버튼 추가 -->
											<div class="row">
												<div class="col-md-12 text-left">
													<button type="button" class="btn btn-secondary"
														data-toggle="modal" data-target="#scheduleModal">일정 등록</button>
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
														<!-- 여기에 스크립트에서 생성한 행이 추가됩니다 -->
													</tbody>
												</table>
											</div>
											<div class="row">
												<div class="col-md-12">
													<!-- 모달창 -->
													<div class="modal fade" id="scheduleModal" tabindex="-1"
														role="dialog" aria-labelledby="scheduleModalLabel"
														aria-hidden="true">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="scheduleModalLabel">일정 등록</h5>
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																</div>
																<!-- 																<form> -->
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
																					<input type="hidden" name="class_day" value="0">
																					<br>
																				</div>
																				<p class="modal_day_instruction">하나 이상의 운영요일이
																					선택되어야 합니다.</p>
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-md-8 pr-1 mb-3">
																			<span class="modal_title">날짜</span><br>
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
																				<span class="modal_title">클래스 운영시간(한 타임당)</span><br>
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
																	<button type="button" class="btn btn-primary"
																		id="saveButton">저장</button>
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																</div>
															</div>
														</div>
													</div>
													<!-- 달력을 표시할 div -->
													<div id="calendar"></div>
													<br> <br>
												</div>
											</div>
										</div>
									</div>
									<!-- ============================================================= -->
									<hr>
									<div class="col-md-12 pr-7">
										<div class="form-group">
											<label>커리큘럼 상세 사진등록</label> <span class="pro_info"
												id="img_number">(0/3)</span>
											<div class="pic_instruction">
												- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br>
												&nbsp;&nbsp;(1:1 비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br>
												- 등록된 사진은 공생 SNS, 광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br>
											</div>
											<!--                         <input type="text" class="form-control" placeholder="Company" value="Mike"> -->
											<!-- ========================================================================== -->
											<!-- 파일업로드 용 폼 -->
<!-- 											<form enctype="multipart/form-data" id="imgform" method="post"> -->
												<input type="file" id="sumimage" style="display: none;" accept=".jpg, .jpeg, .png"> 
												<input type="file" id="imageFile1" style="display: none;" accept=".jpg, .jpeg, .png"> 
												<input type="file" id="imageFile2" style="display: none;" accept=".jpg, .jpeg, .png">
<!-- 											</form> -->
											<table style="margin-top: 30px;">
												<tr>
													<!-- 								<td class="td2" align="left"> -->
													<td class="td2 curriculum-detail" align="left">
														<!-- 이미지 등록 영역 -->
														<div id="img_zone">
															<div id="img_preview0">
																<input type="image" id="imgup_sum" onclick="send_0();"
																	src="" width="150px" height="150px"> <span
																	id="sum_style">대표 이미지</span>
																<!-- 삭제버튼 -->
																<span id="del_sum" class="chk_style"
																	onclick="del_sum();">x</span>
															</div>


															<div id="img_preview1">
																<input type="image" id="imgup_1" onclick="send_1();"
																	src="" width="150px" height="150px">
																<!-- 삭제버튼 -->
																<span id="del_img1" class="chk_style"
																	onclick="del_img1();">x</span>
															</div>

															<div id="img_preview2">
																<input type="image" id="imgup_2" onclick="send_2();"
																	src="" width="150px" height="150px"> <span
																	id="del_img2" class="chk_style" onclick="del_img2();">x</span>
															</div>
														</div>
													</td>
												</tr>
												<!-- 이미지영역끝 -->
												<tr>
													<td class="td1" align="left"><input type="button"
														id="imgup" onclick="img_preview();" value="대표 이미지 업로드"
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
												<br>
												<br>
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
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================= -->
				<div class="col-md-11 pl-1">
					<div class="submit_btn d-flex justify-content-end">
						<button type="button"
							class="btn btn-danger btn-col-md-4 mr-2 custom-font-size">취소</button>
						<button type="button"
							class="btn btn-default btn-col-md-4 mr-2 custom-font-size"
							onclick="location.href='${pageContext.request.contextPath}/company/class/register1'">이전</button>
						<button type="button"
							class="btn btn-default btn-col-md-4  custom-font-size"
							onclick="location.href='${pageContext.request.contextPath}/company/class/register3'">다음</button>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	
<script>
// -----------------------------------------
// 커리큘럼
// 일정 등록 모달창 내 체크박스 상태 업데이트 함수
function updateCheckboxValue(checkbox) {
  var label = document.querySelector('label[for="' + checkbox.id + '"]');
  if (checkbox.checked) {
      label.classList.add('checked');
  } else {
      label.classList.remove('checked');
  }
}

// 특정 요일을 가진 모든 날짜를 가져오는 함수
function getDatesBetweenDates(startDate, endDate, dayIndex) {
  var dates = [];
  var currentDate = new Date(startDate);
  currentDate.setHours(0, 0, 0, 0);
  endDate = new Date(endDate);
  endDate.setHours(0, 0, 0, 0);

  while (currentDate <= endDate) {
      if (currentDate.getDay() === dayIndex) {
          dates.push(new Date(currentDate));
      }
      currentDate.setDate(currentDate.getDate() + 1);
  }
  return dates;
}

// 요일 문자열을 인덱스로 변환하는 함수
function dayStringToIndex(dayString) {
  var daysMapping = {'월': 1, '화': 2, '수': 3, '목': 4, '금': 5, '토': 6, '일': 0};
  return daysMapping[dayString];
}

$(document).ready(function() {
  // 페이지 로딩 시 초기화 작업
  $('input[type="checkbox"]').each(function() {
      updateCheckboxValue(this);
  });

  // =============================

    // 현재 날짜를 YYYY-MM-DD 형식으로 가져옵니다.
    var today = new Date().toISOString().split('T')[0];

    // startDate, endDate의 min 속성 : 오늘t
    $('#startDate').attr('min', today);
    $('#endDate').attr('min', today);
	  
	  
 // =============================
  
  
  
  // '일정 등록' 버튼 클릭 이벤트 핸들러
  $('.btn-secondary').click(function() {
    // 모달창 표시 전에 실행할 코드

    // 모달창 표시
    $('#scheduleModal').modal('show');
  });

  // 모달이 열릴 때마다 내용을 초기화
  $('#scheduleModal').on('show.bs.modal', function () {
    // 입력 필드 초기화
    $('#startDate').val('');
    $('#endDate').val('');
    $('#startTime').val('');
    $('#endTime').val('');

    // 체크박스 초기화
    $('input[type="checkbox"]').each(function() {
      this.checked = false;
      updateCheckboxValue(this);
    });

    // 테이블 내용을 비우기
    $('#scheduleTable tbody').empty();
  });

  // '저장' 버튼 클릭 이벤트 핸들러
  $('#saveButton').click(function(event) {
    event.preventDefault();

    // 선택된 요일 추출
    var selectedDays = [];
    var daysMapping = {
      'mon_checkbox': '월',
      'tue_checkbox': '화',
      'wed_checkbox': '수',
      'thr_checkbox': '목',
      'fri_checkbox': '금',
      'sat_checkbox': '토',
      'sun_checkbox': '일'
    };

    $('input[type="checkbox"]:checked').each(function() {
      selectedDays.push(daysMapping[this.id]);
    });

    // 기타 입력값
    var startDate = $('#startDate').val();
    var endDate = $('#endDate').val();
    var startTime = $('#startTime').val();
    var endTime = $('#endTime').val();
    var maxParticipants = $('.modal_select select').val();

    // 입력값 검증
    if (selectedDays.length === 0 || !startDate || !endDate || !startTime || !endTime) {
      alert("모든 필드를 채워주세요.");
      return;
    }

    // 날짜 데이터 생성
    var dateData = [];
    selectedDays.forEach(function(day) {
      var dayIndex = dayStringToIndex(day);
      var dates = getDatesBetweenDates(startDate, endDate, dayIndex);
      dates.forEach(function(date) {
        dateData.push({
          day: day,
          date: date
        });
      });
    });

    // 날짜별로 정렬
    dateData.sort(function(a, b) {
      return a.date - b.date;
    });

    // 테이블에 행 추가
    dateData.forEach(function(item) {
      var formattedDate = item.date.toISOString().split('T')[0];
      var tableRow = '<tr>' +
                      '<td>' + item.day + '</td>' +
                      '<td>' + formattedDate + '</td>' +
                      '<td>' + startTime + ' ~ ' + endTime + '</td>' +
                      '<td>' + maxParticipants + '</td>' +
                      '</tr>';
      $('#scheduleTable tbody').append(tableRow);
    });

      // 모달 닫기
      $('.modal-backdrop').remove();
//       $('#scheduleModal').modal('hide');


      console.log("선택된 요일:>>>>>>>>>>>>>>>> " + selectedDays);
      console.log("시작 날짜: >>>>>>>>>>>>>>>>" + startDate);
      console.log("종료 날짜: >>>>>>>>>>>>>>>>" + endDate);
      console.log("시작 시간: >>>>>>>>>>>>>>>>" + startTime);
      console.log("종료 시간: >>>>>>>>>>>>>>>>" + endTime);
      console.log("최대 인원: >>>>>>>>>>>>>>>>" + maxParticipants);
  });
  
  
  
});
   //<!-- 이미지 추가버튼 스크립트 -->--------------------
	var preview_array  = [false, false, false];
	
	<!-- 이미지 등록시 미리보기 추가 작업 -->
	function img_preview() {

		for(var i=0; i<preview_array.length; i++){

// 			for(var i=0; i<preview_array.length; i++){
// 				if(i=[i]){
// 					if(preview_array[i]==false){
// 						send_[i]();
// 						return;
// 					}
// 				}
// 			}
			
			
			/* i가 0일때 */
			if(i==0){
				/* 0번사진 비어있으면 */
				if(preview_array[0]==false){
					/* 섬네일사진 */
					/* 0번사진 인풋태그 호출 */
					send_0();
					return;
				}
			}
			
			/* i가1일때 */
			if(i==1){
				/* 1번사진이 비어있으면 */
				if(preview_array[1]==false){
					/* 1번사진 인풋태그 호출 */
					send_1();
					return;
				}
			}
			
			/* i가 2일때 */
			if(i==2){
				/* 2번사진 비어있으면 */
				if(preview_array[2]==false){
					/* 2번사진 인풋태그 호출 */
					send_2();
					return;
				}
			}
			

		}/*  for end */
		
		alert("더이상 등록할 수 없습니다.");
		return;
		
	}/* 프리뷰 end */

//-----------------------------------------------------

//<!-- 이미지 장수 표현 함수 -->-----------------------
	function img_num() {
		var img_number = 0;
		
		for(var i=0; i<preview_array.length; i++ ){
			if(preview_array[i]==true){
				img_number++;
			}	
		}
		/* 이미지 장수 표시 */
		$("#img_number").html('('+ img_number + '/3)');
	}
	
	//-----------------------------------------------------------

	
	
	function send_0() {
		$("#sumimage").click();
	}
	
	$(function(){
		$("#sumimage").on('change',function(){
			if( $("#sumimage")[0].files[0]==undefined) {
				return;
			}
			imgcheck0(this);
			
		})
		
	});



//<!-- 이미지 미리보기 -->-----------------------------------

	function imgcheck0(input) {
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );

		$('#sumimage').val();
		
		if(check_array.indexOf(file_type)==-1){
			
			/* 사용자에게 알려주고 */
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#sumimage').val('');
			
			return;
		
		} 

		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
		        $('#imgup_sum').attr('src', e.target.result);
		        
		        $("#img_preview0").css("display","inline-block");
				$("#imgup_sum").show();
		        $("#del_sum").show();
		       
				preview_array[0] = true;
				
				/* 이미지넘버 변경 */
				img_num();
			
			
	        }
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	
	
	/* 1번사진 */
	
	function send_1() {
		$("#imageFile1").click();
	}
	
	$(function(){
		$("#imageFile1").on('change',function(){
			/* 파일선택 취소했을때 */
			if( $("#imageFile1")[0].files[0]==undefined) {
				return;
			}
			imgcheck1(this);
		})
		
	});
	
	function imgcheck1(input) {
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );

		
		if(check_array.indexOf(file_type)==-1){
			
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#imageFile1').val('');
			
			return;
		
		} 
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	        
	        	$('#imgup_1').attr('src', e.target.result);
	        	//배열에 트루값주기, 트루면 업로드 못함
	        
	        	$("#img_preview1").css("display","inline-block");
	        	$("#imgup_1").show();
	        	$("#del_img1").show();
	        	
	        	preview_array[1] = true;
				
	        	/* 이미지넘버 변경 */
	        	img_num();
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	/* 2번사진 */

	function send_2() {
		$("#imageFile2").click();
	}
	
	$(function(){
		$("#imageFile2").on('change',function(){
			/* 파일선택 취소했을때 */
			if( $("#imageFile2")[0].files[0]==undefined) {
				return;
			}
			imgcheck2(this);
		})
		
	});
	
	
	
	function imgcheck2(input) {
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );
		
		if(check_array.indexOf(file_type)==-1){
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#imageFile2').val('');
			
			return;
		
		} 
		
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
				$('#imgup_2').attr('src', e.target.result);
				
				 $("#img_preview2").css("display","inline-block");
				$("#imgup_2").show();
				$("#del_img2").show();
				
				preview_array[2] = true;
	        	/* 이미지넘버 변경 */
				img_num();
	       
	        }
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	//<!-- 이미지미리보기삭제 -->--------------------------------

	function del_sum() {
		/* alert('썸네일이미지 지움'); */
		/* 실제 DB에 들어가는 input value 지움 */
		$('#sumimage').val('');
		
      $("#img_preview0").css("display","none");
		$('#imgup_sum').hide();
		$("#del_sum").hide(); 
		
		/* 썸네일 비움 */
		preview_array[0] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}


	function del_img1() {
		/* alert('1번이미지 지움'); */
		
		$('#imageFile1').val('');
		
		$("#img_preview1").css("display","none");
		$('#imgup_1').hide();
		$("#del_img1").hide();
		
		/* 1번사진 비움 */
		preview_array[1] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}
	
	function del_img2() {
		/* alert('2번이미지 지움'); */
		
		$('#imageFile2').val('');
		
		$("#img_preview2").css("display","none");
		$('#imgup_2').hide();
		$("#del_img2").hide();
		
		/* 2번사진 비움 */
		preview_array[2] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}
  
</script>
</body>

</html>