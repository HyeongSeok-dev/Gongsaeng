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
	
	<!-- Body content -->
	<nav class="navbar navbar-default ">
	    <div class="top_container">
	        <!-- Brand and toggle get grouped for better mobile display -->
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	<!--                     <a id="navbar-brand" href="index"><img class="main_logo" src="${pageContext.request.contextPath}/resources/assets/img/logo1 (3).png" alt=""></a> -->
	            <!--  로고임!! -->
	            <div class="main_logo_div">
	             <a id="navbar-brand" href="index"><img class="main_logo1" src="${pageContext.request.contextPath}/resources/assets/img/logo2 (2).png" alt=""></a>
	             <a id="navbar-brand" href="index"><img class="main_logo2" src="${pageContext.request.contextPath}/resources/assets/img/logo3.png" alt=""></a>
	            </div>
	<%--                     <a id="navbar-brand" href="index"><img class="main_logo3" src="${pageContext.request.contextPath}/resources/assets/img/logo4.png" alt=""></a> --%>
	        </div>
	
	        <!-- Collect the nav links, forms, and other content for toggling -->
	        <div class="collapse navbar-collapse yamm" id="navigation">
	            <div class="button navbar-right">
	                <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('member/login')" data-wow-delay="0.45s">로그인</button>
	                <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property')" data-wow-delay="0.48s">회원가입</button>
<%-- 	                    	<a href=""><img src="${pageContext.request.contextPath}/resources/assets/img/free-icon-chat-5356106.png" alt="chat" width="50"></a> --%>
	            </div>
	            
	            <ul class="main-nav nav navbar-nav navbar-right">
	            	
	            	<li class="wow fadeInDown" data-wow-delay="0.2s" id="not_li">
	            		<%-- 검색창 --%>
			            <form role="search" class="css-4f6urn e1vfdeb40">
							<div class="css-cdrjiy eeek7io3">
								<div class="e1vj7tvj0 css-yypaje eeek7io1">
									<input data-testid="search-input" placeholder="키워드를 입력하세요" type="text" maxlength="50" autocomplete="off" autocorrect="off" autocapitalize="off" class="css-xv0cfn eeek7io2" value="">
									<div class="suffix-wrapper css-kknodv">
										<span role="img" rotate="0" class="css-aah4od e1yku2jn1"><svg aria-hidden="true" fill="currentColor" focusable="false" height="24" preserveaspectratio="xMidYMid meet" viewbox="0 0 24 24" width="24" class="css-7kp13n e1yku2jn0"><path clip-rule="evenodd" d="M14.9401 16.2929C13.5799 17.3622 11.8644 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C18 11.833 17.3835 13.522 16.3466 14.871L20.7071 19.2315C21.0976 19.622 21.0976 20.2552 20.7071 20.6457C20.3166 21.0362 19.6834 21.0362 19.2929 20.6457L14.9401 16.2929ZM16 10C16 13.3137 13.3137 16 10 16C6.68629 16 4 13.3137 4 10C4 6.68629 6.68629 4 10 4C13.3137 4 16 6.68629 16 10Z" fill-rule="evenodd" xmlns="http://www.w3.org/2000/svg"></path></svg></span>
									</div>
								</div>
							</div>
						</form>
	            	</li>
	            	
	            	
	                <li class="dropdown ymm-sw " data-wow-delay="0.1s">
	                    <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">전체메뉴<b class="caret"></b></a>
	                    <ul class="dropdown-menu navbar-nav">
	                        <li>
	                            <a href="index-2">Home Style 2</a>
	                        </li>
	                        <li>
	                            <a href="index-3">Home Style 3</a>
	                        </li>
	                        <li>
	                            <a href="index-4">Home Style 4</a>
	                        </li>
	                        <li>
	                            <a href="index-5">Home Style 5</a>
	                        </li>
	                    </ul>
	                </li>
	
	                <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="properties">커뮤니티</a></li>
	                <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="event">고객센터</a></li>
	            </ul>
	        </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->
	
	<div class="slider-area">
	    <div class="slider">
	        <div id="bg-slider" class="owl-carousel owl-theme">
	
	            <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash.jpg" alt="GTA V"></div>
	            <div class="item2"><img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash.jpg" alt="The Last of us"></div>
	<!--                     <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div> -->
	
	        </div>
	    </div>
<!-- 	    <div class="slider-content"> -->
<!-- 	        <div class="row"> -->
<!-- 	            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12"> -->
<!-- 	                <h2>일상의 변화, 나만의 공간을 생각하다.</h2> -->
<!-- 	                <p>나를 위한 가족을 위한 완벽한 공간을 위한 생각 공생에서 시작하세요.</p> -->
	                
					<%-- 메인 검색창 시작 --%>
<!-- 	                <div class="search-form wow pulse" data-wow-delay="0.8s"> -->
<!-- 	                    <form action="" class=" form-inline"> -->
<!-- 	                        <button class="btn  toggle-btn" type="button"><i class="fa fa-bars"></i></button> -->
	
<!-- 	                        <div class="form-group"> -->
<!-- 	                            <input type="text" class="form-control" placeholder="Key word"> -->
<!-- 	                        </div> -->
<!-- 	                        <div class="form-group">                                    -->
<!-- 	                            <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city"> -->
	
<!-- 	                                <option>New york, CA</option> -->
<!-- 	                                <option>Paris</option> -->
<!-- 	                                <option>Casablanca</option> -->
<!-- 	                                <option>Tokyo</option> -->
<!-- 	                                <option>Marraekch</option> -->
<!-- 	                                <option>kyoto , shibua</option> -->
<!-- 	                            </select> -->
<!-- 	                        </div> -->
<!-- 	                        <div class="form-group">                                      -->
<!-- 	                            <select id="basic" class="selectpicker show-tick form-control"> -->
<!-- 	                                <option> -Status- </option> -->
<!-- 	                                <option>Rent </option> -->
<!-- 	                                <option>Boy</option> -->
<!-- 	                                <option>used</option>   -->
	
<!-- 	                            </select> -->
<!-- 	                        </div> -->
<!-- 	                        <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button> -->
	
<!-- 	                        <div style="display: none;" class="search-toggle"> -->
	
<!-- 	                            <div class="search-row">    -->
	
<!-- 	                                <div class="form-group mar-r-20"> -->
<!-- 	                                    <label for="price-range">Price range ($):</label> -->
<!-- 	                                    <input type="text" class="span2" value="" data-slider-min="0"  -->
<!-- 	                                           data-slider-max="600" data-slider-step="5"  -->
<!-- 	                                           data-slider-value="[0,450]" id="price-range" ><br /> -->
<!-- 	                                    <b class="pull-left color">2000$</b>  -->
<!-- 	                                    <b class="pull-right color">100000$</b> -->
<!-- 	                                </div> -->
<!-- 	                                End of    -->
	
<!-- 	                                <div class="form-group mar-l-20"> -->
<!-- 	                                    <label for="property-geo">Property geo (m2) :</label> -->
<!-- 	                                    <input type="text" class="span2" value="" data-slider-min="0"  -->
<!-- 	                                           data-slider-max="600" data-slider-step="5"  -->
<!-- 	                                           data-slider-value="[50,450]" id="property-geo" ><br /> -->
<!-- 	                                    <b class="pull-left color">40m</b>  -->
<!-- 	                                    <b class="pull-right color">12000m</b> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
<!-- 	                            </div> -->
	
<!-- 	                            <div class="search-row"> -->
	
<!-- 	                                <div class="form-group mar-r-20"> -->
<!-- 	                                    <label for="price-range">Min baths :</label> -->
<!-- 	                                    <input type="text" class="span2" value="" data-slider-min="0"  -->
<!-- 	                                           data-slider-max="600" data-slider-step="5"  -->
<!-- 	                                           data-slider-value="[250,450]" id="min-baths" ><br /> -->
<!-- 	                                    <b class="pull-left color">1</b>  -->
<!-- 	                                    <b class="pull-right color">120</b> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
	
<!-- 	                                <div class="form-group mar-l-20"> -->
<!-- 	                                    <label for="property-geo">Min bed :</label> -->
<!-- 	                                    <input type="text" class="span2" value="" data-slider-min="0"  -->
<!-- 	                                           data-slider-max="600" data-slider-step="5"  -->
<!-- 	                                           data-slider-value="[250,450]" id="min-bed" ><br /> -->
<!-- 	                                    <b class="pull-left color">1</b>  -->
<!-- 	                                    <b class="pull-right color">120</b> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
	
<!-- 	                            </div> -->
<!-- 	                            <br> -->
<!-- 	                            <div class="search-row">   -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Fire Place(3100) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of    -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Dual Sinks(500) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Hurricane Shutters(99) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
<!-- 	                            </div> -->
	
<!-- 	                            <div class="search-row">   -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Swimming Pool(1190) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of    -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> 2 Stories(4600) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Emergency Exit(200) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
<!-- 	                            </div>                                     -->
	
<!-- 	                            <div class="search-row">   -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Laundry Room(10073) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of    -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> Jog Path(1503) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
	
<!-- 	                                <div class="form-group"> -->
<!-- 	                                    <div class="checkbox"> -->
<!-- 	                                        <label> -->
<!-- 	                                            <input type="checkbox"> 26' Ceilings(1200) -->
<!-- 	                                        </label> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<!-- 	                                End of   -->
<!-- 	                                <br> -->
<!-- 	                                <hr> -->
<!-- 	                            </div>                              -->
<!-- 	                            <button class="btn search-btn prop-btm-sheaerch" type="submit"><i class="fa fa-search"></i></button>   -->
<!-- 	                        </div>                     -->
	
<!-- 	                    </form> -->
<!-- 	                </div> -->
					<%-- 메인 검색창 끝 --%>
					
					
	            </div>
<!-- 	        </div> -->
<!-- 	    </div> -->
<!-- 	</div> -->
	
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
                                            Property Date <i class="fa fa-sort-amount-asc"></i>					
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                            Property Price <i class="fa fa-sort-numeric-desc"></i>						
                                        </a>
                                    </li>
                                </ul><!--/ .sort-by-list-->

                                <div class="items-per-page">
                                    <label for="items_per_page"><b>Property per page :</b></label>
                                    <div class="sel">
                                        <select id="items_per_page" name="per_page">
                                            <option value="3">3</option>
                                            <option value="6">6</option>
                                            <option value="9">9</option>
                                            <option selected="selected" value="12">12</option>
                                            <option value="15">15</option>
                                            <option value="30">30</option>
                                            <option value="45">45</option>
                                            <option value="60">60</option>
                                        </select>
                                    </div><!--/ .sel-->
                                </div><!--/ .items-per-page-->
                            </div>

                            <div class="col-xs-2 layout-switcher">
                                <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                                <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                            </div><!--/ .layout-switcher-->
                        </div>

                        <div class="col-md-12 "> 
                            <div id="list-type" class="proerty-th">
                                <div class="col-sm-6 col-md-3 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
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
                                            <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="assets/img/icon/bed.png">(5)|
                                                <img src="assets/img/icon/shawer.png">(2)|
                                                <img src="assets/img/icon/cars.png">(1)  
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
	</div>
	</div>
	
	
        <!-- property area -->
        <div class="content-area recent-property" style="padding-bottom: 60px; background-color: rgb(252, 252, 252);">
            <div class="container">   
                <div class="row">
                    <div class="col-md-12  padding-top-40 properties-page">
                        <div class="col-md-12 "> 
                            <div class="col-xs-10 page-subheader sorting pl0">



                        <div class="col-md-12 "> 
                            <div id="list-type" class="proerty-th">
	        <h2>마감임박순</h2>
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
