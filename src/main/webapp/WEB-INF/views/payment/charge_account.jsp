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
        
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
}
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
}
        
table thead {
    background-color: #f2f2f2;  /* 원하는 색상으로 변경하세요. */
}
.table-striped tbody tr {
    background-color: #ffffff !important; /* 흰색 배경 */
}
  
.table-striped tbody tr:hover {
      background-color: #f2f2f2 !important; /* 원하는 색상으로 변경하세요. */
} 

</style>
</head>
<body>
	<div class="container">
	    <div class="row col-md-12 mx-auto custyle">
		    <table class="table table-striped custab">
			    <thead>
			        <tr>
			            <th>은행</th>
			            <th>계좌번호</th>
			            <th>핀테크이용번호</th>
			            <th class="text-center"></th>
			        </tr>
			    </thead>
	            
	            <tr>
	                <td>{accountDetail.bank_name}</td>
	                <td>{account_num_masked}</td>
	                <td>{accountDetail.fintech_use_num}</td>
	                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> 선택</a></td>
	            </tr>
	            <tr>
	                <td>{accountDetail.bank_name}</td>
	                <td>{account_num_masked}</td>
	                <td>{accountDetail.fintech_use_num}</td>
	                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> 선택</a></td>
	       
	            </tr>
	            <tr>
	                <td>{accountDetail.bank_name}</td>
	                <td>{account_num_masked}</td>
	                <td>{accountDetail.fintech_use_num}</td>
	                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> 선택</a></td>
	            </tr>
	            
	           
		    </table>
	    </div>
	</div>
									
	
</body>
</html>
