<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
<!-- favicon 넣는 자리 -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/img/gs_favi.png">  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    공생 | 회원 목록
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

.form-control-plaintext {
    margin-top: 25px;
}

.small-input {
    font-size: 16px; /* 폰트 크기를 조정합니다 */
    height: 40px; /* 높이를 조정합니다 */
    /* 필요에 따라 padding도 조정할 수 있습니다 */
}

.member_btn {
 	margin-top: 23px;
}

/* 일반 테이블 행에 대한 hover 효과 */
.table tbody tr:hover {
    background-color: #f2f2f2; /* 호버 시 배경 색상 */
    cursor: pointer; /* 커서 변경 */
}

.modal-body .table tbody tr:hover {
    background-color: transparent!important; /* 기본 배경색 유지 */
    cursor: default!important; /* 기본 커서 사용 */
}

/* 이미지를 원형으로 표시 */
.rounded-circle {
  border-radius: 50%;
}

.modal-body table {
    display: block !important;
}


/* 테이블 스타일링 */
.table th, .table td {
}

#memberModal .modal-body tbody tr {
    display: table-row !important;
    text-align: center !important;
	max-width: auto;
}

.modal-body {
    display: flex!important;
    justify-content: center!important; 
    align-items: center!important; 
    text-align: center!important;
    flex-direction: column!important;
}

.modal-content {
    min-width: 300px!important; 
}

#modalClassTitles {
	text-align: left;
}

.modal-body .table th {
    min-width: max-content;
    white-space: nowrap; 
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
						<a class="navbar-brand" href="#pablo">회원 목록</a>
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
				<h2 class="title">회원 목록</h2>
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
													<label for="purchaseDateStart">클래스 등록일 검색</label> 
													<input type="date" class="form-control" id="purchaseDateStart" name="purchaseDateStart">
												</div>
												<div class="col-xs-1 text-center">
													<span class="form-control-plaintext">~</span>
												</div>
												<div class="col-xl-2">
													<label for="purchaseDateEnd"></label> 
													<input type="date" class="form-control" id="purchaseDateEnd" name="purchaseDateEnd">
												</div>
												<div class="form-group col-xl-7">
													<div class="form-row member_btn">
														<input type="button" value="검색" class="btn btn-info m-1 btn-search"> 
														<input type="button" value="초기화" class="btn btn-info m-1 btn-reset">
													</div>
												</div>
											</div>
											<!-- 클래스 진행 여부 체크박스 -->
											<div class="filter-checkboxes">
												<label> 
													<input type="checkbox" id="statusPlanned" checked>진행예정
												</label> 
												<label> 
													<input type="checkbox" id="statusOngoing" checked>진행중
												</label> 
												<label> 
													<input type="checkbox" id="statusFinished" checked>종료
												</label>
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
													<th scope="col">클래스 진행 여부</th>
													<th scope="col">회원아이디</th>
													<th scope="col">회원명</th>
													<th scope="col">성별</th>
													<th scope="col">클래스 등록일</th>
													<th scope="col">클래스명</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items="${companyClassMember}" var="classMember" varStatus="status">
											    <c:if test="${not displayedMembers.contains(classMember.member_id)}">
											        <tr class="member-row"
											            data-pay-date="${classMember.pay_date}"
											            data-member-gender="${classMember.member_gender}"
											            data-class-status="${classMember.classStatus}"
											            data-member-id="${classMember.member_id}"
											            data-member-name="${classMember.member_name}"
											            data-member-gender="${classMember.member_gender}"
											            data-member-birth="${classMember.member_birthday}"
											            data-member-email="${classMember.member_email}"
											            data-class-titles="${memberClassesStringMap[classMember.member_id]}"
											            data-member-nick="${classMember.member_nick}"
											            data-member-phone="${classMember.member_phone}"
											            data-member-img="${pageContext.request.contextPath}/resources/upload/${classMember.member_img}"
											            data-member-status="${classMember.member_status}">
											            
											            <td scope="row">${status.index + 1}</td>
											            <td>${classMember.classStatus}</td>
											            <td>${classMember.member_id}</td>
											            <td>${classMember.member_name}</td>
											            <td>
											                <c:choose>
											                    <c:when test="${classMember.member_gender == 1}">
											                        남성
											                    </c:when>
											                    <c:otherwise>
											                        여성
											                    </c:otherwise>
											                </c:choose>
											            </td>
											            <td class="pay-date">
											                <fmt:formatDate value="${classMember.pay_date}" pattern="yyyy/MM/dd" />
											            </td>
											            <td>${classMember.class_title}</td>
											        </tr>
											        <c:set var="added" value="${displayedMembers.add(classMember.member_id)}" scope="page"/>
											    </c:if>
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
		<!-- Modal -->
		<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="memberModalLabel">회원 상세 정보</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body text-center">
		        <!-- 회원 이미지 -->
		        <img id="modalMemberImg" src="" alt="회원 이미지" class="rounded-circle" style="width: 100px; height: 100px; object-fit: cover;"/>
		        <!-- 회원 아이디 -->
		        <h5 id="modalMemberId" class="mt-3"></h5>
		        <!-- 회원 상세 정보 테이블 -->
		        <table class="table mt-3">
		          <tbody>
		            <tr>
		              <th>이름</th>
		              <td><span id="modalMemberName"></span></td>
		            </tr>
		            <tr>
		              <th>회원 상태</th>
		              <td><span id="modalMemberStatus"></span></td>
		            </tr>
		            <tr>
		              <th>닉네임</th>
		              <td><span id="modalMemberNick"></span></td>
		            </tr>
		            <tr>
		              <th>수강 내역</th>
		              <td><ul id="modalClassTitles"></ul></td>
		            </tr>
		            <tr>
		              <th>성별</th>
		              <td><span id="modalMemberGender"></span></td>
		            </tr>
		            <tr>
		              <th>생년월일</th>
		              <td><span id="modalMemberBirth"></span></td>
		            </tr>
		            <tr>
		              <th>이메일</th>
		              <td><span id="modalMemberEmail"></span></td>
		            </tr>
		            <tr>
		              <th>전화번호</th>
		              <td><span id="modalMemberPhone"></span></td>
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
			<jsp:include page="../inc/admin_bottom.jsp" />
		</footer>
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
  <script type="text/javascript">
  // 드롭다운 메뉴의 모든 항목을 선택합니다.
  var dropdownItems = document.querySelectorAll('.dropdown-item');

  // 각 항목에 클릭 이벤트 리스너를 추가합니다.
  dropdownItems.forEach(function(item) {
    item.addEventListener('click', function() {
      // 클릭된 항목의 텍스트를 가져옵니다.
      var text = this.textContent;

      // 버튼의 텍스트를 업데이트합니다.
      document.getElementById('dropdownMenuButton').textContent = text;
    });
  });
  
  $(document).ready(function() {
	 // 초기화 버튼 이벤트 핸들러
	  $('.btn-reset').click(function() {
      // 페이지 새로고침
       location.reload();
    }); 
	    
	// 검색 버튼 이벤트 핸들러
	$('.btn-search').click(function() {
	    var startDate = $('#purchaseDateStart').val();
	    var endDate = $('#purchaseDateEnd').val();

	    $('tbody tr').each(function() {
	        // 각 행에서 날짜 데이터를 가져옴
	        var payDate = $(this).find('.pay-date').text();
	        // 문자열 형태의 날짜를 Date 객체로 변환
	        var payDateObj = new Date(payDate);
	        var startDateObj = startDate ? new Date(startDate) : null;
	        var endDateObj = endDate ? new Date(endDate) : null;
	
	        // 날짜가 검색 범위 내에 있는지 확인
	        var isVisible = true; // 기본적으로 모든 행을 보이게 설정
	        if (startDateObj && payDateObj < startDateObj) {
	            isVisible = false; // 시작 날짜 이전이면 숨김
	        }
	        if (endDateObj && payDateObj > endDateObj) {
	            isVisible = false; // 종료 날짜 이후면 숨김
	        }
	        $(this).toggle(isVisible); // 조건에 따라 행 표시/숨김
	    });
	});

	// -----------------------------------------------------------------------------------
	   // 체크박스 상태 변경 시 테이블 필터링
    $('#statusPlanned, #statusOngoing, #statusFinished').change(function() {
        filterTable();
    });

    // 테이블 필터링 함수
    function filterTable() {
        var statusPlanned = $('#statusPlanned').is(':checked');
        var statusOngoing = $('#statusOngoing').is(':checked');
        var statusFinished = $('#statusFinished').is(':checked');

        $('tbody tr').each(function() {
            var status = $(this).find('td:nth-child(2)').text().trim();
            $(this).hide(); // 기본적으로 모든 행을 숨깁니다.

            if ((status === '진행예정' && statusPlanned) ||
                (status === '진행중' && statusOngoing) ||
                (status === '종료' && statusFinished)) {
                $(this).show(); // 조건에 맞는 행만 보여줍니다.
            }
        });
    }

    filterTable(); // 페이지 로드 시 테이블 필터링 실행
  
    $('tr.member-row').click(function() {
        var memberId = $(this).data('member-id');
        var memberName = $(this).data('member-name');
        var memberNick = $(this).data('member-nick');
        var memberBirth = $(this).data('member-birth');
        var memberEmail = $(this).data('member-email');
        var memberPhone = $(this).data('member-phone');
        var memberImg = $(this).data('member-img');
        var memberGender = $(this).data('member-gender');
        var memberStatus = $(this).data('member-status');
        var classStatus = $(this).data('class-status');
        var classTitles = $(this).data('class-titles').split(','); // 문자열 -> 배열로 변환

        // 모달 내용 업데이트
        $('#modalMemberId').text(memberId);
        $('#modalMemberName').text(memberName);
        $('#modalMemberNick').text(memberNick);
        $('#modalMemberBirth').text(memberBirth);
        $('#modalMemberEmail').text(memberEmail);
        $('#modalMemberPhone').text(memberPhone);
//         $('#modalMemberImg').text(memberImg);
		$('#modalMemberImg').attr('src', memberImg); // 이미지 태그의 src 속성 업데이트
        $('#modalMemberGender').text(memberGender == '1' ? '남성' : '여성');
        $('#modalMemberStatus').text(memberStatus == '1' ? '정상' : (memberStatus == '2' ? '휴면' : '탈퇴'));
        $('#modalClassStatus').text(classStatus);

        // 클래스명 목록을 업데이트합니다.
        var classTitlesList = $('#modalClassTitles');
        classTitlesList.empty(); // 목록 초기화
        classTitles.forEach(function(title) {
        	classTitlesList.append($('<li>').text(title)); // 각 클래스명을 목록에 추가
        });

        $('#memberModal').modal('show'); // 모달 표시
    });

    
  });
  
  </script>
</body>
</html>