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
  
  <!-- 이미지 업로드 자바스크립트 -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 
 <style type="text/css">
input, select {
	border-radius: 10px !important; /* 원하는 반지름 값으로 설정 */
}

body {
	background-color: #f5f5f5;
}

.card label {
	font-size: 20px !important;
}

.form-control {
	height: 50px;
}

/* 이미지 미리보기 css */
#img_preview0, #img_preview1, #img_preview2, #img_preview3,
	#img_preview4, #img_preview5 {
	display: none;
	position: relative;
	margin: 5px;
	width: 150px;
	height: 150px;

	/* 		border: 2px solid black; */
}
/* 미리보기 삭제버튼 css */
#sum_style {
	text-align: center;
	width: 75px;
	height: 20spx;
	position: absolute;
	font-size: 12px;
	outline: none;
	border: none;
	border-radius: 15px;
	right: 70px;
	bottom: 130px;
	/* z-index:1; */
	background-color: rgba(0, 0, 0, 0.5);
	color: white;
}

.chk_style {
	vertical-align: middle;
	text-align: center;
	width: 28px;
	height: 28px;
	position: absolute;
	/* font-size:20px; */
	outline: none;
	border: none;
	border-radius: 18px;
	right: 9px;
	bottom: 115px;
	/* z-index:1; */
	background-color: rgba(0, 0, 0, 0.5);
	color: #ffcccc;
}

/* 미리보기 삭제 css */
#del_img1, #del_img2, #del_img3, #del_img4, #del_img5, #del_sum {
	cursor: pointer;
	display: none;
}

#imgup {
	margin-top: 5px;
}

/* 이미지 미리보기 css */
#imgup_1, #imgup_2, #imgup_3, #imgup_4, #imgup_5, #imgup_sum {
	cursor: pointer;
	display: none;
}

.input-tag:focus {
	outline: none;
	border: 1px solid black;
}

/* 테이블 간의 간격 */
td {
	width: 1020px;
	padding: 0.8em 1.4em 0.5em 0.8em;
}

.td1 {
	width: 20%;
	vertical-align: top;
}

.td2 {
	width: 80%;
}

#img_zone {
	/* background-color: black; */
	/* 		margin: auto;  */
	width: 100%;
	min-height: 50px;
	margin-bottom: 50px;
}

#img_intro {
	font-size: 16px;
	color: skyblue;
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

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5 !important;
}

.content {
	background-color: #fff !important;
}

.card label {
	color: #666A73 !important;
}

.form-control search {
	color: #000;
}

textarea.form-control {
	border-radius: 10px !important;
}
</style>
<link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

    // 셀렉트 박스
    document.addEventListener("DOMContentLoaded", function() {
      document.getElementById('interior_type').addEventListener('change', function() {
        var selectedType = this.value;
        var subInteriorSelect = document.getElementById('sub_interior_type');
        subInteriorSelect.innerHTML = ''; // 기존 옵션 초기화
        
        
    switch(selectedType) {
      case '1':
        subInteriorSelect.innerHTML = 
          `<option value="1">바닥재 시공</option>
           <option value="2">장판 시공</option>
           <option value="3">타일 시공</option>
           <option value="4">마루 시공</option>
           <option value="5">카페트 시공</option>`;
        break;
      case '2': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">도배 시공</option>
        	 <option value="2">칸막이 시공</option>
        	 <option value="3">페인트 시공</option>
        	 <option value="4">방음 시공</option>
        	 <option value="5">단열 필름 시공</option>`;
        break;
      case '3': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">샷시 설치 및 수리</option>
        	 <option value="2">화장실 리모델링</option>
        	 <option value="3">주방 리모델링</option>
        	 <option value="4">가구 리폼</option>
        	 <option value="5">붙박이장 시공</option>`;
        break;
      case '4': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">조경 공사</option>
        	 <option value="2">옥상 공사</option>
        	 <option value="3">지붕 공사</option>
        	 <option value="4">태양광 발전</option>
        	 <option value="5">외벽 리모델링</option>`;
        break;
      case '5': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">집 인테리어</option>
        	 <option value="2">상업공간 인테리어</option>
        	 <option value="3">주택 리모델링</option>
        	 <option value="4">집 수리</option>
        	 <option value="5">인테리어 소품</option>`;
        break;
      case '6': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">줄눈 시공</option>
        	 <option value="2">단열 시공</option>
        	 <option value="3">미장 시공</option>`;
        break;

      default:
        subInteriorSelect.innerHTML = '<option value="">소분류를 선택하세요</option>';
    }
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
	        reader.onload = function ㄹ(e) {
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
			<div class="content">
				<div class="row">
				<!--  본문 시작 -->
					<div class="col-md-11">
						<div class="card">
							<div class="card-header">
								<h5 class="title">클래스 등록 - 기본 정보</h5>
							</div>
							<form action="company/class/register2" method="post" enctype="multipart/form-data">
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
													<!-- 옵션은 JavaScript를 통해 동적으로 추가됩니다 -->
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
												<label>대표 사진 등록</label> <span class="pro_info"
													id="img_number">(0/3)</span>
												<div class="pic_instruction">
													- 사진은 대표 이미지 포함 최대 3장까지 첨부할 수 있습니다.<br>
													&nbsp;&nbsp;(1:1 비율 권장 / 최소 800px 이상 / 한 장당 최대 10MB)<br>
													- 등록된 사진은 공생 SNS, 광고 등 외부 채널에 클래스 홍보 목적으로 사용될 수 있습니다.<br>
												</div>
												<!-- ========================================================================== -->
												<!-- 파일업로드 용 폼 -->
												<!-- 	<form enctype="multipart/form-data" id="imgform" method="post"> -->
												<input type="file" id="sumimage" name="file1" style="display: none;" accept=".jpg, .jpeg, .png">
												<input type="file" id="imageFile1" name="file2" style="display: none;" accept=".jpg, .jpeg, .png">
												<input type="file" id="imageFile2" name="file3" style="display: none;" accept=".jpg, .jpeg, .png">
												<!-- 	</form> -->
												<table style="margin-top: 30px;">
													<tr>
														<td class="td2" align="left">
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
													<input type="radio" name="class_address"
														id="existingAddress" checked> 기존 공방 주소 출력하기 <br>
												</div>
												<div class="col-sm-8">
													<input type="radio" name="class_address" id="newAddress">
													다른 주소 사용하기
												</div>
											</div>
											<!-- 주소 입력 필드, 처음에는 숨겨져 있음 -->
											<div id="additionalAddress" style="display: none;">
												<div class="row">
													<div class="col-md-8 offset-md-1">
														<div class="form-group">
															<div class="row address-row">
																<div class="col-6">
																	<input class="form-control smaller-input" type="text"
																		name="post_code" id="postCode" required>
																</div>
																<div class="col-6">
																	<input class="form-control smaller-input btn-primary"
																		type="button" id="btnSearchAddress" value="주소검색">
																</div>
															</div>
															<br> <input class="form-control smaller-input" type="text" name="address1" id="address1"
																	placeholder="기본주소" required>  
																<br> 
																<input class="form-control smaller-input" type="text" name="address2" id="address2" 
																	placeholder="상세주소" required>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<br>
													<br> <label>클래스 소개문</label>
													<textarea rows="4" cols="80" class="form-control" name="class_introduction" placeholder="내용을 입력해주세요"> </textarea>
												</div>
											</div>
										</div>
										<div class="row"></div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-11 pl-1">
						<div class="submit_btn d-flex justify-content-end">
							<button type="button"
								class="btn btn-danger btn-col-md-4 mr-2 custom-font-size">취소</button>
							<button type="button" class="btn btn-default btn-col-md-4  custom-font-size"
								onclick="location.href='${pageContext.request.contextPath}/company/class/register2'">다음</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
		// 주소 검색 API 활용 기능 추가
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