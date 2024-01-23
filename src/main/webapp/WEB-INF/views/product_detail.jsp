<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>공생 | 공간을 생각하다</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>


        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/product_detail.css">
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
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/lightslider.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

          
        <!--End top header -->

<!--         <nav class="navbar navbar-default "> -->
<!--             <div class="container"> -->
<!--                 Brand and toggle get grouped for better mobile display -->
<!--                 <div class="navbar-header"> -->
<!--                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation"> -->
<!--                         <span class="sr-only">Toggle navigation</span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                     </button> -->
<%--                     <a class="navbar-brand" href="index"><img src="${pageContext.request.contextPath }/resources/assets/img/logo.png" alt=""></a> --%>
<!--                 </div> -->

<!--                 Collect the nav links, forms, and other content for toggling -->
<!--                 <div class="collapse navbar-collapse yamm" id="navigation"> -->
<!--                     <div class="button navbar-right"> -->
<!--                         <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register')" data-wow-delay="0.4s">Login</button> -->
<!--                         <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property')" data-wow-delay="0.5s">Submit</button> -->
<!--                     </div> -->
<!--                     <ul class="main-nav nav navbar-nav navbar-right"> -->
<!--                         <li class="dropdown ymm-sw " data-wow-delay="0.1s"> -->
<!--                             <a href="index" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home <b class="caret"></b></a> -->
<!--                             <ul class="dropdown-menu navbar-nav"> -->
<!--                                 <li> -->
<!--                                     <a href="index-2">Home Style 2</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="index-3">Home Style 3</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="index-4">Home Style 4</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="index-5">Home Style 5</a> -->
<!--                                 </li> -->

<!--                             </ul> -->
<!--                         </li> -->

<!--                         <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties">Properties</a></li> -->
<!--                         <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property">Property</a></li> -->
<!--                         <li class="dropdown yamm-fw" data-wow-delay="0.1s"> -->
<!--                             <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a> -->
<!--                             <ul class="dropdown-menu"> -->
<!--                                 <li> -->
<!--                                     <div class="yamm-content"> -->
<!--                                         <div class="row"> -->
<!--                                             <div class="col-sm-3"> -->
<!--                                                 <h5>Home pages</h5> -->
<!--                                                 <ul> -->
<!--                                                     <li> -->
<!--                                                         <a href="index">Home Style 1</a> -->
<!--                                                     </li> -->
<!--                                                     <li> -->
<!--                                                         <a href="index-2">Home Style 2</a> -->
<!--                                                     </li> -->
<!--                                                     <li> -->
<!--                                                         <a href="index-3">Home Style 3</a> -->
<!--                                                     </li> -->
<!--                                                     <li> -->
<!--                                                         <a href="index-4">Home Style 4</a> -->
<!--                                                     </li> -->
<!--                                                     <li> -->
<!--                                                         <a href="index-5">Home Style 5</a> -->
<!--                                                     </li> -->
<!--                                                 </ul> -->
<!--                                             </div> -->
<!--                                             <div class="col-sm-3"> -->
<!--                                                 <h5>Pages and blog</h5> -->
<!--                                                 <ul> -->
<!--                                                     <li><a href="blog">Blog listing</a>  </li> -->
<!--                                                     <li><a href="single">Blog Post (full)</a>  </li> -->
<!--                                                     <li><a href="single-right">Blog Post (Right)</a>  </li> -->
<!--                                                     <li><a href="single-left">Blog Post (left)</a>  </li> -->
<!--                                                     <li><a href="contact">Contact style (1)</a> </li> -->
<!--                                                     <li><a href="contact-3">Contact style (2)</a> </li> -->
<!--                                                     <li><a href="contact_3">Contact style (3)</a> </li> -->
<!--                                                     <li><a href="faq">FAQ page</a> </li>  -->
<!--                                                     <li><a href="404">404 page</a>  </li> -->
<!--                                                 </ul> -->
<!--                                             </div> -->
<!--                                             <div class="col-sm-3"> -->
<!--                                                 <h5>Property</h5> -->
<!--                                                 <ul> -->
<!--                                                     <li><a href="property-1">Property pages style (1)</a> </li> -->
<!--                                                     <li><a href="property-2">Property pages style (2)</a> </li> -->
<!--                                                     <li><a href="property-3">Property pages style (3)</a> </li> -->
<!--                                                 </ul> -->

<!--                                                 <h5>Properties list</h5> -->
<!--                                                 <ul> -->
<!--                                                     <li><a href="properties">Properties list style (1)</a> </li>  -->
<!--                                                     <li><a href="properties-2">Properties list style (2)</a> </li>  -->
<!--                                                     <li><a href="properties-3">Properties list style (3)</a> </li>  -->
<!--                                                 </ul>                                                -->
<!--                                             </div> -->
<!--                                             <div class="col-sm-3"> -->
<!--                                                 <h5>Property process</h5> -->
<!--                                                 <ul>  -->
<!--                                                     <li><a href="submit-property">Submit - step 1</a> </li> -->
<!--                                                     <li><a href="submit-property">Submit - step 2</a> </li> -->
<!--                                                     <li><a href="submit-property">Submit - step 3</a> </li>  -->
<!--                                                 </ul> -->
<!--                                                 <h5>User account</h5> -->
<!--                                                 <ul> -->
<!--                                                     <li><a href="register">Register / login</a>   </li> -->
<!--                                                     <li><a href="user-properties">Your properties</a>  </li> -->
<!--                                                     <li><a href="submit-property">Submit property</a>  </li> -->
<!--                                                     <li><a href="change-password">Change password</a> </li> -->
<!--                                                     <li><a href="user-profile">Your profile</a>  </li> -->
<!--                                                 </ul> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     /.yamm-content -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                         </li> -->

<!--                         <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact">Contact</a></li> -->
<!--                     </ul> -->
<!--                 </div>/.navbar-collapse -->
<!--             </div>/.container-fluid -->
<!--         </nav> -->
        <!-- End of nav bar -->
        
        <jsp:include page="top.jsp"/>


        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-1 ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                            <i class="fa fa-star-o"></i>
                                        </a>
                                    </div> 

                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/table1.jpg"> 
                                            <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/table1.jpg" />
                                        </li>
                                        <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/table2.png"> 
                                            <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/table2.png" />
                                        </li>
                                        <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/table3.png"> 
                                            <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/table3.png" />
                                        </li>
<%--                                         <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/property4.jpg">  --%>
<%--                                             <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/property4.jpg" /> --%>
<!--                                         </li>                                          -->
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single-property-wrapper">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">[원데이 클래스] 나만의 테이블 만들기</h1>
                                <span class="property-price pull-right">65,000원</span>
                            </div>
                            
                            
                            
                            
                            		<div class="sns-grade">
										<p class="grade">
												<c:choose>
													<c:when test="${empty review_score}">
														<span class="tit">0명의 평가</span>
													</c:when>
													<c:otherwise>
														<span class="point">${review_score.reviewCount}명의 평가 <strong id="lbl_review_point"> ${review_score.avg_score} </strong></span>
														<span class="star"> <i style="width: ${review_score.avg_score *20}%"></i></span>
													</c:otherwise>
												</c:choose>
										</p>
									</div>
									<div class="favor-pic-appra">
										<div class="favor_container">
											<c:choose>
												<c:when test="${isLiked eq 'true'}">
													<div class="favor_on">
													<span class="favorite_button"> 좋아요 </span>
													</div>
												</c:when>
												<c:otherwise>
													<div class="favor_off">
<!-- 													<span class="favorite_button"> 좋아요 </span> -->
													</div>
												</c:otherwise>
											</c:choose>
										</div>
										<div>
											<c:if test="${isReviewWriteable}">
												<a href="../review/write?com_id=${company.com_id}&res_idx=${res.res_idx}"><button class="appra Profile__Evaluation">
													<span> 평가하기 </span>
												</button></a>
											</c:if>
										</div>
									</div>
                            
                            
                            

                            <div class="property-meta entry-meta clearfix ">   

                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-tag">                                        
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/sale-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Status</span>
                                        <span class="property-info-value">For Sale</span>
                                    </span>
                                </div>

                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info icon-area">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/room-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Area</span>
                                        <span class="property-info-value">3500<b class="property-info-unit">Sq Ft</b></span>
                                    </span>
                                </div>

                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bed">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/bed-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Bedrooms</span>
                                        <span class="property-info-value">3</span>
                                    </span>
                                </div>

                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bed">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/cars-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Car garages</span>
                                        <span class="property-info-value">1</span>
                                    </span>
                                </div>

                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bath">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/os-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Bathrooms</span>
                                        <span class="property-info-value">3.5</span>
                                    </span>
                                </div>

                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-garage">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/room-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Garages</span>
                                        <span class="property-info-value">2</span>
                                    </span>
                                </div>
                                
                                <div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-garage">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/icon/shawer-orange.png">
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Garages</span>
                                        <span class="property-info-value">2</span>
                                    </span>
                                </div>


                            </div>
              





                        <div class="similar-post-section padding-top-40"> 
                            <div id="prop-smlr-slide_0"> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review1.png"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <a href="">
                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle">
                                        </a>>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span>
                                        
                                    </div>
                                </div> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review1.png"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <a href="">
                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle">
                                        </a>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span>

                                    </div>
                                </div> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review2.png"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <a href="">
                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle">
                                        </a>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span>
                                    </div>
                                </div> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review2.png"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <a href="">
                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle">
                                        </a>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span>
                                    </div>
                                </div> 
                            </div>
                        </div>



<!--                            
                            <!-- End additional-details area  -->

                            <div class="section property-features">      

                                <h4 class="s-property-title">Features</h4>                            
                                <ul>
                                    <li><a href="properties">Swimming Pool</a></li>   
                                    <li><a href="properties">3 Stories</a></li>
                                    <li><a href="properties">Central Cooling</a></li>
                                    <li><a href="properties">Jog Path 2</a></li>
                                    <li><a href="properties">2 Lawn</a></li>
                                    <li><a href="properties">Bike Path</a></li>
                                </ul>

                            </div>
                            <!-- End features area  -->

                            <div class="section property-video"> 
                                <h4 class="s-property-title">Property Video</h4> 
                                <div class="video-thumb">
                                    <a class="video-popup" href="yout" title="Virtual Tour">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/property-video.jpg" class="img-responsive wp-post-image" alt="Exterior">            
                                    </a>
                                </div>
                            </div>
                            <!-- End video area  -->
                            
                            

  
                            <!-- End video area  -->
                            
                        </div>
                    </div>


                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">홍길동</a><br>
                                                    <span>테이블 장인</span>        
                                                </h3>
                                                <div class="dealer-social-media">
                                                    <a class="twitter" target="_blank" href="">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                    <a class="facebook" target="_blank" href="">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                    <a class="gplus" target="_blank" href="">
                                                        <i class="fa fa-google-plus"></i>
                                                    </a>
                                                    <a class="linkedin" target="_blank" href="">
                                                        <i class="fa fa-linkedin"></i>
                                                    </a> 
                                                    <a class="instagram" target="_blank" href="">
                                                        <i class="fa fa-instagram"></i>
                                                    </a>       
                                                </div>

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i> 서울 성동구 왕십리로10길 5-6 1층 와플목공방</li>
                                                <li><i class="pe-7s-mail strong"> </i>  email@yourcompany.com</li>
                                                <li><i class="pe-7s-call strong"> </i> 02-1133-1314</li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>

                              

                           

                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">클래스 예약하기</h3>
                                </div>
                                <div class="panel-body search-widget">
                                    <form action="" class=" form-inline"> 
                                    
									  <label for="reservation-date">예약 날짜:</label>
									  <input type="date" id="reservation-date" name="reservation-date">
									  
									  
									  <div>
									  <label for="reservation-date">인원 선택:</label><br>
										  <button id="minusBtn">-</button>
										  <input type="text" id="count" value="1">
										  <button id="plusBtn">+</button>
									</div>
									
									<script>
									  var count = document.getElementById("count");
									  var minusBtn = document.getElementById("minusBtn");
									  var plusBtn = document.getElementById("plusBtn");
									
									  minusBtn.onclick = function() {
									    if(count.value > 1) {
									      count.value = parseInt(count.value) - 1;
									    }
									  }
									
									  plusBtn.onclick = function() {
									    count.value = parseInt(count.value) + 1;
									  }
									</script>
									
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="장바구니 담기">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="submit" value="신청하기">
                                        
<!--                                         <fieldset> -->
<!--                                             <div class="row"> -->
<!--                                                 <div class="col-xs-6"> -->

<!--                                                     <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select Your City"> -->

<!--                                                         <option>New york, CA</option> -->
<!--                                                         <option>Paris</option> -->
<!--                                                         <option>Casablanca</option> -->
<!--                                                         <option>Tokyo</option> -->
<!--                                                         <option>Marraekch</option> -->
<!--                                                         <option>kyoto , shibua</option> -->
<!--                                                     </select> -->
<!--                                                 </div> -->
<!--                                                 <div class="col-xs-6"> -->

<!--                                                     <select id="basic" class="selectpicker show-tick form-control"> -->
<!--                                                         <option> -Status- </option> -->
<!--                                                         <option>Rent </option> -->
<!--                                                         <option>Boy</option> -->
<!--                                                         <option>used</option>   -->

<!--                                                     </select> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </fieldset> -->

                                                                 
                                    </form>
                                </div>
                            </div>

                        </aside>
                    </div>
                </div>

            </div>
        </div>


          <!-- Footer area-->
        <div class="footer-area">
			<jsp:include page="bottom.jsp"/>
		</div>
<!--         <div class="footer-area"> -->

<!--             <div class=" footer"> -->
<!--                 <div class="container"> -->
<!--                     <div class="row"> -->

<!--                         <div class="col-md-3 col-sm-6 wow fadeInRight animated"> -->
<!--                             <div class="single-footer"> -->
<!--                                 <h4>About us </h4> -->
<!--                                 <div class="footer-title-line"></div> -->

<%--                                 <img src="${pageContext.request.contextPath }/resources/assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s"> --%>
<!--                                 <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p> -->
<!--                                 <ul class="footer-adress"> -->
<!--                                     <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li> -->
<!--                                     <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li> -->
<!--                                     <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li> -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-md-3 col-sm-6 wow fadeInRight animated"> -->
<!--                             <div class="single-footer"> -->
<!--                                 <h4>Quick links </h4> -->
<!--                                 <div class="footer-title-line"></div> -->
<!--                                 <ul class="footer-menu"> -->
<!--                                     <li><a href="properties">Properties</a>  </li>  -->
<!--                                     <li><a href="#">Services</a>  </li>  -->
<!--                                     <li><a href="submit-property">Submit property </a></li>  -->
<!--                                     <li><a href="contact">Contact us</a></li>  -->
<!--                                     <li><a href="faq">fqa</a>  </li>  -->
<!--                                     <li><a href="faq">Terms </a>  </li>  -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-md-3 col-sm-6 wow fadeInRight animated"> -->
<!--                             <div class="single-footer"> -->
<!--                                 <h4>Last News</h4> -->
<!--                                 <div class="footer-title-line"></div> -->
<!--                                 <ul class="footer-blog"> -->
<!--                                     <li> -->
<!--                                         <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0"> -->
<!--                                             <a href="single"> -->
<%--                                                 <img src="${pageContext.request.contextPath }/resources/assets/img/demo/small-proerty-2.jpg"> --%>
<!--                                             </a> -->
<!--                                             <span class="blg-date">12-12-2016</span> -->

<!--                                         </div> -->
<!--                                         <div class="col-md-8  col-sm-8 col-xs-8  blg-entry"> -->
<!--                                             <h6> <a href="single">Add news functions </a></h6>  -->
<!--                                             <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p> -->
<!--                                         </div> -->
<!--                                     </li>  -->

<!--                                     <li> -->
<!--                                         <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0"> -->
<!--                                             <a href="single"> -->
<%--                                                 <img src="${pageContext.request.contextPath }/resources/assets/img/demo/small-proerty-2.jpg"> --%>
<!--                                             </a> -->
<!--                                             <span class="blg-date">12-12-2016</span> -->

<!--                                         </div> -->
<!--                                         <div class="col-md-8  col-sm-8 col-xs-8  blg-entry"> -->
<!--                                             <h6> <a href="single">Add news functions </a></h6>  -->
<!--                                             <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p> -->
<!--                                         </div> -->
<!--                                     </li>  -->

<!--                                     <li> -->
<!--                                         <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0"> -->
<!--                                             <a href="single"> -->
<%--                                                 <img src="${pageContext.request.contextPath }/resources/assets/img/demo/small-proerty-2.jpg"> --%>
<!--                                             </a> -->
<!--                                             <span class="blg-date">12-12-2016</span> -->

<!--                                         </div> -->
<!--                                         <div class="col-md-8  col-sm-8 col-xs-8  blg-entry"> -->
<!--                                             <h6> <a href="single">Add news functions </a></h6>  -->
<!--                                             <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p> -->
<!--                                         </div> -->
<!--                                     </li>  -->


<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-md-3 col-sm-6 wow fadeInRight animated"> -->
<!--                             <div class="single-footer news-letter"> -->
<!--                                 <h4>Stay in touch</h4> -->
<!--                                 <div class="footer-title-line"></div> -->
<!--                                 <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p> -->

<!--                                 <form> -->
<!--                                     <div class="input-group"> -->
<!--                                         <input class="form-control" type="text" placeholder="E-mail ... "> -->
<!--                                         <span class="input-group-btn"> -->
<!--                                             <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button> -->
<!--                                         </span> -->
<!--                                     </div> -->
<!--                                     /input-group -->
<!--                                 </form>  -->

<!--                                 <div class="social pull-right">  -->
<!--                                     <ul> -->
<!--                                         <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li> -->
<!--                                         <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li> -->
<!--                                         <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li> -->
<!--                                         <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li> -->
<!--                                         <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li> -->
<!--                                     </ul>  -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->

<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--             <div class="footer-copy text-center"> -->
<!--                 <div class="container"> -->
<!--                     <div class="row"> -->
<!--                         <div class="pull-left"> -->
<!--                             <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span>  -->
<!--                         </div>  -->
<!--                         <div class="bottom-menu pull-right">  -->
<!--                             <ul>  -->
<!--                                 <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li> -->
<!--                                 <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li> -->
<!--                                 <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li> -->
<!--                                 <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li> -->
<!--                             </ul>  -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--         </div> -->
          
        
        
        <script src="${pageContext.request.contextPath }/resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
        <script type="text/javascript" src="${pageContext.request.contextPath }/resources/assets/js/lightslider.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

        <script>
            $(document).ready(function () {

                $('#image-gallery').lightSlider({
                    gallery: true,
                    item: 1,
                    thumbItem: 9,
                    slideMargin: 0,
                    speed: 500,
                    auto: true,
                    loop: true,
                    onSliderLoad: function () {
                        $('#image-gallery').removeClass('cS-hidden');
                    }
                });
            });
        </script>

    </body>
</html>