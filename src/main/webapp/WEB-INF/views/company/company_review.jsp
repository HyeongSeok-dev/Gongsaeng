<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/company_assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/company_assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Dashboard by Creative Tim
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
  <!-- CSS(List) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- global CSS -->
    <link href="${pageContext.request.contextPath }/resources/css/global.css" rel="stylesheet" />	
  
<style type="text/css">
    	body{
    background:#f5f5f5;
/*     margin-top:20px; */
}

.card {
	border: none;
	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
	background-color: #F1F3F5!important;
	
}
.table th {
    font-weight: 500;
    color: #827fc0;
}
.table thead {
    background-color: #f3f2f7;
}
.table>tbody>tr>td, .table>tfoot>tr>td, .table>thead>tr>td {
    padding: 14px 12px;
    vertical-align: middle;
}
.table tr td {
    color: #8887a9;
}
.thumb-sm {
    height: 32px;
    width: 32px;
}
.badge-soft-warning {
    background-color: rgba(248,201,85,.2);
    color: #f8c955;
}

.badge {
    font-weight: 500;
}
.badge-soft-primary {
    background-color: rgba(96,93,175,.2);
    color: #605daf;
}

.content {
	background-color: #fff!important;
}

/* 테이블 내 텍스트의 폰트 사이즈를 조정합니다. */
.table th, .table td {
  font-size: 14px!important; /* 원하는 폰트 사이즈로 조정하세요. */
  text-align: center!important;
}

/* 제목의 폰트 사이즈를 줄입니다. */
h2.title {
/*   font-size: 24px; /* 원하는 폰트 사이즈로 조정하세요. */ */
}

th {
font-size: 14px;
}

.table {
  width: 100%!important; /* 테이블의 너비를 부모 요소의 100%로 설정 */
}

tbody {
	background-color: #fff;
	color: #000;
}

.small-input {
    font-size: 16px; /* 폰트 크기를 조정합니다 */
    height: 40px; /* 높이를 조정합니다 */
    /* 필요에 따라 padding도 조정할 수 있습니다 */
}
.member_btn {
 	margin-top: 23px;
}

</style>  
  
</head>

<body class="">
<!--   <div class="wrapper "> -->
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
            <a class="navbar-brand" href="#pablo">리뷰 목록</a>
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
      <div class="panel-header">
        <div class="header text-center">
          <h2 class="title">리뷰 목록</h2>
        </div>
      </div>
		<div class="content">
			<div class="row">
				<div class="col-xl-12">
					<div class="card col-xl-12">
						<div class="card-header"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-xl-12">
									<div class="card">
										<form>
											<div class="form-row align-items-center">
												<div class="col-xl-2">
													<label for="purchaseDateStart">리뷰 등록일 검색</label> <input
														type="date" class="form-control" id="purchaseDateStart"
														name="purchaseDateStart">
												</div>
												<div class="col-xs-1 text-center">
													<span class="form-control-plaintext">~</span>
												</div>
												<div class="col-xl-2">
													<label for="purchaseDateEnd"></label> <input type="date"
														class="form-control" id="purchaseDateEnd"
														name="purchaseDateEnd">
												</div>
												<!-- 추가 컨텐츠를 위한 공간 -->
<!-- 												<div class="form-group col-xl-7"> -->
<!-- 													<input type="button" value="전체" class="btn btn-dark mt-5 "> -->
<!-- 													<input type="button" value="오늘" class="btn btn-dark mt-5"> -->
<!-- 													<input type="button" value="1주일" class="btn btn-dark mt-5"> -->
<!-- 													<input type="button" value="1개월" class="btn btn-dark mt-5"> -->
<!-- 													<input type="button" value="3개월" class="btn btn-dark mt-5"> -->
<!-- 													<input type="button" value="6개월" class="btn btn-dark mt-5"> -->
<!-- 													<input type="button" value="&nbsp;&nbsp;1 년&nbsp;&nbsp;" class="btn btn-dark mt-5"> -->
<!-- 												</div> -->
													<div class="form-row member_btn">
														<input type="button" value="초기화" class="btn btn-info m-1 btn-reset">
														<input type="button" value="검색" class="btn btn-info m-1 btn-search">
														<!-- 여기에 추가 버튼을 계속해서 추가할 수 있습니다. -->
													</div>
												<!-- 새로운 버튼을 위한 새로운 form-row 추가 -->
												<div class="form-row col-xl-12 mt-1">
													<div class="col-xl-7">
													<!-- 평점 필터링 체크박스 -->
														<div class="form-group">
														    <label><input type="checkbox" value="1-2" class="rating-filter"> 1~2점</label>
														    <label><input type="checkbox" value="2-3" class="rating-filter"> 2~3점</label>
														    <label><input type="checkbox" value="3-4" class="rating-filter"> 3~4점</label>
														    <label><input type="checkbox" value="4-5" class="rating-filter"> 4~5점</label>
														    <label><input type="checkbox" value="5" class="rating-filter"> 5점</label>
														</div>
													</div>
													<div class="col-xl-2">
													</div>
													<div class="col-xl-5">
<!-- 													<div class="form-row member_btn"> -->
<!-- 														<input type="button" value="초기화" class="btn btn-info m-1 btn-reset"> -->
<!-- 														<input type="button" value="검색" class="btn btn-info m-1 btn-search"> -->
<!-- 														여기에 추가 버튼을 계속해서 추가할 수 있습니다. -->
<!-- 													</div> -->
													</div>
													<div class="col-xl-3"></div>
												</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 		      			  <div class="row"> -->
			<div class="col-md-12">
				<div class="card col-md-12">
					<div class="card-header"></div>
					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<form>
										<table class="table table-bordered">
											<thead class="thead-dark">
												<tr>
													<th scope="col">#</th>
													<th scope="col">클래스명</th>
													<th scope="col">회원아이디</th>
<!-- 													<th scope="col">회원명</th> -->
													<th scope="col">별점</th>
													<th scope="col">리뷰 내용</th>
													<th scope="col">리뷰 등록일</th>
<!-- 													<th scope="col">클래스명</th> -->
<!-- 													<th scope="col">채팅</th> -->
<!-- 													<th scope="col">포인트 사용 금액</th> -->
<!-- 													<th scope="col">수수료</th> -->
<!-- 													<th scope="col">정산신청</th> -->
												</tr>
											</thead>
											<tbody>
												<!-- 여기에 각 행을 추가하세요. 예를 들어: -->
													<c:forEach items="${companyReviewDetail}" var="review" >
												<tr>
														<th scope="row">1</th>
														<td>${review.class_title}</td> <!-- 클래스명 -->
														<td>${review.member_id}</td> <!-- 회원아이디 -->
<!-- 														<td>구승민</td> -->
														<td>${review.review_score / 2}</td> <!-- 별점 -->
														<td>${review.review_content }</td> <!-- 리뷰내용 -->
														<td>${review.review_regdate }</td> <!-- 리뷰등록일 -->
												</tr>
	 												</c:forEach>	
												<!-- 더 많은 행을 추가할 수 있습니다. -->
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 		      </div> -->
		</div>
      <footer class="footer">
        <div class=" container-fluid ">
          <nav>
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="http://presentation.creative-tim.com">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright" id="copyright">
            &copy; <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
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
  <script>

</script>
  <script>
$(document).ready(function() {
    // 검색 버튼 클릭 이벤트
    $('.btn-search').click(function() {
        var startDate = $('#purchaseDateStart').val();
        var endDate = $('#purchaseDateEnd').val();

        $('tbody tr').each(function() {
            // 각 행의 리뷰 등록일 가져오기
            var reviewDate = $(this).find('td:nth-last-child(1)').text(); // 마지막 열에 리뷰 등록일이 있다고 가정
            // 등록일이 검색 범위 안에 있는지 확인
            if (startDate && endDate) {
                var isVisible = reviewDate >= startDate && reviewDate <= endDate;
                $(this).toggle(isVisible);
            } else {
                // 날짜 필드 중 하나라도 비어있으면 모든 행을 보여줌
                $(this).show();
            }
        });
    });

    // 초기화 버튼 클릭 이벤트
    $('.btn-reset').click(function() {
        $('#purchaseDateStart').val('');
        $('#purchaseDateEnd').val('');
        $('tbody tr').show();
    });
    
    // 평점 필터링 체크박스 변경 이벤트
    $('.rating-filter').change(function() {
        filterTableByRating();
    });

    function filterTableByRating() {
        var checkedValues = $('.rating-filter:checked').map(function() {
            return $(this).val();
        }).get();

        $('tbody tr').each(function() {
            var rowRating = parseFloat($(this).find('td:nth-child(4)').text().trim()); // 별점이 4번째 열에 있다고 가정
            var isVisible = checkedValues.some(function(value) {
                var range = value.split('-');
                var min = parseFloat(range[0]);
                var max = range[1] ? parseFloat(range[1]) : min;
                return rowRating >= min && rowRating <= max;
            });
            $(this).toggle(isVisible || checkedValues.length === 0); // 아무것도 선택되지 않았으면 모든 행 표시
        });
    }
    
    
});
</script>
  
</body>

</html>