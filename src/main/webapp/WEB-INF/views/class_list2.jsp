<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>공생 | 공간에 대한 생각</title>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
	
<script type="text/javascript">
function toggleButtons() {
  var button1 = document.getElementById('button1');
  var button2 = document.getElementById('button2');
  
  if (button1.style.display == 'none') {
    button1.style.display = 'block';
    button2.style.display = 'none';
  } else {
    button1.style.display = 'none';
    button2.style.display = 'block';
  }
}
</script>

</head>
<body>
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div>
	
	<%-- 상단바 삽입 --%>
	<%-- 로그인 전 --%>
	<jsp:include page="./inc/top.jsp"/>
	<%-- 로그인 후 --%>
<%-- 	<jsp:include page="./inc/top2.jsp"/> --%>

	<div class="page-head"> 
		<div class="container">
	        <div class="row">
	            <div class="page-head-content">
	                <h1 id="page-title-left">검색결과</h1>               
	            </div>
	        </div>
	    </div>
	</div>

	<div class="properties-area recent-property" style="background-color: #FCFCFC;">
	    <div class="container"> 
	        <div class="row_not  pr0 padding-top-40 properties-page">
	        	
	        	<%-- 상세검색 area --%>
				<div class="col-md-12 padding-bottom-40 large-search"> 
	                <div class="search-form wow pulse">
	                
	                    <form action="" class=" form-inline">
	                        <div class="col-md-12">
	                        	<button>원데이</button>
	                        	<button>정규모집</button>
	                        </div>
	                        <div class="col-md-12" style="margin-bottom: 20px;">
	                            <div class="col-md-4">
	                                <input type="text" class="form-control" placeholder="클래스명">
	                            </div>
	                            <div class="col-md-4">                                   
	                                <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="카테고리">
	                                    <optgroup label="바닥 시공">
	                                    	<option>바닥 시공 전체</option>
	                                    	<option>바닥재 시공</option>
	                                    	<option>장판 시공</option>
	                                    	<option>타일 시공</option>
	                                    	<option>마루 시공</option>
	                                    	<option>카페트 시공</option>
	                                    </optgroup>
	                                    <optgroup label="벽/천장 시공">
	                                    	<option>벽/천장 시공 전체</option>
	                                    	<option>도배 시공</option>
	                                    	<option>칸막이 시공</option>
	                                    	<option>페인트 시공</option>
	                                    	<option>방음 시공</option>
	                                    	<option>단열 필름 시공</option>
	                                    </optgroup>
	                                    <optgroup label="부분 인테리어">
	                                    	<option>부분 인테리어 전체</option>
	                                    	<option>샷시 설치 및 수리</option>
	                                    	<option>화장실 리모델링</option>
	                                    	<option>주방 리모델링</option>
	                                    	<option>가구 리폼</option>
	                                    	<option>붙박이장 시공</option>
	                                    </optgroup>
	                                    <optgroup label="야외 시공">
	                                    	<option>야외 시공 전체</option>
	                                    	<option>조경 공사</option>
	                                    	<option>옥상 공사</option>
	                                    	<option>지붕 공사</option>
	                                    	<option>태양광 발전</option>
	                                    	<option>외벽 리모델링</option>
	                                    </optgroup>
	                                    <optgroup label="종합 인테리어">
	                                    	<option>종합 인테리어 전체</option>
	                                    	<option>집 인테리어</option>
	                                    	<option>상업공간 인테리어</option>
	                                    	<option>주택 리모델링</option>
	                                    	<option>집 수리</option>
	                                    	<option>인테리어 소품</option>
	                                    </optgroup>
	                                    <optgroup label="기타 시공">
	                                    	<option>기타 시공 전체</option>
	                                    	<option>줄눈 시공</option>
	                                    	<option>단열 시공</option>
	                                    	<option>미장 시공</option>
	                                    </optgroup>
	                                </select>
	                            </div>
	                            
	                            <div class="col-md-4">                                     
	                                <select id="basic" class="selectpicker show-tick form-control" title="상태">
	                                    <option>모집중</option>
	                                    <option>마감</option>
	                                    <option>종료</option>  
	                                </select>
	                            </div>
	                        </div>
	                        
	                        <div class="col-md-12 ">
								<div class="col-md-4 class_date_button">
									<input type="text" id="date" class="form-control" name="class_startDate" style="margin-right: auto;"
											onchange="select_class_startDate()" onfocus="this.type='date'; this.value='';" value="시작일">
									<span><b style="vertical-align: text-top;">&nbsp;~&nbsp;</b></span>
									<input type="text" id="date" class="form-control" name="class_endDate" style="margin-right: auto;"
											onchange="select_class_endDate" onfocus="this.type='date'; this.value='';" value="종료일">
								</div>

								<div class="col-sm-4 not_hover">
									<label for="property-geo">시작시간 ~ 종료시간</label>
									<input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[50,450]" id="property-geo"><br />
									<b class="pull-left color">40m</b> 
									<b class="pull-right color">12000m</b>
								</div>
								
								<div class="col-sm-4 not_hover">
									<label for="price-range">금액</label>
									<input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[0,450]" id="price-range"><br />
									<b class="pull-left color">2000$</b>
									<b class="pull-right color">100000$</b>
								</div>
	                        </div>	
	                                

	                        <div class="col-md-12 ">
	                            <div class="search-row">  
	                            
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox"> 공방 보유</label>
	                                    </div>
	                                </div>

	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox"> 주차공간</label>
	                                    </div>
	                                </div>

	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox"> 와이파이</label>
	                                    </div>
	                                </div>
	
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox"> 커피 별도 구매</label>
	                                    </div>
	                                </div>
	
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                    	<label><input type="checkbox"> 대중교통 용이</label>
	                                    </div>
	                                </div>
	                                
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                    	<label><input type="checkbox"> 택시·자가용 추천</label>
	                                    </div>
	                                </div>
	                                
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                    	<label><input type="checkbox"> 음료·간식 제공</label>
	                                    </div>
	                                </div>
	
	                            </div>   
	                        </div>
	                    </form>
	                    
	                </div>
	            </div>
				<%-- 상세검색 area --%>
	
	            <div class="col-md-12 clear "> 
	                <div id="list-type" class="proerty-th">
	                
	                	<%-- 상단바 검색창으로 검색할 경우 --%>
                		<h2 class="noResearchResult_h2">
                			<b>''</b> 에 대한 검색결과가 없습니다.
							<br>
                			검색어를 다시 입력해 주세요.
                		</h2>
	                	
	                	<%-- 상세 검색창으로 검색할 경우 --%>
<!--                 		<h2 class="noResearchResult_h2"> -->
<!--                 			검색결과가 없습니다. -->
<!-- 							<br> -->
<!--                 			검색어를 다시 입력하거나 필터를 재설정해주세요. -->
<!--                 		</h2> -->

					</div>
	            </div>
	
			</div>                
		</div>
	</div>

	<!-- Footer area -->
	<!-- 하단바 삽입-->
	<div class="footer-area">
		<jsp:include page="./inc/bottom.jsp"/>
	</div>
	<!-- Footer area -->

	<%-- js파일 --%>
	<script src="${pageContext.request.contextPath}/resources/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/wow.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/icheck.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/price-range.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>
