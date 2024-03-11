<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
<!-- favicon  -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 클래스 내역
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
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
 
body {
	background: #f5f5f5; 
	/*     margin-top:20px; */
}


.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #DCDCDC!important;
	
}
.avatar-md {
    height: 5rem;
    width: 5rem;
}

.fs-19 {
    font-size: 19px;
}

.primary-link {
    color: #314047;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
}

a {
    color: #02af74;
    text-decoration: none;
}

.bookmark-post .favorite-icon a, .job-box.bookmark-post .favorite-icon a {
    background-color: #da3746;
    color: #fff;
    border-color: danger;
}
.favorite-icon a {
    display: inline-block;
    width: 30px;
    height: 30px;
    font-size: 18px;
    line-height: 30px;
    text-align: center;
    border: 1px solid #eff0f2;
    border-radius: 6px;
    color: rgba(173,181,189,.55);
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
}

.candidate-list-box .favorite-icon {
    position: absolute;
    right: 22px;
    top: 22px;
}
.fs-14 {
    font-size: 14px;
}
.bg-soft-secondary {
    background-color: rgba(116,120,141,.15)!important;
    color: #74788d!important;
}

.mt-1 {
    margin-top: 0.25rem!important;
}

.content {
	background-color: #fff!important;
}

.avatar-lg {
/*   width: 200px!important; */
/*   height: 200px!important; */
}



#pageList {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px 0;
}

#pageList input[type="button"] {
    background-color: #fff;
    color: #B4B4B4;
    border: none;
    cursor: pointer;
    padding: 10px 20px;
    margin: 0 10px;
    transition: background-color 0.3s;
}

#pageList input[type="button"]:disabled {
    background-color: #fff;
    color: #B4B4B4;
    cursor: not-allowed;
}

#pageList b,
#pageList a {
    color: #333;
    font-size: 1.2em;
    margin: 0 10px;
    
}

#pageList a {
    text-decoration: none;
    color: #B4B4B4;
}

#pageList a:hover {
    color: light-gray;
}

/* 클래스 진행 여부 */
.status-label {
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    display: inline-block;
}

.status-ongoing {
    background-color: #28a745!important; /* 진행 중 */
    margin-bottom: 10px;
}

.status-upcoming {
    background-color: #ffc107!important; /* 진행 예정 */
    margin-bottom: 10px;
}

.status-finished {
    background-color: #dc3545!important; /* 종료 */
    margin-bottom: 10px;
}

.delete-btn {
	margin-top: 10px;
}

.list-inline-item {
    width: 100%; /* 너비를 전체로 설정 */
    display: block; /* 블록 레벨 요소로 만들어 줄바꿈이 일어나게 함 */
}

    .button-container {
        align-items: center; /* 버튼들을 수직 중앙에 정렬합니다. */
    }

    .button-container a, .button-container input[type="button"] {
        display: inline-block; 
        text-decoration: none; 
    }

.delete-btn {
	margin-left: 7px;
}

.primary-link {
    display: inline-block; /* 링크가 인라인 블록 요소처럼 동작하도록 설정 */
    white-space: nowrap; /* 텍스트가 줄바꿈되지 않도록 설정 */
    overflow: visible; /* 컨텐츠가 넘쳐도 숨기지 않고 표시 */
    text-overflow: clip; /* 컨텐츠가 넘칠 때 잘리게 함 */
}

    .avatar-lg {
        width: 150px; /* 이미지의 너비 */
        height: 150px; /* 이미지의 높이 */
        border-radius: 10%; /* 이미지의 모서리를 둥글게 */
    }

</style>
<!-- Global CSS -->
<link
	href="${pageContext.request.contextPath }/resources/css/global.css"
	rel="stylesheet" />    
</head>

<body>
    <div class="sidebar" data-color="orange">
       <jsp:include page="./sidebar_wrapper.jsp"/>
    </div>
    <div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">클래스 내역</a>
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
      	<%-- 페이지네이션 - pageNum 파라미터 가져와서 저장(없을 경우 기본값 1로 설정) --%>
<%-- 	<c:set var="pageNum" value="1" /> --%>
<%-- 	<c:if test="${not empty param.pageNum }"> --%>
<%-- 		<c:set var="pageNum" value="${param.pageNum }" /> --%>
<%-- 	</c:if> --%>
      <div class="panel-header">
        <div class="header text-center">
          <h2 class="title">클래스 내역</h2>
<!--           <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p> -->
        </div>
      </div>
      <!-- 컨텐츠 지워야함! -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
		<section class="section">
			<div class="container">
				<div class="justify-content-center row">
					<div class="col-lg-12">
						<div class="candidate-list-widgets mb-4">
							<form action="#" class>
<!-- 								<div class="g-2 row"> -->
									<div class="justify-content-center row">
									<div class="col-lg-5 mt-3">
											<!-- 체크박스 필터링 -->
										<label class="checkbox_1">클래스 진행 여부</label><br>
										<input type="checkbox" name="status" value="클래스 진행 예정" id="upcoming"> <label for="upcoming">클래스 진행 예정</label>
										<input type="checkbox" name="status" value="클래스 진행중" id="ongoing"> <label for="ongoing">클래스 진행중</label>
										<input type="checkbox" name="status" value="클래스 종료" id="finished"> <label for="finished">클래스 종료</label>
									</div>
									<div class="col-lg-5 mt-3">
										<div class="filler-job-form">
											<i class="uil uil-location-point"></i> 
											<label class="checkbox_1">클래스 유형</label><br>
										    <input type="checkbox" name="class_category" value="정규모집" id="regular"> <label for="regular">정규모집</label>
    										<input type="checkbox" name="class_category" value="원데이 클래스" id="oneday"> <label for="oneday">원데이 클래스</label>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="class_btn"></div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="align-items-center row">
							<div class="col-lg-8">
								<div class="mb-3 mb-lg-0">
<!-- 									<h6 class="fs-16 mb-0">Showing 1 – 8 of 11 results</h6> -->
								</div>
							</div>
							<div class="col-lg-4">
								<div class="candidate-list-widgets">
									<div class="row">
										<div class="col-lg-6">
											<div class="selection-widget"></div>
										</div>
										<div class="col-lg-6">
											<div class="selection-widget mt-2 mt-lg-0">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ==================================================================================== -->
						<c:forEach items="${classList}" var="classInfo">
							<div class="candidate-list">
						        <div class="class-item candidate-list-box card mt-4" 
						             data-status="${classInfo.status}" 
						             data-category="${classInfo.class_category}">
						               
						            <div class="p-4 card-body">
										<div class="align-items-center row">
<!-- 											<div class="col-lg-2"> -->
											<div class="col-auto">
											    <div class="candidate-list-images">
											        <a href="#"> 
											            <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_pic1}" alt="Class Image" class="avatar-lg img-thumbnail rounded-circle" />
											        </a>
											    </div>
											</div>
											<div class="col-lg-5">
												<div class="candidate-list-content mt-3 mt-lg-0 col-lg-12" >
													<span class="status-label ${classInfo.status == '클래스 진행중' ? 'status-ongoing' : classInfo.status == '클래스 진행 예정' ? 'status-upcoming' : 'status-finished'}">
											        	${classInfo.status}
											        </span><br>
													<h5 class="fs-19 mb-0">
														<p class="text-muted mb-2">
						                                <c:choose>
						                                    <c:when test="${classInfo.class_category == 1}">
						                                        정규모집
						                                    </c:when>
						                                    <c:when test="${classInfo.class_category == 2}">
						                                        원데이 클래스
						                                    </c:when>
						                                    <c:otherwise>
						                                        기타
						                                    </c:otherwise>
						                                </c:choose>
														</p>
														<a class="primary-link" href="classModifyForm?class_idx=${classInfo.class_idx}">${classInfo.class_title}</a>
													</h5>
													<p class="text-muted mb-2 pt-1">
													<c:choose>
															<c:when test="${classInfo.class_main_category eq 1}">바닥 시공 &gt;
																<c:if test="${classInfo.class_sub_category eq 1}">바닥재 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 2}">장판 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 3}">타일 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 4}">마루 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 5}">카페트 시공</c:if>
															</c:when>
															<c:when test="${classInfo.class_main_category eq 2}">벽/천장 시공 &gt;
																<c:if test="${classInfo.class_sub_category eq 1}">도배 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 2}">칸막이 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 3}">페인트 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 4}">방음 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 5}">단열 필름 시공</c:if>
															</c:when>
															<c:when test="${classInfo.class_main_category eq 3}">부분 인테리어 &gt;
																<c:if test="${classInfo.class_sub_category eq 1}">샷시 설치 및 수리</c:if>
																<c:if test="${classInfo.class_sub_category eq 2}">화장실 리모델링</c:if>
																<c:if test="${classInfo.class_sub_category eq 3}">주방 리모델링</c:if>
																<c:if test="${classInfo.class_sub_category eq 4}">가구 리폼</c:if>
																<c:if test="${classInfo.class_sub_category eq 5}">붙박이장 시공</c:if>
															</c:when>
															<c:when test="${classInfo.class_main_category eq 4}">야외 시공 &gt;
																<c:if test="${classInfo.class_sub_category eq 1}">조경 공사</c:if>
																<c:if test="${classInfo.class_sub_category eq 2}">옥상 공사</c:if>
																<c:if test="${classInfo.class_sub_category eq 3}">지붕 공사</c:if>
																<c:if test="${classInfo.class_sub_category eq 4}">태양광 발전</c:if>
																<c:if test="${classInfo.class_sub_category eq 5}">외벽 리모델링</c:if>
															</c:when>
															<c:when test="${classInfo.class_main_category eq 5}">종합 인테리어 &gt;
																<c:if test="${classInfo.class_sub_category eq 1}">집 인테리어</c:if>
																<c:if test="${classInfo.class_sub_category eq 2}">상업공간 인테리어</c:if>
																<c:if test="${classInfo.class_sub_category eq 3}">주택 리모델링</c:if>
																<c:if test="${classInfo.class_sub_category eq 4}">집 수리</c:if>
																<c:if test="${classInfo.class_sub_category eq 5}">인테리어 소품</c:if>
															</c:when>
															<c:when test="${classInfo.class_main_category eq 6}">기타 시공 &gt;
																<c:if test="${classInfo.class_sub_category eq 1}">줄눈 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 2}">단열 시공</c:if>
																<c:if test="${classInfo.class_sub_category eq 3}">미장 시공</c:if>
															</c:when>
															<c:otherwise>
																알수없음
															</c:otherwise>
														</c:choose>
													</p>
													<ul class="list-inline mb-0 text-muted">
														<li class="list-inline-item">
														<i class="mdi mdi-map-marker"></i>
															${classInfo.class_address1}
															${classInfo.class_address2}
														</li>
														<br>
														<li class="list-inline-item">
															<i class="fa fa-clock-o" style="font-size:18px"></i>  
															 ${classInfo.class_start_date} ~ ${classInfo.class_end_date}&nbsp;&nbsp;
															 |&nbsp;&nbsp;
															 <i class="mdi mdi-wallet"></i> 
															 <fmt:formatNumber value="${classInfo.class_price}" type="number" pattern="#,##0" />원
														</li>
													</ul>
												 <div class="button-container">
						                            <c:if test="${classInfo.status != '클래스 종료'}">
					                                    <a class="primary-link" href="classModifyForm?class_idx=${classInfo.class_idx}">
				                                     	   <input type="button" value="클래스 수정" class="modify-btn">
					                                    </a>
						                             </c:if>
						                                   <input type="button" value="클래스 삭제" class="delete-btn" data-pay-num="${classInfo.class_idx}">
						                          </div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					
			         <!-- 바텀 -->
			      <footer class="footer">
			       <jsp:include page="../inc/admin_bottom.jsp"/>
			     </footer>
					</div>
  <!--   Core JS Files   -->
  <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
   <script type="text/javascript">
  document.addEventListener('DOMContentLoaded', function() {
	    var deleteButtons = document.querySelectorAll('.delete-btn');
	    deleteButtons.forEach(function(button) {
	        button.addEventListener('click', function() {
	            var class_idx = this.getAttribute('data-pay-num'); // 'class_idx' 변수 정의 수정
	            if (confirm('해당 클래스를 삭제하시겠습니까?')) {
	                // AJAX 요청으로 서버에 삭제를 요청
	                $.ajax({
	                    url: '${pageContext.request.contextPath}/company/deleteClass', // 서버의 URL 주소
	                    type: 'POST', // HTTP 요청 방식
	                    data: { 'class_idx': class_idx }, // 수정: 'class_idx' 값을 정확히 전달
	                    success: function(response) {
	                        // 성공 시 페이지 리로드 또는 DOM 조작을 통해 화면에서 해당 항목 제거
	                        alert('클래스 삭제가 완료되었습니다.')
	                        location.reload(); // 페이지 리로드로 간단히 처리
	                    },
	                    error: function(xhr, status, error) {
	                        // 실패 시 오류 처리
	                        alert('삭제 처리 중 오류가 발생했습니다.');
	                    }
	                });
	            }
	        });
	    });    
	});
  
	function printDays(class_day) {
	    var days = ['월', '화', '수', '목', '금', '토', '일'];
	    var classDays = '';
	
	    for (var i = 0; i < class_day.length; i++) {
	        if (class_day[i] === '1') {
	            classDays += days[i];
	        }
	    }
	
	    // 결과를 <h2> 태그에 출력합니다.
	    document.getElementById('classDays').textContent = "요일 : " + classDays;
	}
  
  $(document).ready(function() {
	    // 체크박스 상태 변경 시 클래스 목록을 필터링하는 함수
	    function filterClasses() {
	        // 선택된 클래스 상태 필터링
	        var selectedStatuses = $('input[type="checkbox"][name="status"]:checked').map(function() {
	            return $(this).val();
	        }).get();

	        // 선택된 클래스 유형 필터링
	        var selectedCategories = $('input[type="checkbox"][name="class_category"]:checked').map(function() {
	            // 정규모집 체크박스는 '1', 원데이 클래스 체크박스는 '2' 값을 반환
	            return $(this).attr('id') === 'regular' ? '1' : '2';
	        }).get();

	        // 모든 클래스 항목에 대해 반복하며 필터링 조건과 비교
	        $('.class-item').each(function() {
	            var itemStatus = $(this).data('status');
	            var itemCategory = $(this).data('category').toString();
	            var isStatusMatch = selectedStatuses.length === 0 || selectedStatuses.includes(itemStatus);
	            var isCategoryMatch = selectedCategories.length === 0 || selectedCategories.includes(itemCategory);

	            if (isStatusMatch && isCategoryMatch) {
	                $(this).show();
	            } else {
	                $(this).hide();
	            }
	        });
	    }

	    // 'status' 및 'class_category' 체크박스의 상태가 변경될 때마다 filterClasses 함수 호출
	    $('input[type="checkbox"][name="status"], input[type="checkbox"][name="class_category"]').change(filterClasses);

	    // 페이지 로드 시 필터링 초기화
	    filterClasses();
	    
	});


  </script>

</body>

</html>