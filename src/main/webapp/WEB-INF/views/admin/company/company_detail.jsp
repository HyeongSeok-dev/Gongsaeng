<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <!--  -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   공생|관리자페이지 사업체
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>  
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/admin.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/company_detail.js"></script>
	
<!-- 다음 주소검색 API 사용을 위한 라이브러리 추가 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>

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
            <a class="navbar-brand title" href="#pablo">사업체관리</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <%-- search,홈페이지이동,채팅 --%>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
<!--             <form> -->
<!--               <div class="input-group no-border"> -->
<!--                 <input type="text" value="" class="form-control" placeholder="Search..."> -->
<!--                 <div class="input-group-append"> -->
<!--                   <div class="input-group-text"> -->
<!--                     <i class="now-ui-icons ui-1_zoom-bold"></i> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </form> -->
            <ul class="navbar-nav">
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#pablo"> -->
<!--                   <i class="now-ui-icons ui-1_calendar-60"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">달력</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#pablo"> -->
<!--                   <i class="now-ui-icons ui-2_chat-round"></i> -->
<!--                   <p> -->
<!--                     <span class="d-lg-none d-md-block">채팅</span> -->
<!--                   </p> -->
<!--                 </a> -->
<!--               </li> -->
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
<!--    	<form action="/gongsaeng/admin/company/modifyPro" name="comModifyPro" method="post" enctype="multipart/form-data"> -->
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">${com.com_name } 상세 정보</h5>
<%--                 <div>사업체 번호 : ${ }</div> --%>
              </div>
              <div class="card-body">
              	<div class="text_center">
					<c:choose>
						<c:when test="${empty com.com_img}">
							<div id="img">
								<img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" 
								class="img-circle img-thumbnail">
							</div>
						</c:when>
						<c:otherwise>
							<div id="img">
								<img id="img" alt="profile" src="${pageContext.request.contextPath }/resources/upload/${com.com_img}"
									class="img-circle img-thumbnail">
							</div>
						</c:otherwise>
					</c:choose>
					<input type="file" id="file1" class="form-control profileImg" name="file1" accept="image/*">
					<div class="profileImg" >
   	       		 		<br>
	           		 	<c:choose>
							<c:when test="${empty com.com_img}">
		    	       		 	<button type="button" id="uploadFileBtn" class="btn btn_default">파일선택</button>
			           		 	<span id="fileLabel">파일명</span>
							</c:when>
							<c:otherwise>
		    	       		 	<button type="button" id="uploadFileBtn" class="btn btn_default">파일선택</button>
			           		 	<span id="fileLabel">${com.com_img}</span>
							</c:otherwise>
						</c:choose>
					</div>
           		 </div>
              	 <br>
	             <table class="table table-bordered">
	             	<colgroup>
	             		<col width="25%"/>
	             		<col width="25%"/>
	             		<col width="25%"/>
	             		<col width="25%"/>
	             	</colgroup>
	             	<tr>
<!-- 	             		<th>사업체번호</th> -->
<!-- 	             		<td>사업체번호</td> -->
	             		<th>반장아이디</th>
	             		<td colspan="3">${com.member_id }</td>
	             	</tr>
	             	<tr>
	             		<th>등록/폐업일자</th>
	             		<td colspan="3">
	             			${com.com_date }
	             			&nbsp;
	             			<c:choose>
								<c:when test="${com.com_status eq 3}">
									[ 폐업 ]<input type="hidden" value="${com.com_status}" id="com_statusHidden" name="com_status">
								</c:when>
								<c:otherwise>
			             			<select name="com_status" id="com_statusSelect">
										<option value="1" <c:if test="${com.com_status eq 1}">selected</c:if>>정상(승인)</option>
										<option value="2" <c:if test="${com.com_status eq 2}">selected</c:if> disabled>승인대기</option>
										<option value="3" <c:if test="${com.com_status eq 3}">selected</c:if> disabled>영업중지</option>
										<option value="4" <c:if test="${com.com_status eq 4}">selected</c:if>>보류</option>
										<option value="5" <c:if test="${com.com_status eq 5}">selected</c:if>>승인거부</option>
									</select>
								</c:otherwise>
	             			</c:choose>
	             		</td>
	             	</tr>
	             	<tr>
	             		<th>카테고리</th>
	             		<td colspan="3">
	             			<c:if test="${com.com_category eq 1}">바닥 시공</c:if>&nbsp;&nbsp;
							<c:if test="${com.com_category eq 2}">변/천장 시공</c:if>&nbsp;&nbsp;
							<c:if test="${com.com_category eq 3}">부분 인테리어</c:if>&nbsp;&nbsp;
							<c:if test="${com.com_category eq 4}">야외 시공</c:if>&nbsp;&nbsp;
							<c:if test="${com.com_category eq 5}">종합 인테리어</c:if>&nbsp;&nbsp;
							<c:if test="${com.com_category eq 6}">기타 홈 인테리어</c:if>&nbsp;&nbsp;
						</td>
					</tr>
	             	<tr>
						<th>전화번호</th>
	             		<td colspan="3">
							${com.com_tel }
						</td>
	             	</tr>
	             	<tr>
	             		<th>주소</th>
	             		<td colspan="3">
	             			<input type="text" class="margin_5px" name="com_post_code" id="postCode" value="${com.com_post_code}">&nbsp;<button type="button" class="btn btn_default" id="btnSearchAddress" >주소검색</button><br>
	             			<input type="text" class="margin_5px address" name="com_address1" id="com_address1" value="${com.com_address1}">&nbsp;
	             			<input type="text" class="margin_5px address" name="com_address2" id="com_address2" value="${com.com_address2 }">
	             		</td>
	             	</tr>
	             	<tr>
	             		<th>계좌번호</th>
	             		<td colspan="3">
	             			<span>${com.com_bank }</span>
	             			<span>${com.com_account}</span>
	             		</td>
					</tr>
						             	
					<tr>
	             		<th rowspan="2">
	             			환급금<br>
	             		 	<a class="more_info" href="${pageContext.request.contextPath }/admin/company/refund/member?com_idx=${com.com_idx}&member_id=${com.member_id}">더보기</a>
	             		</th>
						<th class="detail_table">환급가능금액</th>
						<th class="detail_table">금월 환급금</th>
						<th class="detail_table">누적 환급금</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			<c:choose>
								<c:when test="${empty refund.refSum }">
									0
								</c:when>
								<c:otherwise>
			             			${refund.refSum } 
								</c:otherwise>
	             			</c:choose>
	             			 원
	             		</td>
	             		<td>
	             			<c:choose>
								<c:when test="${empty refund.monthlyRef }">
									0
								</c:when>
								<c:otherwise>
			             			${refund.monthlyRef } 
								</c:otherwise>
	             			</c:choose>
	             			 원
	             		</td>
	             		<td>
	             			<c:choose>
								<c:when test="${empty refund.totalRef }">
									0
								</c:when>
								<c:otherwise>
			             			${refund.totalRef } 
								</c:otherwise>
	             			</c:choose>
	             			 원
	             		</td>
					</tr>
					    
					<tr>
	             		<th rowspan="2">
		             		등록클래스 수<br>
		             		<a class="more_info" href="${pageContext.request.contextPath }/admin/member/class?member_id=${com.member_id}">더보기</a>
	             		</th>
						<th class="detail_table">총</th>
						<th class="detail_table">원데이</th>
						<th class="detail_table">정기</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			${regClass.totalClass } 건
	             		</td>
	             		<td>
	             			${regClass.oneDayClass } 건
	             		</td>
	             		<td>
	             			${regClass.regularClass } 건
	             		</td>
					</tr>    
					    
					<tr>
	             		<th rowspan="2">
	             			클래스 예약건 수<br>
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/company/reservation?member_id=${com.member_id}">더보기</a>
	             		</th>
						<th class="detail_table">총</th>
						<th class="detail_table">원데이</th>
						<th class="detail_table">정기</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			금월 ${regPay.monthlyRes } 건 / 누적 ${regPay.totalRes } 건
	             		</td>
	             		<td>
	             			금월 ${regPay.monthlyOneRes } 건 / 누적 ${regPay.totalOneRes } 건
	             		</td>
	             		<td>
	             			금월 ${regPay.monthlyRegularRes } 건 / 누적 ${regPay.totalRegularRes } 건
	             		</td>
					</tr>    
					    
					    <!-- 클래스 상세로?? -->
<!-- 					<tr> -->
<!-- 	             		<th rowspan="2"> -->
<!-- 	             			리뷰 수<br> -->
<%-- 	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/company/review?member_id=${com.member_id}">더보기</a> --%>
<!-- 	             		</th> -->
<!-- 						<th class="detail_table">평균 별점</th> -->
<!-- 						<th class="detail_table">금월 추천 수</th> -->
<!-- 						<th class="detail_table">누적 추천 수</th> -->
<!-- 					</tr>             	 -->
<!-- 	             	<tr> -->
<!-- 	             		<td> -->
<!-- 	             			0 점 -->
<!-- 	             		</td> -->
<!-- 	             		<td> -->
<!-- 	             			0 건 -->
<!-- 	             		</td> -->
<!-- 	             		<td> -->
<!-- 	             			0 건 -->
<!-- 	             		</td> -->
<!-- 					</tr>     -->
					
					<tr>
	             		<th rowspan="2">
	             			피신고건 수<br>
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/report/class?member_id${com.member_id}">더보기</a>
	             		</th>
						<th class="detail_table">전월</th>
						<th class="detail_table">금월</th>
						<th class="detail_table">누적</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			${reportCount.reportBeforCount } 건
	             		</td>
	             		<td>
	             			${reportCount.reportMonthlyCount } 건
	             		</td>
	             		<td>
	             			${reportCount.reportCount } 건
	             		</td>
					</tr>    
	             </table>	 	
              </div>
            </div>
          </div>
        </div>
        <input type="hidden" name="member_id" value="${com.member_id }">
        <div class="row">
        	<div class="col-md-12 btn_bottom">
	        	<button type="button" class="btn btn_default" onclick="location.replace('${pageContext.request.contextPath }/admin/company')">목록</button>&nbsp;&nbsp;
	        	<button type="submit" class="btn btn_default" id="modifyCom">변경저장</button>
        	</div>
        </div>
      </div>
<!-- 	  </form> -->
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
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
 
</body>

</html>