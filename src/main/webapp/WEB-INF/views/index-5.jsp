<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | 공간을 생각하다</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>


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
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span><i class="pe-7s-call"></i> +1 234 567 7890</span>
                                <span><i class="pe-7s-mail"></i> your@company.com</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-vine"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>            
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index"><img src="${pageContext.request.contextPath }/resources/assets/img/logo.png" alt=""></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register')" data-wow-delay="0.4s">Login</button>
                        <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property')" data-wow-delay="0.5s">Submit</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home <b class="caret"></b></a>
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

                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties">Properties</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property">Property</a></li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h5>Home pages</h5>
                                                <ul>
                                                    <li>
                                                        <a href="index">Home Style 1</a>
                                                    </li>
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
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Pages and blog</h5>
                                                <ul>
                                                    <li><a href="blog">Blog listing</a>  </li>
                                                    <li><a href="single">Blog Post (full)</a>  </li>
                                                    <li><a href="single-right">Blog Post (Right)</a>  </li>
                                                    <li><a href="single-left">Blog Post (left)</a>  </li>
                                                    <li><a href="contact">Contact style (1)</a> </li>
                                                    <li><a href="contact-3">Contact style (2)</a> </li>
                                                    <li><a href="contact_3">Contact style (3)</a> </li>
                                                    <li><a href="faq">FAQ page</a> </li> 
                                                    <li><a href="404">404 page</a>  </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property</h5>
                                                <ul>
                                                    <li><a href="property-1">Property pages style (1)</a> </li>
                                                    <li><a href="property-2">Property pages style (2)</a> </li>
                                                    <li><a href="property-3">Property pages style (3)</a> </li>
                                                </ul>

                                                <h5>Properties list</h5>
                                                <ul>
                                                    <li><a href="properties">Properties list style (1)</a> </li> 
                                                    <li><a href="properties-2">Properties list style (2)</a> </li> 
                                                    <li><a href="properties-3">Properties list style (3)</a> </li> 
                                                </ul>                                               
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property process</h5>
                                                <ul> 
                                                    <li><a href="submit-property">Submit - step 1</a> </li>
                                                    <li><a href="submit-property">Submit - step 2</a> </li>
                                                    <li><a href="submit-property">Submit - step 3</a> </li> 
                                                </ul>
                                                <h5>User account</h5>
                                                <ul>
                                                    <li><a href="register">Register / login</a>   </li>
                                                    <li><a href="user-properties">Your properties</a>  </li>
                                                    <li><a href="submit-property">Submit property</a>  </li>
                                                    <li><a href="change-password">Change password</a> </li>
                                                    <li><a href="user-profile">Your profile</a>  </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.yamm-content -->
                                </li>
                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact">Contact</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->


        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="${pageContext.request.contextPath }/resources/assets/img/slide1/slider-image-1.jpg" alt="Mirror Edge"></div> 
                    <div class="item"><img src="${pageContext.request.contextPath }/resources/assets/img/slide1/slider-image-2.jpg" alt="The Last of us"></div> 
                    <div class="item"><img src="${pageContext.request.contextPath }/resources/assets/img/slide1/slider-image-4.jpg" alt="GTA V"></div>   

                </div>
            </div>
            <div class="container slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>property Searching Just Got So Easy</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam velit adipisci quibusdam aliquam teneturo!</p>
                        <div class="search-form wow pulse" data-wow-delay="0.8s">

                            <form action="" class=" form-inline">
                                <button class="btn  toggle-btn" type="button"><i class="fa fa-bars"></i></button>

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Key word">
                                </div>
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">

                                        <option>New york, CA</option>
                                        <option>Paris</option>
                                        <option>Casablanca</option>
                                        <option>Tokyo</option>
                                        <option>Marraekch</option>
                                        <option>kyoto , shibua</option>
                                    </select>
                                </div>
                                <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control">
                                        <option> -Status- </option>
                                        <option>Rent </option>
                                        <option>Boy</option>
                                        <option>used</option>  

                                    </select>
                                </div>
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

                                <div style="display: none;" class="search-toggle">

                                    <div class="search-row">   

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">Price range ($):</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[0,450]" id="price-range" ><br />
                                            <b class="pull-left color">2000$</b> 
                                            <b class="pull-right color">100000$</b>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group mar-l-20">
                                            <label for="property-geo">Property geo (m2) :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[50,450]" id="property-geo" ><br />
                                            <b class="pull-left color">40m</b> 
                                            <b class="pull-right color">12000m</b>
                                        </div>
                                        <!-- End of  --> 
                                    </div>

                                    <div class="search-row">

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">Min baths :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-baths" ><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group mar-l-20">
                                            <label for="property-geo">Min bed :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-bed" ><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                    </div>
                                    <br>
                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Fire Place(3100)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Dual Sinks(500)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Hurricane Shutters(99)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>

                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Swimming Pool(1190)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 2 Stories(4600)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Emergency Exit(200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>                                    

                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Laundry Room(10073)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Jog Path(1503)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
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


          <!-- Footer area-->
        <div class="footer-area">

            <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>About us </h4>
                                <div class="footer-title-line"></div>

                                <img src="${pageContext.request.contextPath }/resources/assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
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
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/demo/small-proerty-2.jpg">
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
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/demo/small-proerty-2.jpg">
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
                                                <img src="${pageContext.request.contextPath }/resources/assets/img/demo/small-proerty-2.jpg">
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
          
       
          <script src="${pageContext.request.contextPath }/resources/assets/js/modernizr-2.6.2.min.js"></script>

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

        <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
       
    </body>
</html>