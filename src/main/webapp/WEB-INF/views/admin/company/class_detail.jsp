<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <!--  -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   공생|관리자페이지 사업체
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
<%--   <link href="${pageContext.request.contextPath }/resources/admin_assets/css/member.css" rel="stylesheet" /> --%>
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/class.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/admin.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
<!--   <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet"> -->
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/class_detail.js"></script>
</head>

<body class="">
  <div class="wrapper ">
    <jsp:include page="../inc/admin_sidebar.jsp"/>
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
            <a class="navbar-brand title" href="#pablo">클래스관리</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <%-- search,홈페이지이동,채팅 --%>
          <div class="collapse navbar-collapse justwheny-content-end" id="navigation">
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
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#pablo"> -->
<!--                   <i class="now-ui-icons ui-1_calendar-60"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">달력</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--               </li> -->
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons ui-2_chat-round"></i>
                  <p>
                    <span class="d-lg-none d-md-block">채팅</span>
                  </p>
                </a>
              </li>
              <%-- 공생 메인 홈페이지로 이동 --%>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath }/">
                  <i class="now-ui-icons shopping_shop"></i>
                  <p>
                    <span class="d-lg-none d-md-block">공식 홈</span>
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
      <form action="/gongsaeng/admin/class/modifyPro" method="post" enctype="multipart/form-data">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">클래스 상세 정보</h5>
                <h4 style="font-size: 25px;]"> [ ${comClass.class_title } ] </h4>
              </div>
              <div class="card-body">
	             <table class="table table-bordered">
		             <colgroup>
		             	<col width="10%" />
	             		<col width="10%" />
	             		<col width="10%" />
	             		<col width="10%" />
	             		<col width="10%" />
	             		<col width="10%" />
	             		<col width="10%" />
	             		<col width="10%" />
		             </colgroup>
	             	<tr>
	             		<th>클래스번호</th>
	             		<td colspan="3">${comClass.class_idx}</td>
	             		<th>등록일자</th>
	             		<td colspan="3">${comClass.class_date }</td>
	             	</tr>
	             	<tr>
	             		<th>상호명</th>
	             		<td colspan="3">${comClass.com_name }</td>
	             		<th>반장아이디</th>
	             		<td colspan="3">${comClass.member_id }</td>
	             	</tr>
	             	<tr>
	             		<th>
	             		피신고건수
	             		<a class="more_info" href="${pageContext.request.contextPath }/admin/class/report?class_idx=${comClass.class_idx}">더보기</a>
	             		</th>
	             		<td colspan="3">
	             			<c:choose>
	             				<c:when test="${empty reportCount }">
	             					0 
	             				</c:when>
	             				<c:otherwise>
	             					${reportCount}
	             				</c:otherwise>
	             			</c:choose>
	             		건
	             		</td>
	             		<th>금액</th>
	             		<td colspan="3"><span id="price">${comClass.class_price }</span> 원</td>
					</tr>	
	             	<tr>
	             		<th>기간형태</th>
	             		<td colspan="3">
		             		<c:choose>
								<c:when test="${comClass.class_category eq 2 }">원데이</c:when>
								<c:when test="${comClass.class_category eq 1 }">
									정규모집&nbsp;(
									<c:choose>
										 <c:when test="${comClass.class_times eq 2 }">2</c:when>
										 <c:when test="${comClass.class_times eq 3 }">3</c:when>
										 <c:when test="${comClass.class_times eq 4 }">4</c:when>
										 <c:when test="${comClass.class_times eq 5 }">5</c:when>
										 <c:when test="${comClass.class_times eq 6 }">6</c:when>
										 <c:when test="${comClass.class_times eq 7 }">7</c:when>
										 <c:when test="${comClass.class_times eq 8 }">8</c:when>
										 <c:when test="${comClass.class_times eq 9 }">9</c:when>
										 <c:when test="${comClass.class_times eq 10 }">10</c:when>
				             		</c:choose>
									회차)
								</c:when>
		             		</c:choose>
						</td>
	             		<th>분류(대분류/소분류)</th>
	             		<td colspan="3">
		             		<c:choose>
								<c:when test="${comClass.class_main_category eq 1 }">
								바닥시공 / 
			             			<c:choose>
			             				 <c:when test="${comClass.class_sub_category eq 1 }">바닥재 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 2 }">장판 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 3 }">타일 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 4 }">마루 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 5 }">카페트 시공</c:when>
			             			</c:choose>
								</c:when>
								<c:when test="${comClass.class_main_category eq 2 }">
									벽/천장시공 / 
			             			<c:choose>
			             				 <c:when test="${comClass.class_sub_category eq 1 }">도배 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 2 }">칸막이 시공</c:when> 
										 <c:when test="${comClass.class_sub_category eq 3 }">페인트 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 4 }">방음 시공</c:when>
										 <c:when test="${comClass.class_sub_category eq 5 }">단열/필름 시공</c:when>
			             			</c:choose>
								</c:when>
								<c:when test="${comClass.class_main_category eq 3 }">
									부분 인테리어 / 
			             			<c:choose>
		             					 <c:when test="${comClass.class_sub_category eq 1 }">샷시 설치 및 수리</c:when>
										 <c:when test="${comClass.class_sub_category eq 2 }">화장실 리모델링</c:when>
										 <c:when test="${comClass.class_sub_category eq 3 }">주방 리모델링</c:when>
										 <c:when test="${comClass.class_sub_category eq 4 }">가구 리폼</c:when>
										 <c:when test="${comClass.class_sub_category eq 5 }">붙박이장 시공</c:when>
			             			</c:choose>
								</c:when>
								<c:when test="${comClass.class_main_category eq 4 }">
									야외 시공 / 
			             			<c:choose>
		             					 <c:when test="${comClass.class_sub_category eq 1 }">조경 공사</c:when>
										 <c:when test="${comClass.class_sub_category eq 2 }">옥상 공사</c:when>
										 <c:when test="${comClass.class_sub_category eq 3 }">지붕 공사</c:when>
										 <c:when test="${comClass.class_sub_category eq 4 }">태양광 발전</c:when>
										 <c:when test="${comClass.class_sub_category eq 5 }">외벽 리모델링</c:when>
			             			</c:choose>
								</c:when>
								<c:when test="${comClass.class_main_category eq 5 }">
									종합 인테리어 / 
			             			<c:choose>
				             			<c:when test="${comClass.class_sub_category eq 1 }">집 인테리어</c:when>
										<c:when test="${comClass.class_sub_category eq 2 }">상업공간 인테리어</c:when>
										<c:when test="${comClass.class_sub_category eq 3 }">주택 리모델링</c:when>
										<c:when test="${comClass.class_sub_category eq 4 }">집 수리</c:when>
										<c:when test="${comClass.class_sub_category eq 5 }">인테리어 소품</c:when>
			             			</c:choose>
								</c:when>
								<c:when test="${comClass.class_main_category eq 6 }">
									기타시공 / 
			             			<c:choose>
				             			<c:when test="${comClass.class_sub_category eq 1 }">줄눈 시공</c:when>
										<c:when test="${comClass.class_sub_category eq 2 }">단열 시공</c:when>
										<c:when test="${comClass.class_sub_category eq 3 }">미장 시공</c:when>
			             			</c:choose>
								</c:when>
		             		</c:choose>
	             		</td>
	             	</tr>
	             	<tr>
	             		<th>클래스 운영 기간</th>
	             		<td colspan="3">
							${comClass.class_start_date } &nbsp;~&nbsp; ${comClass.class_end_date }
						</td>
	             		<th>클래스 운영 시간</th>
	             		<td colspan="3">
							${comClass.class_start_time }  &nbsp;~&nbsp; ${comClass.class_end_time }
						</td>
	             	</tr>
	             	<tr>
	             		<th>클래스 운영 요일</th>
	             		<td colspan="3">
							${comClass.class_day }
						</td>
	             		<th>모집 최대 인원</th>
	             		<td colspan="3">${comClass.class_member_count } 명</td>
	             	</tr>
	             	<tr>
	             		<th>장소</th>
	             		<td colspan="7">${comClass.class_post_code }<br>${comClass.class_address1 }  ${comClass.class_address1 }</td>
	             		
	             	</tr>
	             	<tr>
	             		<th>클래스 소개</th>
	             		<td colspan="7">${comClass.class_introduction }</td>
					</tr>
	             	<tr>
	             		<th>기타 제공사항</th>
	             		<td colspan="7">
	             			<c:choose>
								<c:when test="${empty comClass.class_offering }">
									 미등록
								</c:when>
								<c:otherwise>
			             			${comClass.class_offering }
								</c:otherwise>
							</c:choose>
	             		</td>
					</tr>
	             	<tr>
	             		<th>추가 제공사항<br>및 유의사항</th>
	             		<td colspan="7">
	             			<c:choose>
								<c:when test="${empty comClass.class_caution }">
									 미등록
								</c:when>
								<c:otherwise>
				             		${comClass.class_caution }
								</c:otherwise>
							</c:choose>
	             		</td>
					</tr>
	             	<tr>
	             		<th>검색 태크</th>
	             		<td colspan="7">
	             			<c:choose>
								<c:when test="${empty comClass.class_tag }">
									 미등록
								</c:when>
								<c:otherwise>
									${comClass.class_tag }
								</c:otherwise>
							</c:choose>
	             		</td>
					</tr>
					<tr>
						<th>자주묻는 질문1</th>
						<td colspan="7">
							<c:choose>
								<c:when test="${empty comClass.class_question1 }">
									 미등록
								</c:when>
								<c:otherwise>
									Q : ${comClass.class_question1 } <br>
									A : ${comClass.class_answer1 }
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>자주묻는 질문2</th>
						<td colspan="7">
							<c:choose>
								<c:when test="${empty comClass.class_question2 }">
									 미등록
								</c:when>
								<c:otherwise>
									Q : ${comClass.class_question2 } <br>
									A : ${comClass.class_answer2 }
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>자주묻는 질문3</th>
						<td colspan="7">
							<c:choose>
								<c:when test="${empty comClass.class_question3 }">
									 미등록
								</c:when>
								<c:otherwise>
									Q : ${comClass.class_question3 } <br>
									A : ${comClass.class_answer3 }
								</c:otherwise>
							</c:choose>
						</td>
					</tr>	             	
	             	<tr height="100">
	             		<th>대표이미지</th>
	             		<td colspan="7">
	             			<div>
		             		<table style="width: 100%;">
		             			<colgroup>
		             				<col width="33%">
		             				<col width="33%">
		             				<col width="33%">
		             			</colgroup>
		             			<tr height="400" class="img_table">
				             		<td>
										<c:choose>
											<c:when test="${empty comClass.class_pic1}">
												<div id="img4">
												등록된 대표사진 없음
												</div>
											</c:when>
											<c:otherwise>
												<div id="img4">
													<img id="img4" alt="profile" name="pic1" src="${pageContext.request.contextPath }/resources/upload/${comClass.class_pic1}" class="reg_img">
												</div>
											</c:otherwise>
										</c:choose>
				             		</td>
				             		<td>
				             		 	<c:choose>
											<c:when test="${empty  comClass.class_pic2}">
												<div id="img5">
												등록된 대표사진 없음
												</div>
											</c:when>
											<c:otherwise>
												<div id="img5">
													<img id="img5" alt="profile" name="pic2" src="${pageContext.request.contextPath }/resources/upload/${comClass.class_pic2}">
												</div>
											</c:otherwise>
										</c:choose>
				             		</td>
				             		<td>
				             		 	<c:choose>
											<c:when test="${empty  comClass.class_pic3}">
												<div id="img6">
													등록된 대표사진 없음
												</div>
											</c:when>
											<c:otherwise>
												<div id="img6">
													<img id="img6" alt="profile" name="pic3" src="${pageContext.request.contextPath }/resources/upload/${comClass.class_pic3}">
												</div>
											</c:otherwise>
										</c:choose>
				             		</td>
		             			</tr>
		             			<tr>
				             		<td>
				             		 	<input type="file" name="file4" id="file4">
				             		 	<button type="button" class="btn btn_default" id="uploadPicBtn1">파일선택</button>
				             		 	<span id="pic1">
											<c:choose>
					             		 		<c:when test="${empty comClass.class_pic1}">
													파일명
					             		 		</c:when>
					             		 		<c:otherwise>
							             		 	${comClass.class_pic1}
					             		 		</c:otherwise>
					             		 	</c:choose>
				             		 	</span>
				             		</td>
				             		<td>
				             		 	<input type="file" name="file5"  id="file5">
				             		 	<button type="button" class="btn btn_default" id="uploadPicBtn2">파일선택</button>
				             		 	<span id="pic2">
											<c:choose>
					             		 		<c:when test="${empty comClass.class_pic2}">
													파일명
					             		 		</c:when>
					             		 		<c:otherwise>
							             		 	${comClass.class_pic2}
					             		 		</c:otherwise>
					             		 	</c:choose>				             		 	
				             		 	</span>
				             		</td>
				             		<td>
				             		 	<input type="file" name="file6"  id="file6">
				             		 	<button type="button" class="btn btn_default" id="uploadPicBtn3">파일선택</button>
				             		 	<span id="pic3">
											<c:choose>
					             		 		<c:when test="${empty comClass.class_pic3}">
													파일명
					             		 		</c:when>
					             		 		<c:otherwise>
							             		 	${comClass.class_pic3}
					             		 		</c:otherwise>
					             		 	</c:choose>
				             		 	</span>
				             		</td>
		             			</tr>
		             		</table>
	             		</div>
	             		</td>
	             	</tr>
	             	<tr>
	             		<th>커리큘럼<br>이미지/설명</th>
	             		<td colspan="7">
	             		<div>
		             		<table style="width: 100%;">
		             			<colgroup>
		             				<col width="33%">
		             				<col width="33%">
		             				<col width="33%">
		             			</colgroup>
		             			<tr height="400" class="img_table">
				             		<td>
										<c:choose>
											<c:when test="${empty comClass.class_curriculum1}">
												<div id="img1" name="class_curriculum1">
												등록된 커리큘럼사진 없음
												</div>
											</c:when>
											<c:otherwise>
												<div id="img1">
													<img id="img1" name="class_curriculum1" alt="profile" src="${pageContext.request.contextPath }/resources/upload/${comClass.class_curriculum1}">
												</div>
											</c:otherwise>
										</c:choose>
				             		</td>
				             		<td>
				             		 	<c:choose>
											<c:when test="${empty  comClass.class_curriculum2}">
												<div id="img2" name="class_curriculum2">
												등록된 커리큘럼사진 없음
												</div>
											</c:when>
											<c:otherwise>
												<div id="img2">
													<img id="img2" name="class_curriculum2" alt="profile" src="${pageContext.request.contextPath }/resources/upload/${comClass.class_curriculum2}">
												</div>
											</c:otherwise>
										</c:choose>
				             		</td>
				             		<td>
				             		 	<c:choose>
											<c:when test="${empty  comClass.class_curriculum3}">
												<div id="img3" name="class_curriculum3">
													등록된 커리큘럼사진 없음
												</div>
											</c:when>
											<c:otherwise>
												<div id="img3">
													<img id="img3" name="class_curriculum3" alt="profile" src="${pageContext.request.contextPath }/resources/upload/${comClass.class_curriculum3}">
												</div>
											</c:otherwise>
										</c:choose>
				             		</td>
		             			</tr>
		             			<tr>
				             		<td>
				             		 	<input type="file"  name="file1" id="file1">
				             		 	<button type="button" class="btn btn_default" id="uploadCurriculumBtn1">파일선택</button>
				             		 	<span id="curriculum1">
											<c:choose>
					             		 		<c:when test="${empty comClass.class_curriculum1}">
													파일명
					             		 		</c:when>
					             		 		<c:otherwise>
							             		 	${comClass.class_curriculum1}
					             		 		</c:otherwise>
					             		 	</c:choose>
										</span>
				             		</td>
				             		<td>
				             		 	<input type="file" name="file2" id="file2">
				             		 	<button type="button" class="btn btn_default" id="uploadCurriculumBtn2">파일선택</button>
				             		 	<span id="curriculum2">
					             		 	<c:choose>
					             		 		<c:when test="${empty comClass.class_curriculum2}">
													파일명
					             		 		</c:when>
					             		 		<c:otherwise>
							             		 	${comClass.class_curriculum2}
					             		 		</c:otherwise>
					             		 	 </c:choose>
				             		 	</span>
				             		</td>
				             		<td>
				             		 	<input type="file" name="file3" id="file3">
				             		 	<button type="button" class="btn btn_default" id="uploadCurriculumBtn3">파일선택</button>
				             		 	<span id="curriculum3">
				             		 		<c:choose>
					             		 		<c:when test="${empty comClass.class_curriculum3}">
													파일명
					             		 		</c:when>
					             		 		<c:otherwise>
							             		 	${comClass.class_curriculum3}
					             		 		</c:otherwise>
					             		 	 </c:choose>
				             		 	</span>
				             		</td>
		             			</tr>
		             			<tr>
		             				<td>${comClass.class_curriculum_detail1 }</td>
		             				<td>${comClass.class_curriculum_detail2 }</td>
		             				<td>${comClass.class_curriculum_detail3 }</td>
		             			</tr>
		             		</table>
	             			</div>
	             		</td>
	             	</tr>
					<tr>
	             		<th colspan="4">
	             			<div  style="display: inline;">
	             			리뷰정보 
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/class/review?class_idx=${comClass.class_idx}">더보기</a>
	             			</div>
	             		</th>
	             		<th colspan="4">
	             			<div  style="display: inline;">
	             			예약정보 
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/class/reservation?class_idx=${comClass.class_idx}">더보기</a>
	             			</div>
	             		</th>
	             	</tr>
					<tr>
						<th class="detail_table">금월 리뷰 수</th>
						<th class="detail_table">누적 리뷰 수</th>
						
						<th class="detail_table">금월 추천 수</th>
						<th class="detail_table">누적 추천 수</th>
						
						<th class="detail_table">금월 예약 수</th>
						<th class="detail_table">누적 예약 수</th>
						
						<th class="detail_table">금월 예약취소 수</th>
						<th class="detail_table">누적 예약취소 수</th>
					</tr>             	
	             	<tr>
	             		<td>${reviewCount.reviewMonth} 건</td>
	             		<td>${reviewCount.reviewTotal} 건</td>
	             		
	             		<td>${reviewCount.monthlyLike} 건</td>
	             		<td>${reviewCount.totalLike} 건</td>
	             		
	             		<td>${resCount.monthlyRes} 건</td>
	             		<td>${resCount.totalRes} 건</td>
	             		
	             		<td>${resCount.monthlyResCan} 건</td>
	             		<td>${resCount.totalResCan} 건</td>
					</tr>    
	             </table>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-12 btn_bottom">
	        	<button type="button" class="btn btn_default"onclick="location.replace('${pageContext.request.contextPath }/admin/company/class')">목록</button>&nbsp;&nbsp;
	        	<button type="submit" class="btn btn_default" id="modifyClass">변경저장</button>
        	</div>
        </div>
      </form>
      </div>
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
     </footer>
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
  <!--  Notwhenications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notwheny.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>


</body>

</html>