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
            <a class="navbar-brand title" href="#pablo">사업체관리</a>
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
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="now-ui-icons ui-1_calendar-60"></i>
                  <p>
                    <span class="d-lg-none d-md-block">달력</span>
                  </p>
                </a>
              </li>
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
                <h5 class="title">XXX 상세 정보</h5>
                <div>사업체 번호 : </div>
              </div>
              <div class="card-body">
              	<div class="text_center">
	           		<img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="img-circle img-thumbnail" alt="avatar">
					<input type="file" class="form-control profileImg" accept="image/*">
					<div class="profileImg" >
   	       		 		<br>
	           		 	<c:choose>
							<c:when test="${empty company.com_img}">
		    	       		 	<button type="button" id="uploadFileBtn" class="btn btn_default">파일선택</button>
			           		 	<span id="fileLabel">파일명</span>
							</c:when>
							<c:otherwise>
		    	       		 	<button type="button" id="uploadFileBtn" class="btn btn_default">파일선택</button>
			           		 	<span id="fileLabel">${company.com_img}</span>
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
	             		<td colspan="3">반장아이디</td>
	             	</tr>
	             	<tr>
	             		<th>등록/폐업일자</th>
	             		<td colspan="3">
	             			등록/폐업일자(상태)
	             			&nbsp;
	             			<select>
								<option>정상</option>
								<option>승인대기</option>
								<option>영업중지</option>
								<option>보류</option>
								<option>승인거부</option>
							</select>
	             		</td>
	             	</tr>
	             	<tr>
	             		<th>카테고리</th>
	             		<td colspan="3">
							<select>
								<option>바닥 시공</option>
								<option>변/천장 시공</option>
								<option>부분 인테리어</option>
								<option>야외 시공</option>
								<option>종합 인테리어</option>
								<option>기타 홈 인테리어</option>
							</select>
						</td>
					</tr>
	             	<tr>
						<th>전화번호</th>
	             		<td colspan="3">
							<input type="text"><!--  - <input type="text"> - <input type="text">  -->
						</td>
	             	</tr>
	             	<tr>
	             		<th>주소</th>
	             		<td colspan="3">
	             			<input type="text" class="margin_5px">&nbsp;<button type="button" class="btn">우편번호찾기</button><br>
	             			<input type="text" class="margin_5px">&nbsp;
	             			<input type="text" class="margin_5px">
	             		</td>
	             	</tr>
	             	<tr>
	             		<th>계좌번호</th>
	             		<td colspan="3">
	             			<span>은행</span>
	             			<span>계좌번호</span>
	             			<span>
								<select>
									<option>비인증</option>
									<option>인증</option>
								</select>
							</span>
	             		</td>
					</tr>
						             	
					<tr>
	             		<th rowspan="2">
	             			환급금<br>
	             		 	<a class="more_info" href="${pageContext.request.contextPath }/admin/member/detail/class">더보기</a>
	             		</th>
						<th class="detail_table">환급가능금액</th>
						<th class="detail_table">이번달 환급금</th>
						<th class="detail_table">누적 환급금</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			0 원
	             		</td>
	             		<td>
	             			0 원
	             		</td>
	             		<td>
	             			0 원
	             		</td>
					</tr>
					    
					<tr>
	             		<th rowspan="2">
		             		등록클래스 수<br>
		             		<a class="more_info" href="${pageContext.request.contextPath }/admin/member/detail/class">더보기</a>
	             		</th>
						<th class="detail_table">총</th>
						<th class="detail_table">원데이</th>
						<th class="detail_table">정기</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			0 건
	             		</td>
	             		<td>
	             			0 건
	             		</td>
	             		<td>
	             			0건
	             		</td>
					</tr>    
					    
					<tr>
	             		<th rowspan="2">
	             			클래스 예약 내역<br>
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/member/detail/class">더보기</a>
	             		</th>
						<th class="detail_table">총</th>
						<th class="detail_table">원데이</th>
						<th class="detail_table">정기</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			이달 0 건 / 누적 0 건
	             		</td>
	             		<td>
	             			이달 0 건 / 누적 0 건
	             		</td>
	             		<td>
	             			이달 0 건 / 누적 0 건
	             		</td>
					</tr>    
					    
					<tr>
	             		<th rowspan="2">
	             			리뷰 수<br>
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/member/detail/class">더보기</a>
	             		</th>
						<th class="detail_table">평균 별점</th>
						<th class="detail_table">이달 추천 수</th>
						<th class="detail_table">누적 추천 수</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			0 점
	             		</td>
	             		<td>
	             			0 건
	             		</td>
	             		<td>
	             			0 건
	             		</td>
					</tr>    
					
					<tr>
	             		<th rowspan="2">
	             			피신고건 수<br>
	             			<a class="more_info" href="${pageContext.request.contextPath }/admin/member/detail/class">더보기</a>
	             		</th>
						<th class="detail_table">전달</th>
						<th class="detail_table">이달</th>
						<th class="detail_table">누적</th>
					</tr>             	
	             	<tr>
	             		<td>
	             			0 건
	             		</td>
	             		<td>
	             			0 건
	             		</td>
	             		<td>
	             			0 건
	             		</td>
					</tr>    
	             	
<!-- 	             	<tr> -->
<!-- 	             		<th>환급금</th> -->
<!-- 	             		<td colspan="3"> -->
<!-- 	             			<div class="td_align"> -->
<!-- 								<span></span> -->
<!-- 		             			<span>총 0건 / 원데이 0건 / 정기 0건</span> -->
<%-- 		             		 	<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath }/admin/member/detail/class'">더보기</button> --%>
<!-- 	             			</div>  -->
<!-- 	             		</td> -->
<!-- 					</tr>	             	 -->
<!-- 	             	<tr> -->
<!-- 	             		<th>등록클래스수</th> -->
<!-- 	             		<td colspan="3"> -->
<!-- 	             			<div class="td_align"> -->
<!-- 								<span></span> -->
<!-- 		             			<span>총 0건 / 원데이 0건 / 정기 0건</span> -->
<%-- 		             		 	<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath }/admin/member/detail/class'">더보기</button> --%>
<!-- 	             			</div>  -->
<!-- 						</td> -->
<!-- 	             	</tr> -->
<!-- 	             	<tr> -->
<!-- 	             		<th>클래스 예약 내역</th> -->
<!-- 	             		<td colspan="3"> -->
<!-- 	             			<div class="td_align"> -->
<!-- 								<span></span> -->
<!-- 		             			<span>누적 0건 / 이번달 0건</span> -->
<!-- 								<button type="button" class="btn">더보기</button> -->
<!-- 	             			</div> -->
<!-- 						</td> -->
<!-- 	             	</tr> -->
<!-- 	             	<tr> -->
<!-- 	             		<th>리뷰수</th> -->
<!-- 	             		<td colspan="3"> -->
<!-- 	             			<div class="td_align"> -->
<!-- 		             			<span></span> -->
<!-- 		             			<span> -->
<!-- 		             				<span>총 0건 / </span> -->
<!-- 		             				<span>추천수 0건 / </span> -->
<!-- 		             				<span>평균별점 0점</span> -->
<!-- 		             			</span> -->
<!-- 		             			<button type="button" class="btn">더보기</button> -->
<!-- 	             			</div> -->
<!-- 	             		</td> -->
<!-- 	             	</tr> -->
<!-- 	             	<tr> -->
<!-- 	             		<th>피신고건수</th> -->
<!-- 	             		<td colspan="3"> -->
<!-- 	             			<div class="td_align"> -->
<!-- 		             			<span></span> -->
<!-- 		             			<span>0건</span> -->
<!-- 		             			<button type="button" class="btn">더보기</button> -->
<!-- 	             			</div> -->
<!-- 	             		</td> -->
<!-- 	             	</tr> -->
	             </table>	 	
              </div>
            </div>
          </div>
        </div>
        <div class="row">
        	<div class="col-md-12 btn_bottom">
	        	<button type="button" class="btn">목록</button>&nbsp;&nbsp;
	        	<button type="button" class="btn">변경저장</button>
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
	<script>
        $(document).ready(function() {
            // 필터 기능 구현
            $('#leaderFilter, #withdrawalFilter').change(function() {
                var leaderFilter = $('#leaderFilter').val();
                var withdrawalFilter = $('#withdrawalFilter').val();
                
                // 로직에 따라 회원 데이터 필터링 및 표시
            });
        });
    </script>

</body>

</html>