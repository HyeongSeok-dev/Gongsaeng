<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <!--  -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_assets/img/apple-icon.png">

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   공생|관리자페이지 회원
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
  <link href="${pageContext.request.contextPath }/resources/admin_assets/css/admin.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script>
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
            <a class="navbar-brand title" href="#pablo">회원관리</a>
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
	      <div class="content">
	      <form action="/gongsaeng/admin/member/modifyPro" method="post" enctype="multipart/form-data">
	        <div class="row">
	          <div class="col-md-12">
	            <div class="card">
	              <div class="card-header">
	                <h5 class="title">${member.member_id}님
	                <c:if test="${member.member_category eq 2}">
	                	(반장)
	                </c:if>
	                 상세 정보
	                 </h5>
	              </div>
	              <div class="card-body">
	           		 <div class="text_center">
						<c:choose>
		                    <c:when test="${empty member.member_img}">
		                        <img alt="profile" src="${pageContext.request.contextPath }/resources/img/default_user_img.png" class="profile_img">
		                    </c:when>
		                    <c:when test="${fn:contains(member.member_img,'http')}">
		                        <img alt="profile" src="${member.member_img}" class="profile_img">
		                    </c:when>
		                    <c:otherwise>
		                        <img alt="profile" src="${pageContext.request.contextPath }/resources/upload/${member.member_img}" class="profile_img">
		                    </c:otherwise>
		                </c:choose>
						<input type="file" id="m_file" name="m_file" class="form-control profileImg" accept="image/*">
						<div class="profileImg" >
							<br>
		           		 	<c:choose>
								<c:when test="${empty member.member_img}">
			    	       		 	<button type="button" id="uploadFileBtn" class="btn btn_default">파일선택</button>
				           		 	<span id="fileLabel">파일명</span>
								</c:when>
								<c:otherwise>
			    	       		 	<button type="button" id="uploadFileBtn" class="btn btn_default">파일선택</button>
				           		 	<span id="fileLabel">${member.member_img}</span>
								</c:otherwise>
							</c:choose>
						</div>
	           		 </div>
	              	 <br>
		             <table class="table table-bordered">
		             	<colgroup>
		             		<col width="25%" />
		             		<col width="25%" />
		             		<col width="25%" />
		             		<col width="25%" />
		             	</colgroup>
		             	<tr>
		             		<th>가입일자</th>
		             		<td>${member.member_date }</td>
		             		<th>회원상태</th>
		             		<td>
		             			<select name="member_status" id="member_status">
					              	<option value="1" <c:if test="${member.member_status eq 1}">selected</c:if>>정상</option>
					              	<option value="2" <c:if test="${member.member_status eq 2}">selected</c:if>>휴면</option>
					              	<option value="3" <c:if test="${member.member_status eq 3}">selected</c:if>>탈퇴</option>
			              		</select>
		             		</td>
		             	</tr>
		             	<tr>
		             		<th>이름</th>
		             		<td>${member.member_name }</td>
		             		<th>닉네임</th>
		             		<td>
		             			<input type="text" value="${member.member_nick }" name="member_nick" id="member_nick">
		             			<div class="gaid" id="nickGaid"></div>
		             		</td>
		             	</tr>
		             	<tr>
		             		<th>아이디</th>
		             		<td>${member.member_id }</td>
		             		<th>회원분류</th>
		             		<td>
		             			<c:choose>
										<c:when test="${member.member_id eq 'admin1234' and member.member_category eq 1}">
							                관리자
					                	</c:when>
										<c:when test="${company.com_status eq 2}">
							                일반(반장 신청중)
					                		<button type="button" class="btn btn_default" id="approval">승인</button>
					                		<button type="button" class="btn btn_default" id="rejection">거부</button>
					                	</c:when>
										<c:when test="${company.com_status eq 5}">
							                일반 (반장 승인거부)
					                		<button type="button" class="btn btn_default" id="approval">승인</button>
					                	</c:when>
										<c:when test="${member.member_category eq 2}">
							                반장
					                	</c:when>
										<c:when test="${member.member_category eq 1}">
							                일반
					                	</c:when>
					            </c:choose>
							</td>
		             	</tr>
		             	<!-- ----------- -->
		             	<tr>
		             		<th>생년월일</th>
		             		<td>${member.member_birthday}</td>
		             		<th>전화번호</th>
		             		<td>
		             		<c:choose>
								<c:when test="${empty member.member_phone}">
				             		미등록
								</c:when>
								<c:otherwise>
									${member.member_phone}
								</c:otherwise>
		             		</c:choose>
		             		</td>
		             	</tr>
		             	<tr>
		             		<th>계좌번호</th>
		             		<td>
	             				<c:choose>
	             					<c:when test="${account.account_num_masked ne null }">
			             				${account.account_num_masked }
	             					</c:when>
	             					<c:otherwise>
	             						미등록
	             					</c:otherwise>
	             				</c:choose>
		             		</td>
		             		<th>알림수신상태</th>
		             		<td>
		             			${member.alert_1}/${member.alert_2}/${member.alert_3}/${member.alert_4}
		             		</td>
		             	</tr>
		             	<tr>
		             		<th>이메일</th>
		             		<td colspan="3">
		             			<input type="text" value="${member.member_email1}" name="member_email1" id="member_email1" class="member_email"> @ 
		             			<input type="text" value="${member.member_email2}" name="member_email2" id="member_email2" class="member_email">
								<select id="selectEmail">
									<option value="">직접입력</option>
									<option value="gmail.com" <c:if test="${member.member_email2 eq 'gmail.com'}">selected</c:if>>gmail.com</option>
									<option value="naver.com" <c:if test="${member.member_email2 eq 'naver.com'}">selected</c:if>>naver.com</option>
									<option value="yahoo.com" <c:if test="${member.member_email2 eq 'yahoo.com'}">selected</c:if>>yahoo.com</option>
									<option value="daum.net" <c:if test="${member.member_email2 eq 'daum.net'}">selected</c:if>>daum.net</option>
								</select>
		             			<span>
			             			<c:choose>
										<c:when test="${member.member_alert_status eq 5}">
					             			[비인증]
										</c:when>
										<c:when  test="${member.member_alert_status eq 5}">
					             			[인증]
										</c:when>
				             		</c:choose>
		             			</span>
		             		</td>
		             	</tr>
		             	
		             	<tr>
		             		<th rowspan="2">
		             			클래스 예약 내역<br>
		             			<a class="more_info" href="${pageContext.request.contextPath }/admin/member/reservation/class?member_id=${member.member_id}">더보기</a>
		             		</th>
							<th class="detail_table">총</th>
							<th class="detail_table">원데이</th>
							<th class="detail_table">정기</th>
						</tr>             	
		             	<tr>
		             		<td> <%-- 총 --%>
		             			금월
		             			<c:choose>
									<c:when test="${payCount.classMonthRes eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${payCount.classMonthRes}
									</c:otherwise>
			             		</c:choose> 
		             			 건 / 누적 
		             			 <c:choose>
									<c:when test="${payCount.classRes eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${payCount.classRes}
									</c:otherwise>
			             		</c:choose>  
		             			 건
		             		</td>
		             		<td> <%-- 원데이 --%>
		             			금월
		             			<c:choose>
									<c:when test="${payCount.oneDayMonthRes eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${payCount.oneDayMonthRes}
									</c:otherwise>
			             		</c:choose> 
		             			 건 / 누적 
		             			 <c:choose>
									<c:when test="${payCount.oneDayRes eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${payCount.oneDayRes}
									</c:otherwise>
			             		</c:choose>  
		             			 건
		             		</td>
		             		<td> <%-- 정기 --%>
		             			금월
		             			<c:choose>
									<c:when test="${payCount.regularMonthRes eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${payCount.regularMonthRes}
									</c:otherwise>
			             		</c:choose> 
		             			 건 / 누적 
		             			 <c:choose>
									<c:when test="${payCount.regularRes eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${payCount.regularRes}
									</c:otherwise>
			             		</c:choose>  
		             			 건
		             		</td>
						</tr>    
						    
						<tr>
		             		<th rowspan="2">
		             			남긴 리뷰 수<br>
		             			<!-- 리뷰리스트랑 같이씀 member_id들고가기 -->
		             			<a class="more_info" href="${pageContext.request.contextPath }/admin/member/review?member_id=${member.member_id}">더보기</a>
		             		</th>
							<th class="detail_table">금월</th>
							<th class="detail_table">누적</th>
							<th class="detail_table">피신고건 수</th>
						</tr>             	
		             	<tr>
		             		<td> <%-- 금월 --%>
		             			<c:choose>
									<c:when test="${reviewCount.reviewMonth eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${reviewCount.reviewMonth}
									</c:otherwise>
			             		</c:choose>  
		             			건
		             		</td>
		             		<td> <%--누적 --%>
		             			<c:choose>
									<c:when test="${reviewCount.reviewTotal eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${reviewCount.reviewTotal}
									</c:otherwise>
			             		</c:choose> 
		             			건
		             		</td>
		             		<td> <%--피신고건 --%>
		             			<c:choose>
									<c:when test="${reviewCount.reviewReport eq null}">
				             			0
									</c:when>
									<c:otherwise>
				             			${reviewCount.reviewReport}
									</c:otherwise>
			             		</c:choose> 
		             			건
		             		</td>
						</tr>    
		             </table>	 
		             <%-- 반장회원이면 --%>
		             <c:if test="${member.member_category eq 2}">
			             <br>
			             <h5 class="title">반장 정보</h5>
			             <table class="table table-bordered">	 
			             	<colgroup>
			             		<col width="25%" />
			             		<col width="75%" />
			             	</colgroup>	
			             	<tr>
			             		<th>
			             			사업체
			             			<!-- 사업체 상세보기로 -->
			             			<a class="more_info" href="${pageContext.request.contextPath }/admin/company/detail?member_id=${member.member_id}">더보기</a>
			             		</th>
			             		<td>${company.com_name}</td>
			             	</tr>
			             	<tr>
			             		<th>반장 소개</th>
			             		<td>${company.com_introduction}</td>
			             	</tr>
			             	<tr>
			             		<th>계좌번호</th>
			             		<td>${company.com_bank} &nbsp; ${company.com_account}</td>
			             	</tr>
			             	<tr>
			             		<th>
			             			등록클래스
			             			<!-- 특정 사업체의 등록 클래스 목록 -->
			             			<a class="more_info" href="${pageContext.request.contextPath }/admin/member/class?member_id=${member.member_id}">더보기</a>
			             		</th>
			             		<td>
			             			총
				             		<c:choose>
										<c:when test="${classCount.totalClass eq null}">
					             			0
										</c:when>
										<c:otherwise>
					             			${classCount.totalClass}
										</c:otherwise>
			             			</c:choose> 
				             		건 / 원데이 
				             		<c:choose>
										<c:when test="${classCount.oneDayClass eq null}">
					             			0
										</c:when>
										<c:otherwise>
					             			${classCount.oneDayClass}
										</c:otherwise>
			             			</c:choose>  
				             		건 / 정기 
				             		<c:choose>
										<c:when test="${classCount.regularClass eq null}">
					             			0
										</c:when>
										<c:otherwise>
					             			${classCount.regularClass}
										</c:otherwise>
			             			</c:choose>  
				             		건
			             		 </td>
			             	</tr>
			             </table>
		             </c:if>	 	
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	        	<div class="col-md-12 btn_bottom">
	        		<input type="hidden" name="member_id" value="${member.member_id }" id="member_id">
		        	<button type="button" class="btn btn_default" onclick="location.replace('${pageContext.request.contextPath }/admin/member')">목록</button>&nbsp;&nbsp;
		        	<button type="submit" class="btn btn_default" id="modifyMember">변경저장</button>
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
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_assets/demo/demo.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/member_detail.js"></script>
</body>

</html>