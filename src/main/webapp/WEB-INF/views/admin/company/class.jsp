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
   공생|관리자페이지 클래스
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
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">
                	<c:choose>
                		<c:when test="${empty param.member_id}">
			                클래스 목록
                		</c:when>
                		<c:otherwise>
			                ${param.member_id}님 클래스 목록
                		</c:otherwise>
                	</c:choose>
                </h5>
              </div>
              <div class="card-body">
              	<div class="row checkbox_row">
               		<div class="col-md-7 checkbox_div">
<!--                			<div> -->
		               		<div class="row col_checkbox">
				              	<input type="checkbox" value="0" name="class_main_category" id="mainCategoryAllCheck"> &nbsp;대분류 전체&nbsp;
				              	<input type="checkbox" value="1" name="class_main_category" class="class_main_category"> &nbsp;바닥 시공&nbsp;
				              	<input type="checkbox" value="2" name="class_main_category" class="class_main_category"> &nbsp;벽/천장 시공&nbsp;
				              	<input type="checkbox" value="3" name="class_main_category" class="class_main_category"> &nbsp;부분 인테리어&nbsp;
				              	<input type="checkbox" value="4" name="class_main_category" class="class_main_category"> &nbsp;야외 시공&nbsp;
				              	<input type="checkbox" value="5" name="class_main_category" class="class_main_category"> &nbsp;종합 인테리어&nbsp;
				              	<input type="checkbox" value="6" name="class_main_category" class="class_main_category"> &nbsp;기타 시공&nbsp;
			              	</div>
		               		<div class="row col_checkbox">
				              	<input type="checkbox" value="0" name="class_sub_category" id="subCategoryAllCheck"> &nbsp;소분류 전체&nbsp;
				              	<input type="checkbox" value="1" name="class_sub_category" class="class_sub_category"> &nbsp;<span>샷시설치 및 수리</span>&nbsp;
				              	<input type="checkbox" value="2" name="class_sub_category" class="class_sub_category"> &nbsp;<span>화장실 리모델링</span>&nbsp;
				              	<input type="checkbox" value="3" name="class_sub_category" class="class_sub_category"> &nbsp;<span>주방 리모델링</span>&nbsp;
				              	<input type="checkbox" value="4" name="class_sub_category" class="class_sub_category"> &nbsp;<span>가구 리폼</span>&nbsp;
				              	<input type="checkbox" value="5" name="class_sub_category" class="class_sub_category"> &nbsp;<span>붙박이장 시공</span>&nbsp;
			              	</div>
<!--                			</div> -->
	              	</div>
	              	<div class="col-md-5">
	              		<form action="" class="member_date">
	              			
	              			<div class="search_bar_admin">
				              	<div>
				              		<select name="class_state">
						              	<option value="0">전체일자</option>
						              	<option value="1">등록일자</option>
						              	<option value="2">폐업일자</option>
				              		</select>
				              		<input type="date" id="start_date">&nbsp;&nbsp;~&nbsp;&nbsp;<input type="date" id="end_date">
				              	</div>
		              		</div>
		              		<div class="search_bar_admin">
								<select>
									<option>전체검색</option>
									<option>사업체명</option>
									<option>클래스명</option>
								</select>&nbsp;
	              				<input type="search">&nbsp;
			              		<button type="submit" class="btn btn_default" value="검색">검색</button>
		              		</div>	
	              		</form>
	              	</div>
	              </div>
	              	
                	<table class="table table-bordered">
	                	<colgroup>
	                		<col width="12%"/>
	                		<col width="8%"/>
	                		<col width="12%"/>
	                		<col width="12%"/>
	                		<col width="12%"/>
	                		<col width="32%"/>
	                		<col width="7%"/>
	                	</colgroup>
			            <tr>
			                <th>등록일자</th>
			                <th>
			                	<select name="class_category">
					              	<option value="0">수업종류</option>
					              	<option value="1">정규</option>
					              	<option value="2">원데이</option>
		              			</select>
			                </th>
			                <th>대분류</th>
			                <th>소분류</th>
			                <th>사업체명</th>
			                <th>클래스명</th>
			                <th>신고수</th>
			            </tr>
			            <!-- 회원 데이터 로우 -->
			            <c:forEach var="c" items="${classList }">
				            <tr class="tr_hover" onclick="location.href='${pageContext.request.contextPath }/admin/company/class/detail?class_idx=${c.class_idx }'">
				                <td>${c.class_date }</td>
				                <td>
				                	<c:choose>
				                		<c:when test="${c.class_category eq 1}">
											정규			                		
				                		</c:when>
				                		<c:when test="${c.class_category eq 2}">
				                			원데이
				                		</c:when>
				                	</c:choose>
				                </td>
				                <td>
									<c:choose>
				                		<c:when test="${c.class_main_category eq 1}">
											바닥시공			                		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 2}">
				                			벽/천장시공
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 3}">
											부분 인테리어			                		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 4}">
				                			야외 시공
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 5}">
											종합 인테리어			                		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 6}">
				                			기타시공
				                		</c:when>
				                	</c:choose>
								</td>
				                <td>
									<c:choose>
				                		<c:when test="${c.class_main_category eq 1}">
											<c:choose>
												<c:when test="${c.class_sub_category eq 1}">
													바닥재 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 2}">
													장판 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 3}">
													타일 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 4}">
													마루 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 5}">
													기타 시공
												</c:when>
											</c:choose>			                		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 2}">
				                			<c:choose>
												<c:when test="${c.class_sub_category eq 1}">
													도배 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 2}">
													칸막이 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 3}">
													페인트 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 4}">
													방음 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 5}">
													단열 필름 시공
												</c:when>
												<c:otherwise>기타 시공</c:otherwise>
											</c:choose>		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 3}">
											<c:choose>
												<c:when test="${c.class_sub_category eq 1}">
													샷시 설치 및 수리
												</c:when>
												<c:when test="${c.class_sub_category eq 2}">
													화장실 리모델링
												</c:when>
												<c:when test="${c.class_sub_category eq 3}">
													주방 리모델링
												</c:when>
												<c:when test="${c.class_sub_category eq 4}">
													가구 리폼
												</c:when>
												<c:when test="${c.class_sub_category eq 5}">
													붙박이장 시공 
												</c:when>
												<c:otherwise>기타 시공</c:otherwise>
											</c:choose>					                		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 4}">
				                			<c:choose>
												<c:when test="${c.class_sub_category eq 1}">
													조경 공사
												</c:when>
												<c:when test="${c.class_sub_category eq 2}">
													옥상공사
												</c:when>
												<c:when test="${c.class_sub_category eq 3}">
													지붕 공사
												</c:when>
												<c:when test="${c.class_sub_category eq 4}">
													태양광 발전
												</c:when>
												<c:when test="${c.class_sub_category eq 5}">
													외벽 리모델링 
												</c:when>
												<c:otherwise>기타 시공</c:otherwise>
											</c:choose>		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 5}">
				                			<c:choose>
												<c:when test="${clcass.class_sub_category eq 1}">
													집 인테리어
												</c:when>
												<c:when test="${c.class_sub_category eq 2}">
													상업공간 인테리어
												</c:when>
												<c:when test="${c.class_sub_category eq 3}">
													주택 리모델링
												</c:when>
												<c:when test="${c.class_sub_category eq 4}">
													집 수리 
												</c:when>
												<c:when test="${c.class_sub_category eq 5}">
													인테리어 소품
												</c:when>
												<c:otherwise>기타</c:otherwise>
											</c:choose>		
				                		</c:when>
				                		<c:when test="${c.class_main_category eq 6}">
				                			<c:choose>
												<c:when test="${c.class_sub_category eq 1}">
													줄눈 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 2}">
													단열 시공
												</c:when>
												<c:when test="${c.class_sub_category eq 3}">
													미장 시공
												</c:when>
												<c:otherwise>기타 시공</c:otherwise>
											</c:choose>		
				                		</c:when>
				                	</c:choose>
								</td>
				                <td>${c.com_name}</td>
				                <td>${c.class_title}</td>
				                <td>
				                	<c:choose>
										<c:when test="${c.classReportCount eq null}">
											0
										</c:when>
										<c:otherwise>
											${c.classReportCount }
										</c:otherwise>
				                	</c:choose>
				                	건
				                </td>
				            </tr>
			            </c:forEach>
			    	</table>
              	</div>
              </div>
            </div>
          </div>
        </div>
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
      </footer>
    </div>
  </div>
  
   <!-- 모달 창 -->
    <div class="modal fade" id="filterModal" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="filterModalLabel">회원 유형 선택</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="allCheck">
                        <label class="form-check-label" for="allCheck">
                            전체 선택
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="leaderCheck">
                        <label class="form-check-label" for="leaderCheck">
                            반장 회원
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="generalCheck">
                        <label class="form-check-label" for="generalCheck">
                            일반 회원
                        </label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary">적용</button>
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
  <script src="${pageContext.request.contextPath }/resources/admin_assets/js/class.js"></script>
	<script>
    </script>

</body>

</html>