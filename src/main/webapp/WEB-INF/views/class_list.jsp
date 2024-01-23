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
</head>
<body>
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div>
	
	<%-- 상단바 삽입 --%>
	<%-- 로그인 전 --%>
	<jsp:include page="top.jsp"/>
	<%-- 로그인 후 --%>
<%-- 	<jsp:include page="top2.jsp"/> --%>


        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title" id="page-title-left">검색결과</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container"> 
                <div class="row  pr0 padding-top-40 properties-page">
                    <div class="col-md-12 padding-bottom-40 large-search"> 
                        <div class="search-form wow pulse">
                            <form action="" class=" form-inline">
                                <div class="col-md-12">
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" placeholder="Key word">
                                    </div>
                                    <div class="col-md-4">                                   
                                        <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">
                                            <option>New york, CA</option>
                                            <option>Paris</option>
                                            <option>Casablanca</option>
                                            <option>Tokyo</option>
                                            <option>Marraekch</option>
                                            <option>kyoto , shibua</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">                                     
                                        <select id="basic" class="selectpicker show-tick form-control">
                                            <option> -Status- </option>
                                            <option>Rent </option>
                                            <option>Boy</option>
                                            <option>used</option>  

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12 ">
                                    <div class="search-row">   

                                        <div class="col-sm-3">
                                            <label for="price-range">Price range ($):</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[0,450]" id="price-range" ><br />
                                            <b class="pull-left color">2000$</b> 
                                            <b class="pull-right color">100000$</b>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <label for="property-geo">Property geo (m2) :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[50,450]" id="property-geo" ><br />
                                            <b class="pull-left color">40m</b> 
                                            <b class="pull-right color">12000m</b>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <label for="price-range">Min baths :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-baths" ><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <label for="property-geo">Min bed :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-bed" ><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                    </div>

                                    <div class="search-row">  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Fire Place(3100)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Dual Sinks(500)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Hurricane Shutters(99)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Swimming Pool(1190)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 2 Stories(4600)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Emergency Exit(200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Laundry Room(10073)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Jog Path(1503)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 26' Ceilings(1200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>   
                                </div>                     
                            </form>
                        </div>
                    </div>

                    <div class="col-md-12  clear"> 
                        <div class="col-xs-10 page-subheader sorting pl0">
                            <ul class="sort-by-list">
                                <li class="active">
                                    <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                        최신순
                                    </a>
                                </li>
                                <li class="">
                                    <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                        인기순
                                    </a>
                                </li>
                            </ul><!--/ .sort-by-list-->

                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>

                    <div class="col-md-12 clear "> 
                        <div id="list-type" class="proerty-th">
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item proerty-item-ads">
                                    <a href="" ><img src="${pageContext.request.contextPath}/resources/assets/img/pro-ads.jpg"></a>
                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 
                            
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item proerty-item-ads">
                                    <a href="" ><img src="${pageContext.request.contextPath}/resources/assets/img/pro-ads.jpg"></a>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1" ><img src="${pageContext.request.contextPath}/resources/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="property-1"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/bed.png">(5)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/shawer.png">(2)|
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="col-md-12 clear"> 
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
						<br>
						<br>
						<br>
						<br>
						<br>
                        </div>
                    </div>
                </div>                
            </div>
        </div>


	<!-- Footer area -->
	<!-- 하단바 삽입-->
	<div class="footer-area">
		<jsp:include page="bottom.jsp"/>
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
