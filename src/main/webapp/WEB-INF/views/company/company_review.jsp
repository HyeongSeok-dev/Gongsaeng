<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
	공생 | 리뷰 목록
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

body {
    background:#f5f5f5;
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

<body>
<!--   <div class="wrapper "> -->
    <div class="sidebar" data-color="orange">
       <jsp:include page="./sidebar_wrapper.jsp"/>
    </div>
    <div class="main-panel" id="main-panel">
		<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">리뷰 목록</a>
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
													<label for="purchaseDateStart">리뷰 등록일 검색</label> 
													<input type="date" class="form-control" id="purchaseDateStart" name="purchaseDateStart">
												</div>
													<div class="col-xs-1 text-center">
														<span class="form-control-plaintext">~</span>
													</div>
												<div class="col-xl-2">
													<label for="purchaseDateEnd"></label> 
													<input type="date" class="form-control" id="purchaseDateEnd" name="purchaseDateEnd">
												</div>
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
														    <label><input type="checkbox" value="4-5" class="rating-filter"> 4~ 5점</label>
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
												</tr>
											</thead>
												<tbody>
													<c:forEach items="${companyReviewDetail}" var="review"  varStatus="status">
															<tr class="review-row"
																data-review-class-title="${review.class_title}"
																data-review-member-id="${review.member_id}"
																data-review-score="${review.review_score / 2}"
																data-review-content="${review.review_content}"
																data-review-regdate="${review.review_regdate}"
													            data-review-img-1="${pageContext.request.contextPath}/resources/upload/${review.review_img_1}"
														        data-review-idx="${review.review_idx}"
														        > 
																
																<th scope="row">${status.index + 1}</th>
																<td>${review.class_title}</td> <!-- 클래스명 -->
																<td>${review.member_id}</td> <!-- 회원아이디 -->
																<td>${review.review_score / 2}</td> <!-- 별점 -->
																<td>${review.review_content}</td> <!-- 리뷰내용 -->
																<td>${review.review_regdate}</td> <!-- 리뷰등록일 -->
															</tr>
														</c:forEach>	
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
    <!-- Modal -->
		<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="memberReviewLabel" aria-hidden="true">
		<div class="modal-dialog" id="customModalDialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="reviewModalLabel">리뷰 상세 내용</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body text-center">
		        <!-- 회원 아이디 -->
<!-- 		        <h5 id="modalMemberId" class="mt-3"></h5> -->
		        <!-- 회원 상세 정보 테이블 -->
		        <table class="table mt-3">
<!-- 		        <input type="hidden" id="modalReviewIdx"> -->
		          <tbody>
<!-- 	              <h5 id="modalReviewIdx" class="mt-3"></h5> review_idx를 표시할 요소 -->
		            <tr>
		              <th>클래스 명</th>
		              <td><span id="modalReviewClass"></span></td>
		            </tr>
		            <tr>
		              <th>아이디</th>
		              <td><span id="modalMemberId"></span></td>
		            </tr>
		            <tr>
		              <th>별점</th>
		              <td><span id="modalReviewScore"></span></td>
		            </tr>
		            <tr>
		              <th>리뷰<br>사진</th>
<!-- 		              <td><span id="modalReviewImg1"></span></td> -->
		       		<td><img id="modalReviewImg1" src="" alt="리뷰 이미지1" style="width: 300px; height: 300px;"/></td>
		            </tr>
		            <tr>
		              <th>리뷰<br>내용</th>
		              <td><ul id="modalReviewContent"></ul></td>
		            </tr>
		            <tr>
		              <th>등록일</th>
		              <td><span id="modalReviewRegdate"></span></td>
		            </tr>
		          </tbody>
		        </table>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
		      </div>
		    </div>
		  </div>
		</div>
    <!-- 바텀 -->
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
     </footer>
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
  <script src="${pageContext.request.contextPath }/resources/company_assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath }/resources/company_assets/demo/demo.js"></script>
  <script>
	$(document).ready(function() {
		
		$('#reviewModal').on('show.bs.modal', function () {
		    var className = $('#modalReviewClass').text(); // 클래스명을 가져옵니다.
		    var modalWidth = Math.max(500, Math.min(800, 20 * className.length)); // 클래스명 길이에 따라 너비 계산

		    // 모달의 너비를 설정
		    $(this).find('.modal-dialog').css('max-width', modalWidth + 'px');
		});

		
		
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
 
 // 리뷰 모달
    $('tr.review-row').click(function() {
        var reviewClassTitle = $(this).data('review-class-title');
        var reviewMemberId = $(this).data('review-member-id');
        var reviewScore = $(this).data('review-score');
        var reviewContent = $(this).data('review-content');
        var reviewRegdate = $(this).data('review-regdate');
        var reviewImg1 = $(this).data('review-img-1');
        var reviewIdx = $(this).data('review-idx'); // 여기에서 review_idx 값을 가져옵니다.

        // 모달 내용 업데이트
        $('#modalReviewClass').text(reviewClassTitle);
        $('#modalMemberId').text(reviewMemberId);
        $('#modalReviewScore').text(reviewScore);
        $('#modalReviewContent').text(reviewContent);
        $('#modalReviewRegdate').text(reviewRegdate);
        $('#modalReviewImg1').attr('src', reviewImg1);
        // 여기에 reviewIdx 값을 모달에 표시하는 코드를 추가합니다.
        // 예를 들어, 모달 안에 id가 'modalReviewIdx'인 요소가 있다면:
        $('#modalReviewIdx').text(reviewIdx);

        $('#reviewModal').modal('show'); // 모달 표시
    });

 
 
    
});
</script>
  
</body>

</html>