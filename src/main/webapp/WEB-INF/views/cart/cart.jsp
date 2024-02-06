
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | 공간을 생각하다</title>
        <meta name="description" content="GARO is a real-estate template">
        
        
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

<!--         <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'> -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<!-- 		<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet"> -->

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
        <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
       	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
        
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css">
        
        <script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.js"></script> 
        <script src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-select.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/easypiechart.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.easypiechart.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/wow.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
		<script src="${pageContext.request.contextPath }/resources/js/cart.js"></script>
        
    </head>

<body>
	<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
	
	<!-- 제목 -->
	<div class="page-head">  
         <div class="container">
             <div class="row">
                 <div class="page-head-content">
                     <h1 class="page-title">장바구니</h1>               
                 </div>
             </div>
         </div>
     </div>
	
<div class="container">
<form action="">
	<div class="row justify-content-center">
	<!-- 중간에 오게하기위해 div추가 -->
	<div class="col-12 col-8 offset-2">
<!-- 	<div class="col-xs-12 col-xs-offset-2"> -->
		<div class="col-xs-12" style="margin-top: 70px; margin-bottom: 70px;">
			<div class="panel panel-info">
			
	    	<c:forEach var="cart" items="${cartList}" varStatus="status"> 
				<div class="panel-body">
					<div class="row">
						<div><!-- 사진이랑 상세정보 정렬하기위한 div -->
						<!-- 대표사진 -->
					    <div class="col-xs-2">
					        <img class="img-responsive" src="${pageContext.request.contextPath }/resources/img/payment_test.png">
					    </div>
					    <!-- 클래스이름 -->
					    <div class="col-xs-4" style="margin-top: -10px;">
					        <h3 class="product-name"><strong>${cart.class_title}</strong></h3>
					        <h6 class="product-name2">방문 날짜 : ${cart.res_visit_date}</h6>
					        <h6 class="product-name3">방문 시간 : ${cart.res_visit_time}</h6>
					    </div>
					    </div><!-- 사진이랑 상세정보 정렬하기위한 div -->
					    
					    <div class="col-xs-6">
					    
					        <div class="row">
					            <div class="col-xs-6 text-right">
					                <h6><strong><span class="text-muted">${cart.class_price}</span>&nbsp;&nbsp;&nbsp;x</strong></h6>
					            </div>
					            <div class="col-xs-4" style="margin-top: 15px;">
<%-- 					                <input type="number" class="form-control input-sm res_person" id="res_person" min="1" max="20" value="${cart.res_member_count}"> --%>
					            	<input type="number" class="form-control input-sm res_person" min="1" max="20" value="${cart.res_member_count}">
					            </div>
					        </div>
					        
					        <div class="row move-right">
						        <!-- 수정하기 버튼-->
					            <div class="col-xs-6">
					                <button type="button" value="${cart.cart_idx}" class="btn btn-default btn-sm btn-block update" style="color: #F0F0F0; width: 272px;">
					                수정하기
					                </button>
					            </div>
					            <!-- 삭제하기 이모티콘 -->
					            <div class="col-xs-6">
					                <button type="button" class="btn btn-link btn-xs delet" value="${cart.cart_idx}">
					                    <span class="glyphicon glyphicon-trash"> </span>
					                </button>
					            </div>
					        </div>
					    </div>
					</div>
					<hr>
				 </div>
			    </c:forEach> 

				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right">총결제금액 <strong id="total"></strong></h4>
						</div>
						<div class="col-xs-3">
							<button type="button" id="payment" class="btn btn-success btn-block">
								결제하기
							</button>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</div><!-- 중간에오게하기위해 div추가 -->
	</div>
</form>
</div>

	<footer>
		<hr>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>

</body>
</html>