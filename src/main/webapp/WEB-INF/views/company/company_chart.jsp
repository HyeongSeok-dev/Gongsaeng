<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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
  
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	

<style type="text/css">
    	body{
   background:#fff;

/*     margin-top:20px; */
}

.row {
	background-color: #fff!important;

}

.card {
	border: none;
 	-webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
 	box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
	margin-bottom: 30px;
/* 	background-color: #F1F3F5!important; */
 	background-color: #FFF!important;
	
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

</style>  
  
</head>

<body class="">
        <div class="sidebar" data-color="orange">
            <!-- Include sidebar_wrapper.jsp -->
            <jsp:include page="./sidebar_wrapper.jsp"/>
        </div>
	<div class="main-panel" id="main-panel">
		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<div class="navbar-toggle">
						<button type="button" class="navbar-toggler">
							<span class="navbar-toggler-bar bar1"></span> <span
								class="navbar-toggler-bar bar2"></span> <span
								class="navbar-toggler-bar bar3"></span>
						</button>
					</div>
					<a class="navbar-brand" href="#pablo">반장 CHART</a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navigation" aria-controls="navigation-index"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-bar navbar-kebab"></span> <span
						class="navbar-toggler-bar navbar-kebab"></span> <span
						class="navbar-toggler-bar navbar-kebab"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navigation">
					<form>
						<div class="input-group no-border">
							<input type="text" value="" class="form-control"
								placeholder="Search...">
							<div class="input-group-append">
								<div class="input-group-text">
									<i class="now-ui-icons ui-1_zoom-bold"></i>
								</div>
							</div>
						</div>
					</form>
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#pablo"> <i
								class="now-ui-icons media-2_sound-wave"></i>
								<p>
									<span class="d-lg-none d-md-block">Stats</span>
								</p>
						</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="now-ui-icons location_world"></i>
								<p>
									<span class="d-lg-none d-md-block">Some Actions</span>
								</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a> <a
									class="dropdown-item" href="#">Something else here</a>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="#pablo"> <i
								class="now-ui-icons users_single-02"></i>
								<p>
									<span class="d-lg-none d-md-block">Account</span>
								</p>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->
		<div class="panel-header">
			<div class="header text-center">
				<h2 class="title">반장 CHART</h2>
				<p class="category">
					Handcrafted by our friend <a target="_blank"
						href="https://github.com/mouse0270">Robert McIntosh</a>. Please
					checkout the <a href="http://bootstrap-notify.remabledesigns.com/"
						target="_blank">full documentation.</a>
				</p>
			</div>
		</div>
		<div class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
<!-- 						<div class="card-header"></div> -->
<!-- 						<div class="card-body"> -->
						<div class="content">
								<div class="row">
<!-- 									<div class="col-md-12"> -->
										<div class="card">
<!-- 											<div class="card-body"> -->
												<div class="row">
													<div class="col-md-6">
														<!-- 일별 매출 차트 -->
														<canvas id="monthlySalesChart"></canvas>
													</div>
													<div class="col-md-6">
														<!-- 일별 클래스 등록 수 차트 -->
														<canvas id="classRegisterChart"></canvas>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<!-- 성별 비율 차트 -->
														<canvas id="genderRatioChart"></canvas>
													</div>
													<div class="col-md-6">
														<!-- 일별 취소 건수 차트 -->
														<canvas id="cancellationChart"></canvas>
													</div>
												</div>
<!-- 											</div> -->
										</div>
<!-- 									</div> -->
								</div>
							</div>
<!-- 						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	    <!--       바텀 -->
      <footer class="footer">
       <jsp:include page="../inc/admin_bottom.jsp"/>
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
document.addEventListener('DOMContentLoaded', function() {
    // 서버에서 받은 JSON 데이터를 JavaScript 객체로 파싱
    var salesData = JSON.parse('${recentSalesJson}');
    var classRegisterData = JSON.parse('${classRegisterJson}');

    // 월별 매출 차트 구성
//     const monthlySalesCtx = document.getElementById('monthlySalesChart').getContext('2d');
//     const monthlySalesChart = new Chart(monthlySalesCtx, {
//         type: 'bar',
//         data: {
//             labels: salesData.map(data => `${data.payYear}-${data.payMonth}`),
//             datasets: [{
//                 label: '월별 매출',
//                 data: salesData.map(data => data.totalSales),
//                 backgroundColor: 'rgba(54, 162, 235, 0.2)',
//                 borderColor: 'rgba(54, 162, 235, 1)',
//                 borderWidth: 1
//             }]
//         },
//         options: {
//             scales: {
//                 y: {
//                     beginAtZero: true
//                 }
//             }
//         }
//     });
// 서버에서 받은 JSON 데이터를 JavaScript 객체로 파싱
var salesData = JSON.parse('${recentSalesJson}');

// 일별 매출 차트 구성
const dailySalesCtx = document.getElementById('monthlySalesChart').getContext('2d');
const dailySalesChart = new Chart(dailySalesCtx, {
    type: 'bar',
    data: {
        labels: salesData.map(data => data.payDate), // 날짜로 라벨 설정
        datasets: [{
            label: '일별 매출',
            data: salesData.map(data => data.totalSales),
            backgroundColor: 'rgba(000, 051, 204, 0.5)',
            borderColor: 'rgba(000, 051, 204, 1)',
            borderWidth: 1
        }]
    },
    options: {
    	 title: {
             display: true,
             text: '일별 클래스 매출 (최근 10일간)',
             fontSize: 25
         },
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});



    // 일별 클래스 등록 수 차트 구성
    const classRegisterCtx = document.getElementById('classRegisterChart').getContext('2d');
    const classRegisterChart = new Chart(classRegisterCtx, {
        type: 'line',
        data: {
            labels: classRegisterData.map(data => data.payment_date),
            datasets: [{
                label: '일별 클래스 등록 수 (최근 10일간)',
                data: classRegisterData.map(data => parseInt(data.total_payments, 10)),
                backgroundColor: 'rgba(051, 153, 000, 0.2)',
                borderColor: 'rgba(051, 153, 000, 1)',
                borderWidth: 1,
                fill: false, // 배경색 채우기 없음

            }]
        },
        options: {
        	 title: {
                 display: true,
                 text: '일별 클래스 등록 수 (최근 10일간)',
                 fontSize: 25
             },
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
    
    // ---------------------------------------------------------
// 서버로부터 받은 genderRatioJson 데이터
// var genderRatioData = JSON.parse('{{genderRatioJson}}'); // 서버 사이드 렌더링을 사용하는 경우
var genderRatioData = JSON.parse('${genderRatioJson}'); // 문자열을 JSON 객체로 변환

// 데이터에서 레이블과 값 추출
var labels = genderRatioData.map(function(item) {
    // member_gender 값에 따라 "남성" 또는 "여성"으로 매핑
    if (item.member_gender === 1) {
        return '남성';
    } else if (item.member_gender === 2) {
        return '여성';
    } else {
        return '기타'; // 만약 다른 값이 있다면, "기타"로 분류
    }
});
var data = genderRatioData.map(function(item) {
    return item.count;
});

// 차트 생성
var ctx = document.getElementById('genderRatioChart').getContext('2d');
var genderRatioChart = new Chart(ctx, {
    type: 'pie', // 차트 유형: 원형 그래프
    data: {
        labels: labels, // 수정된 라벨 사용
        datasets: [{
            label: '성별 비율',
            data: data, // 수정된 데이터 사용
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',  // 여성 색상
                'rgba(54, 162, 235, 0.2)' // 남성 색상
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        responsive: true,
        legend: {
            position: 'top',
        },
        title: {
            display: true,
            text: '클래스 등록 회원 성비',
            fontSize: 25
        },
        animation: {
            animateScale: true,
            animateRotate: true
        }
    }
});

    // ---------------------------------------------------------
  var cancellationData;
try {
    cancellationData = JSON.parse('${recentCancelJson}');
} catch (e) {
    console.error('cancellationJson 파싱 오류:', e);
    // 파싱에 실패한 경우 빈 배열이나 기본값 사용
    cancellationData = [];
}
 // 취소 건수의 최대값 계산
 var maxCancelCount = Math.max.apply(Math, cancellationData.map(function(o) { return o.cancelCount; }));

 // 최대값에 기반한 y축 범위 조정
 var cancellationChart = new Chart(document.getElementById('cancellationChart').getContext('2d'), {
     type: 'bar',
     data: {
         labels: cancellationData.map(data => data.cancelDate),
         datasets: [{
             label: '일별 취소 건수',
             data: cancellationData.map(data => parseInt(data.cancelCount, 10)),
//              backgroundColor: 'rgba(255, 99, 132, 0.2)',
             backgroundColor: 'rgba(153, 000, 000, 0.5)',
             borderColor: 'rgba(153, 000, 000, 0.5)',
             borderWidth: 1
         }]
     },
     options: {
    	 title: {
             display: true,
             text: '일별 클래스 취소 건수 (최근 10일간)',
             fontSize: 25
         },
         scales: {
             yAxes: [{
                 ticks: {
                     beginAtZero: true,
                     // 최대값을 기준으로 y축 최대값 설정
                     suggestedMax: maxCancelCount + 1 // 최대값보다 조금 더 여유를 둠
                 }
             }]
         }
     }
 });

    
});
</script>





  

</body>

</html>