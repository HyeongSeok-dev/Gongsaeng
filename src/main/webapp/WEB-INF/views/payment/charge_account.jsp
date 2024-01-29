<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | 공간을 생각하다</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontello.css">
        <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
        
        	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/payment_agree.css">
        
        
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
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/icheck.min.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/price-range.js"></script>
<%--         <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script> --%>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main_noicheck.js"></script>
        
<style type="text/css">

.out_block{
	display: flex; 
	justify-content: center; 
 	flex-direction: column; 
 	align-items: center;
 	width: 100%;
}

h1 {
  color: #848484;
}

.agree {
	display: flex;
	align-items: center;
}

table {
        width: 100%;
    }

.section_box {
    width: 70%;  /* 원하는 너비로 설정하세요. */
    margin: 0 auto;
}

</style>

</head>
<body>
<!-- 	<header> -->
<%-- 		<jsp:include page="../inc/top.jsp"></jsp:include> --%>
<!-- 	</header> -->
	
	<main>
	<!-- 제목 -->
<!-- 	<div class="page-head">   -->
<!--           <div class="container"> -->
<!--               <div class="row"> -->
<!--                   <div class="page-head-content"> -->
<!--                       <h1 class="page-title">포인트충전</h1>                -->
<!--                   </div> -->
<!--               </div> -->
<!--           </div> -->
<!--       </div> -->
      
	<div class="section_box">
				<section class="sec05" >
					<h2>계좌선택</h2>
					<br>
					<h5>0페이를 충전할 계좌를 선택하세요.</h5>
					<br>
					<form action="">
					<table>
						<tr>
							<td>은행명</td>
							<td>계좌번호</td>
							<td>계좌번호</td>
							<td></td>
						</tr>
						<tr>
							<td>${accountDetail.bank_name}</td>
							<td>${account_num_masked}</td>
							<td>${account_num_masked}</td>
							<td><input type="submit" value="선택"></td>
						</tr>
					</table>
					</form>
				</section>
	</div>
									
	
	
	</main>	


</body>
</html>
