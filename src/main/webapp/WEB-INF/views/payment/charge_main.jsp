<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        
        <link href="${pageContext.request.contextPath }/resources/css/charge_main.css" rel="stylesheet" type="text/css">
        
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
        
table th {
    background-color: #f2f2f2;  /* 원하는 색상으로 변경하세요. */
}
.table-striped tbody tr {
    background-color: #ffffff !important; /* 흰색 배경 */
}

input[type="submit"]:hover {
       background-color: #b3b3b3; /* 마우스를 올렸을 때의 색상 */
}
input[type="submit"]:active {
    background-color: #f2f2f2; /* 클릭했을 때의 색상 */
}

</style>
</head>


<body>
	<div class="container" >
    <div class="page-header text-center">
        <h3>${user_name}님의 계좌 상세정보<span class="pull-right label label-default"></span></h3><br>
    </div>
    <div class="row">
     <div class="col-md-3"></div> <!-- 앞의 3칼럼을 비워둠 -->
     
	     <table class="table table-striped custab" border="1">
		        <tr>
		            <th>은행</th>
		            <td>${accountDetail.bank_name}</td>
	            <tr>
	            <tr>
		            <th>계좌번호</th>
		            <td>${account_num_masked}</td>
	            </tr>
	            <tr>
	            	<th>상품명</th>
	            	<td>${accountDetail.product_name}</td>
	            </tr>
	            <tr>
	            	<th>계좌잔고</th>
	            	<td>${accountDetail.balance_amt} 원</td>
	            </tr>
	            <tr>
		            <th>핀테크이용번호</th>
	                <td>${accountDetail.fintech_use_num}
		                <%--잔액조회 API서비스 요청을 위한 데이터 전송폼 생성 --%>
		                <form action="BankAccountDetail" method="post">
							<input type="hidden" name="fintech_use_num" value="${account.fintech_use_num}">
							<input type="hidden" name="user_name" value="${userInfo.user_name}">
							<input type="hidden" name="account_num_masked" value="${account.account_num_masked}">
						</form>
	                </td>
	            </tr>
	    </table>
	     
    	<div class="col-md-6" id="tap">
            <div class="panel with-nav-tabs panel-default">
            	<!-- 탭부분 -->
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab">충전</a></li>
                            <li><a href="#tab2default" data-toggle="tab">환급</a></li>
<!--                             <li><a href="#tab3default" data-toggle="tab">Default 3</a></li> -->
                            <!-- 드롭다운 탑메뉴 -->
<!--                             <li class="dropdown"> -->
<!--                                 <a href="#" data-toggle="dropdown">Dropdown <span class="caret"></span></a> -->
<!--                                 <ul class="dropdown-menu" role="menu"> -->
<!--                                     <li><a href="#tab4default" data-toggle="tab">Default 4</a></li> -->
<!--                                     <li><a href="#tab5default" data-toggle="tab">Default 5</a></li> -->
<!--                                 </ul> -->
<!--                             </li> -->
                        </ul>
                </div>
                <!-- 탭바디 부분 -->
                 <div class="panel-body">
		            <div class="tab-content">
		            	<!-- 충전 -->
		                <div id="tab1default" class="tab-pane fade in active">
		            		<div class="section_box">
		                		<input type="text" placeholder="충전할 금액을 적으세요.">
			                	<br><br>
			                	<form action="BankPayment" method="post">
									<input type="hidden" name="fintech_use_num" value="${accountDetail.fintech_use_num}">
									<input type="hidden" name="req_client_name" value="${user_name}">
									<input type="hidden" name="tran_amt" value="5016">
									<input type="submit" value="충전하기">
								</form>
							</div>
						</div>
						<!-- 환급 -->
		                <div id="tab2default" class="tab-pane fade">
		                	<div class="section_box">
		                		<input type="text" placeholder="환급받을 금액을 적으세요.">
			                	<br><br>
			                	<form action="BankRefund" method="post">
									<input type="hidden" name="fintech_use_num" value="${accountDetail.fintech_use_num}">
									<input type="hidden" name="req_client_name" value="${user_name}">
									<input type="hidden" name="tran_amt" value="5016">
									<input type="submit" value="환급받기">
								</form>
							</div>
		                </div>
		            </div>
		        </div>
                
               </div>
              </div>
              
              <input type="button" value="확인"> 
              
             </div>
       </div>
      <br/>
</body>
</html>
