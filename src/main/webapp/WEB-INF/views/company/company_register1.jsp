<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">
<%--   <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_assets/img/favicon.png"> --%>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 클래스 등록 - 기본 정보
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.css" rel="stylesheet" />
<style type="text/css">
body
{
  background-color:#f5f5f5;
}
.imagePreview {
    width: 100%;
    height: 180px;
    background-position: center center;
  background:url(http://cliquecities.com/assets/no-image-e3699ae23f866f6cbdf8ba2443ee5c4e.jpg);
  background-color:#fff;
    background-size: cover;
  background-repeat:no-repeat;
    display: inline-block;
  box-shadow:0px -3px 6px 2px rgba(0,0,0,0.2);
}
.btn-primary
{
  display:block;
  border-radius:0px;
  box-shadow:0px 4px 6px 2px rgba(0,0,0,0.2);
  margin-top:-5px;
}
.imgUp
{
  margin-bottom:15px;
}
.del
{
  position:absolute;
  top:0px;
  right:15px;
  width:30px;
  height:30px;
  text-align:center;
  line-height:30px;
  background-color:rgba(255,255,255,0.6);
  cursor:pointer;
}
.imgAdd
{
  width:30px;
  height:30px;
  border-radius:50%;
  background-color:#4bd7ef;
  color:#fff;
  box-shadow:0px 0px 2px 1px rgba(0,0,0,0.2);
  text-align:center;
  line-height:30px;
  margin-top:0px;
  cursor:pointer;
  font-size:15px;
}

.card label {
    font-size: 20px!important;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
// ---------------- 부트스트랩 이미지 업로드 
// $(".imgAdd").click(function(){
// 	  $(this).closest(".row").find('.imgAdd').before('<div class="col-sm-2 imgUp"><div class="imagePreview"></div><label class="btn btn-primary">Upload<input type="file" class="uploadFile img" value="Upload Photo" style="width:0px;height:0px;overflow:hidden;"></label><i class="fa fa-times del"></i></div>');
// 	});
// 	$(document).on("click", "i.del" , function() {
// 		$(this).parent().remove();
// 	});
// 	$(function() {
// 	    $(document).on("change",".uploadFile", function()
// 	    {
// 	    		var uploadFile = $(this);
// 	        var files = !!this.files ? this.files : [];
// 	        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
	 
// 	        if (/^image/.test( files[0].type)){ // only image file
// 	            var reader = new FileReader(); // instance of the FileReader
// 	            reader.readAsDataURL(files[0]); // read the local file
	 
// 	            reader.onloadend = function(){ // set image data as background of div
// 	                //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
// 	uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url("+this.result+")");
// 	            }
// 	        }
	      
// 	    });
// 	});
    
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
</script>
</head>
<body class="클래스 등록">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
            <jsp:include page="./sidebar_wrapper.jsp"/>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">클래스 등록</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="now-ui-icons ui-1_zoom-bold"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons media-2_sound-wave"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="now-ui-icons location_world"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
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
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-11">
            <div class="card">
              <div class="card-header">
                <h5 class="title">클래스 등록 - 기본 정보</h5>
              </div>
     		<form action="ClassRegisterPro" method="post" name="classRegisterForm">
              <div class="card-body">
                  <div class="row">
                    <div class="col-md-3 pr-1">
                      <div class="form-group">
                        <label>모집 유형</label>
                        <select class="form-control">
                        	<option>정규모집</option> 
                        	<option>원데이 클래스</option> 
                        </select>
<!--                         <input type="text" class="form-control" placeholder="Company" value="Creative Code Inc."> -->
                      </div>
                    </div>
                    <div class="col-md-3 pr-1">
                      <div class="form-group">
                        <label>클래스 대분류</label>
						<select class="form-control" name="interior_type" id="interior_type">
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
								<select class="form-control" name="sub_interior_type" id="sub_interior_type">
						      <option value="">소분류를 선택하세요</option>
						      <!-- 옵션은 JavaScript를 통해 동적으로 추가됩니다 -->
						    </select>
						  </div>
						</div>

<!--                     <div class="col-md-6 px-1"> / px: 패딩관련-->
                    <div class="col-md-8 pr-7">
                      <div class="form-group">
                        <label>클래스 타이틀</label>
                        <input type="text" class="form-control" placeholder="클래스 이름을 입력해 주세요" value="">
                      </div>
                    </div>

                  </div>
                  <div class="row">
                    <div class="col-md-8 pr-7">
                      <div class="form-group">
                        <label>대표 사진 등록</label>
<!--                         <input type="text" class="form-control" placeholder="Company" value="Mike"> -->
                        <!-- ========================================================================== -->
						<br>
						<div class="container">
						  <div class="row">
						  <div class="col-sm-5 imgUp">
						    <div class="imagePreview"></div>
						<label class="btn btn-primary">
						Upload<input type="file" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
						</label>
						  </div><!-- col-2 -->
						  <i class="fa fa-plus imgAdd"></i>
						 </div><!-- row -->
						</div><!-- container -->
                        <!-- ========================================================================== -->
                      </div>
                    </div>
                    <div class="col-md-6 pl-1">
                      <div class="form-group">
                        <label>&nbsp;&nbsp;&nbsp;기존 공방 주소</label>
				        <div class="col-sm-8">
				          <input type="radio" name="optradio" checked>  기존 공방 주소<br>
				        </div>
				        <div class="col-sm-8">
				          <input type="radio" name="optradio">  다른 주소 사용하기
				        </div>
                      </div>
                    <div class="col-md-12">
                      <div class="form-group">
                      	<br><br>
                        <label>클래스 소개문</label>
                        <textarea rows="4" cols="80" class="form-control" placeholder="내용을 입력해주세요" value="Mike"></textarea>
                      </div>
                    </div>
                    </div>
                     <div class="row">
                  </div>
                  </div>
              </div>
            </div>
            <button type="button" class="btn btn-danger">취소</button>
			<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/company/class/register2'">다음</button>
           </form>
          </div>
            </div>
          </div>
        </div>
      </div>
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
</body>

</html>