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
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
</head>
<body>
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div>
	
	<%-- 상단바 삽입 --%>
	<jsp:include page="top.jsp"/>
	
	<div class="slider-area">
	    <div class="slider">
	        <div id="bg-slider" class="owl-carousel owl-theme">
	
	            <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash.jpg" alt="GTA V"></div>
	            <div class="item2"><img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash.jpg" alt="The Last of us"></div>
	<!--                     <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div> -->
	        </div>
	    </div>
	</div>
                            
	<!-- property area -->
	<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-house-design-4861170.png" width="50">
	            	<div class="category">건축 설계</div>
	            </a>
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-interior-design-837096.png" width="50">
	            	<div class="category">실내 디자인</div>
	            </a>
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-brick-769735.png" width="50">
	            	<div class="category">건축 노하우</div>
	            </a>
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-tile-2947010.png" width="50">
	            	<div class="category">타일</div>
	            </a>
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-wallpaper-4387197.png" width="50">
	            	<div class="category">도배/페인트</div>
	            </a>
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-flower-2355436.png" width="50">
	            	<div class="category">인테리어 소품</div>
	            </a>
	            <a class="icon">
	            	<img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-flash-248053.png" width="50">
	            	<div class="category">전기</div>
	            </a>
	            </div>
	        </div>
	        </div>
	        </div>
	
                      
        <!-- property area -->
        <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
            <div class="container">   
                <div class="row">
                    <div class="col-md-12  padding-top-40 properties-page">
                        <div class="col-md-12 "> 
                            <div class="col-xs-10 page-subheader sorting pl0">

                                <ul class="sort-by-list">
                                    <li class="active">
                                        <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                            <button>최신순</button>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                            <button>인기순</button>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-12 "> 
                            <div id="list-type" class="proerty-th">
                            
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>

                                    </div>
                                </div> 
                                
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                            </div>
                        </div>
                        <div class="col-md-12"> 
                            <div class="pull-right">
                                <div class="pagination">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>
                            </div>                
                        </div>
                    </div>  
                </div>
            </div>
        </div>

	



        <!-- property area -->
        <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
            <div class="container">   
                <div class="row">
                    <div class="col-md-12  padding-top-40 properties-page">
                        <div class="col-md-12 "> 
							<h2>마감임박순</h2>
                        </div>

                        <div class="col-md-12 "> 
                            <div id="list-type" class="proerty-th">

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>

                                    </div>
                                </div> 
                                
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/icon/bed.png">(5)|
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/icon/shawer.png">(2)|
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                            </div>
                        </div>

                    </div>  
                </div>
            </div>
        </div>



<%-- TEST START --%>

<!-- 	<div class="slider-area"> -->
<!-- 	<div class="slider-area"> -->
<!-- 	    <div class="slider"> -->
<!-- 	        <div id="bg-slider" class="owl-carousel owl-theme"> -->
	
<%-- 	            <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash.jpg" alt="GTA V"></div> --%>
<%-- 	            <div class="item2"><img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash.jpg" alt="The Last of us"></div> --%>
<!-- 	        </div> -->
<!-- 	    </div> -->
<!-- 	</div> -->
	
<!-- 	<div class="slider-area"> -->
	
<div id="carouselExampleFade" class="carousel slide carousel-fade">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- 	</div> -->

<%-- TEST END --%>




        <!-- property area -->
        <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
            <div class="container">   
                <div class="row">
                    <div class="col-md-12  padding-top-40 properties-page">
                        <div class="col-md-12 "> 
							<h2>마감임박순</h2>
                        </div>

                        <div class="col-md-12 "> 
                            <div id="list-type" class="proerty-th">

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>

                                    </div>
                                </div> 
                                
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="img/icon/bed.png">(5)|
                                                <img src="img/icon/shawer.png">(2)|
                                                <img src="img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1" ><img src="${pageContext.request.contextPath }/resources/assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/icon/bed.png">(5)|
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/icon/shawer.png">(2)|
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
								<br>
								<br>
								<br>
                                </div> 

                            </div>
                        </div>

                    </div>  
                </div>
            </div>
        </div>
	
	<!-- Footer area-->
	<div class="footer-area">
	
	    <div class=" footer">
	        <div class="container">
	            <div class="row">
	
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer">
	                        <h4>About us </h4>
	                        <div class="footer-title-line"></div>
	
	                        <img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" alt="" class="wow pulse" data-wow-delay="1s">
	                        <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
	                        <ul class="footer-adress">
	                            <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
	                            <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
	                            <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer">
	                        <h4>Quick links </h4>
	                        <div class="footer-title-line"></div>
	                        <ul class="footer-menu">
	                            <li><a href="properties">Properties</a>  </li> 
	                            <li><a href="#">Services</a>  </li> 
	                            <li><a href="submit-property">Submit property </a></li> 
	                            <li><a href="contact">Contact us</a></li> 
	                            <li><a href="faq">fqa</a>  </li> 
	                            <li><a href="faq">Terms </a>  </li> 
	                        </ul>
	                    </div>
	                </div>
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer">
	                        <h4>Last News</h4>
	                        <div class="footer-title-line"></div>
	                        <ul class="footer-blog">
	                            <li>
	                                <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
	                                    <a href="single">
	                                        <img src="${pageContext.request.contextPath}/resources/assets/img/demo/small-proerty-2.jpg">
	                                    </a>
	                                    <span class="blg-date">12-12-2016</span>
	
	                                </div>
	                                <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
	                                    <h6> <a href="single">Add news functions </a></h6> 
	                                    <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
	                                </div>
	                            </li> 
	
	                            <li>
	                                <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
	                                    <a href="single">
	                                        <img src="${pageContext.request.contextPath}/resources/assets/img/demo/small-proerty-2.jpg">
	                                    </a>
	                                    <span class="blg-date">12-12-2016</span>
	
	                                </div>
	                                <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
	                                    <h6> <a href="single">Add news functions </a></h6> 
	                                    <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
	                                </div>
	                            </li> 
	
	                            <li>
	                                <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
	                                    <a href="single">
	                                        <img src="${pageContext.request.contextPath}/resources/assets/img/demo/small-proerty-2.jpg">
	                                    </a>
	                                    <span class="blg-date">12-12-2016</span>
	
	                                </div>
	                                <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
	                                    <h6> <a href="single">Add news functions </a></h6> 
	                                    <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
	                                </div>
	                            </li> 
	
	
	                        </ul>
	                    </div>
	                </div>
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer news-letter">
	                        <h4>Stay in touch</h4>
	                        <div class="footer-title-line"></div>
	                        <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>
	
	                        <form>
	                            <div class="input-group">
	                                <input class="form-control" type="text" placeholder="E-mail ... ">
	                                <span class="input-group-btn">
	                                    <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
	                                </span>
	                            </div>
	                            <!-- /input-group -->
	                        </form> 
	
	                        <div class="social pull-right"> 
	                            <ul>
	                                <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
	                                <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
	                                <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
	                                <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
	                                <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
	                            </ul> 
	                        </div>
	                    </div>
	                </div>
	
	            </div>
	        </div>
	    </div>
	
	    <div class="footer-copy text-center">
	        <div class="container">
	            <div class="row">
	                <div class="pull-left">
	                    <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
	                </div> 
	                <div class="bottom-menu pull-right"> 
	                    <ul> 
	                        <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
	                        <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
	                        <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
	                        <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
	                    </ul> 
	                </div>
	            </div>
	        </div>
	    </div>
	
	</div>

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
