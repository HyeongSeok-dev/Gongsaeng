<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="description" content="GARO is a real-estate template">
	<meta name="author" content="Kimarotec">
	<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
	
	<%-- css 파일 --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css">
	
	<%--js 파일 --%>
	<script src="${pageContext.request.contextPath }/resources/js/cart.js"></script>
	
	
	
	
	
</head>
<body>
<div class="container">
	<div class="row justify-content-center">
	<!-- 중간에 오게하기이해 div추가 -->
	<div class="col-12 col-8 offset-2">
<!-- 	<div class="col-xs-12 col-xs-offset-2"> -->
		<div class="col-xs-12">
			<div class="panel panel-info">
				<h1><b>장바구니</b></h1>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
						</div>
						<!-- 클래스이름 -->
						<div class="col-xs-4">
							<h4 class="product-name"><strong>클래스이름</strong></h4><h4><small>Product description</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
							</div>
							<div class="col-xs-4">
								<input type="text" class="form-control input-sm" value="1">
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div>
					<!-- 수정하기 버튼 -->
					<div class="col-xs-3">
						<button type="button" class="btn btn-default btn-sm btn-block">
							수정하기
						</button>
					</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
							</div>
							<div class="col-xs-4">
								<input type="text" class="form-control input-sm" value="1">
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div>
						<!-- 수정하기 버튼 -->
						<div class="col-xs-3">
							<button type="button" class="btn btn-default btn-sm btn-block">
								수정하기
							</button>
						</div>
					</div>
					<hr>
<!-- 					<div class="row"> -->
<!-- 						<div class="text-center"> -->
<!-- 							<div class="col-xs-9"> -->
<!-- 								<h6 class="text-right">Added items?</h6> -->
<!-- 							</div> -->
							<!-- 수정하기 버튼 -->
<!-- 							<div class="col-xs-3"> -->
<!-- 								<button type="button" class="btn btn-default btn-sm btn-block"> -->
<!-- 									수정하기 -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right">총결제금액 <strong>$50.00</strong></h4>
						</div>
						<div class="col-xs-3">
							<button type="button" name="payment" class="btn btn-success btn-block">
								결제하기
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div><!-- 중간에오게하기위해 div추가 -->
	</div>
</div>
</body>
</html>