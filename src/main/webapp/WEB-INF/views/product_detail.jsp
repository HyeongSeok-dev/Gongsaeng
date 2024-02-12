
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
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
<%--         <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/icheck.min_all.css"> --%>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price-range.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.theme.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.transitions.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/lightslider.min.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slider.css"> 
        
          
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css"> 
       	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css"> 
      
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css"> 
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/product_detail.css">
		<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">   
      
      
      
        <!-- js  -->
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
        <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/product_detail.js"></script>
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
        
        <jsp:include page="./inc/top.jsp"/>


        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property sticky" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-1 ">
                        <div class="row">
                            <div class="light-slide-item" >            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                            <i class="fa fa-star-o"></i>
                                        </a>
                                    </div> 
<!-- cS-hidden -->
                                    <ul id="image-gallery" class="gallery list-unstyled ">
                                        <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/table1-1.png"> 
                                            <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/table1-1.png" />
                                        </li>
                                        <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/table2.png"> 
                                            <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/table2.png" />
                                        </li>
                                        <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/table3.png"> 
                                            <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/table3.png" />
                                        </li>
<%--                                         <li data-thumb="${pageContext.request.contextPath }/resources/assets/img/property-1/다운로드.jpg">  --%>
<%--                                             <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/다운로드.jpg" /> --%>
<!--                                         </li> -->
                                    </ul>

                                </div>
                            </div>               
                            
                        </div>

                        <div class="single-property-wrapper">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${cla.class_title }</h1>
                                <span class="property-price pull-right">${cla.class_price }원</span>
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
													<span class="favorite_button"> 좋아요 </span>
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
                            
                            
                            

<!--                             <div class="property-meta entry-meta clearfix ">    -->

<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info-icon icon-tag">                                         -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/sale-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Status</span> -->
<!--                                         <span class="property-info-value">For Sale</span> -->
<!--                                     </span> -->
<!--                                 </div> -->

<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info icon-area"> -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/room-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Area</span> -->
<!--                                         <span class="property-info-value">3500<b class="property-info-unit">Sq Ft</b></span> -->
<!--                                     </span> -->
<!--                                 </div> -->

<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info-icon icon-bed"> -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/bed-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Bedrooms</span> -->
<!--                                         <span class="property-info-value">3</span> -->
<!--                                     </span> -->
<!--                                 </div> -->

<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info-icon icon-bed"> -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/cars-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Car garages</span> -->
<!--                                         <span class="property-info-value">1</span> -->
<!--                                     </span> -->
<!--                                 </div> -->

<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info-icon icon-bath"> -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/os-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Bathrooms</span> -->
<!--                                         <span class="property-info-value">3.5</span> -->
<!--                                     </span> -->
<!--                                 </div> -->

<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info-icon icon-garage"> -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/room-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Garages</span> -->
<!--                                         <span class="property-info-value">2</span> -->
<!--                                     </span> -->
<!--                                 </div> -->
                                
<!--                                 <div class="col-xs-6 col-sm-3 col-md-3 p-b-15"> -->
<!--                                     <span class="property-info-icon icon-garage"> -->
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/icon/shawer-orange.png"> --%>
<!--                                     </span> -->
<!--                                     <span class="property-info-entry"> -->
<!--                                         <span class="property-info-label">Garages</span> -->
<!--                                         <span class="property-info-value">2</span> -->
<!--                                     </span> -->
<!--                                 </div> -->


<!--                             </div> -->






              <div class="similar-post-section padding-top-40 gdIWGV" > 
                            <div id="prop-smlr-slide_0"> 
                                <c:forEach var="review" items="${reviews}" varStatus="status">
  								<c:if test="${status.index < 5}">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review1.png"></a>
<%--                                         <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/upload/${review.review_img_1}"></a> --%>
                                        
                                    </div>
                                    <div class="item-entry overflow abc">
	                                        <a href="">
	                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle reviewProImg">
<%-- 	                                 	       <img src="${pageContext.request.contextPath }/resources/upload/${review.}" class="img-circle reviewProImg"> --%>
	                                        </a>
	                                        <h5><a href="property-1.html">${review.member_nick}</a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left">${review.review_content}</span>
                                    </div>
                                </div> 
                                        </c:if>
									</c:forEach>
                            </div>
                            <div class="ReviewSection__LinkWrapper-h5kv09-1 dzAqdb">
								<a class="ReviewSection__StyledLink-h5kv09-2 PIawM" href="${pageContext.request.contextPath }/review/detail?class_idx=${cla.class_idx}">3개 후기 더보기
									<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='none' viewBox='0 0 12 12'%3E %3Cpath fill='%230075EF' fill-rule='evenodd' d='M3.97 1.72c.293-.293.767-.293 1.06 0L9.31 6l-4.28 4.28c-.293.293-.767.293-1.06 0-.293-.293-.293-.767 0-1.06L7.19 6 3.97 2.78c-.293-.293-.293-.767 0-1.06z' clip-rule='evenodd'/%3E %3C/svg%3E" alt="arrow-blue">
								</a>
							</div>
                        </div>






              


<!--                         <div class="similar-post-section padding-top-40 gdIWGV" >  -->
<!--                             <div id="prop-smlr-slide_0">  -->
<!--                                 <div class="box-two proerty-item"> -->
<!--                                     <div class="item-thumb"> -->
<%--                                         <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review1.png"></a> --%>
<!--                                     </div> -->
<!--                                     <div class="item-entry overflow abc"> -->
<!-- 	                                        <a href=""> -->
<%-- 	                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle reviewProImg"> --%>
<!-- 	                                        </a> -->
<!-- 	                                        <h5><a href="property-1.html">작성자 닉네임</a></h5> -->
<!--                                         <div class="dot-hr"></div> -->
<!--                                         <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span> -->
<!--                                     </div> -->
<!--                                 </div>  -->
<!--                                 <div class="box-two proerty-item"> -->
<!--                                     <div class="item-thumb"> -->
<%--                                         <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review1.png"></a> --%>
<!--                                     </div> -->
<!--                                     <div class="item-entry overflow abc"> -->
<!-- 	                                        <a href=""> -->
<%-- 	                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle reviewProImg"> --%>
<!-- 	                                        </a> -->
<!-- 	                                        <h5><a href="property-1.html">작성자 닉네임</a></h5> -->
<!--                                         <div class="dot-hr"></div> -->
<!--                                         <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span> -->
<!--                                     </div> -->
<!--                                 </div>  -->
<!--                                 <div class="box-two proerty-item"> -->
<!--                                     <div class="item-thumb"> -->
<!--                                         <a href="property-1.html" > -->
<%--                                         	<img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review2.png"></a> --%>
<!--                                     </div> -->
<!--                                     <div class="item-entry overflow abc"> -->
<!-- 	                                        <a href=""> -->
<%-- 	                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle reviewProImg"> --%>
<!-- 	                                        </a> -->
<!-- 	                                        <h5><a href="property-1.html">작성자 닉네임</a></h5> -->
<!--                                         <div class="dot-hr"></div> -->
<!--                                         <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span> -->
<!--                                     </div> -->
<!--                                 </div>  -->
<!--                                 <div class="box-two proerty-item"> -->
<!--                                     <div class="item-thumb"> -->
<%--                                         <a href="property-1.html" ><img src="${pageContext.request.contextPath }/resources/assets/img/property-1/review2.png"></a> --%>
<!--                                     </div> -->
<!--                                     <div class="item-entry overflow abc"> -->
<!-- 	                                        <a href=""> -->
<%-- 	                                 	       <img src="${pageContext.request.contextPath }/resources/assets/img/client-face1.png" class="img-circle reviewProImg"> --%>
<!-- 	                                        </a> -->
<!-- 	                                        <h5><a href="property-1.html">작성자 닉네임</a></h5> -->
<!--                                         <div class="dot-hr"></div> -->
<!--                                         <span class="pull-left">여기는 리뷰를 나타내는 곳입니다~!</span> -->
<!--                                     </div> -->
<!--                                 </div>  -->
<!--                             </div> -->
<!--                             <div class="ReviewSection__LinkWrapper-h5kv09-1 dzAqdb"> -->
<!-- 								<a class="ReviewSection__StyledLink-h5kv09-2 PIawM" href="../review/detail">3개 후기 더보기 -->
<!-- 									<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='none' viewBox='0 0 12 12'%3E %3Cpath fill='%230075EF' fill-rule='evenodd' d='M3.97 1.72c.293-.293.767-.293 1.06 0L9.31 6l-4.28 4.28c-.293.293-.767.293-1.06 0-.293-.293-.293-.767 0-1.06L7.19 6 3.97 2.78c-.293-.293-.293-.767 0-1.06z' clip-rule='evenodd'/%3E %3C/svg%3E" alt="arrow-blue"> -->
<!-- 								</a> -->
<!-- 							</div> -->
<!--                         </div> -->



<!--                            
                            <!-- End additional-details area  -->

<!--                             <div class="section property-features">       -->

<!--                                 <h4 class="s-property-title">Features</h4>                             -->
<!--                                 <ul> -->
<!--                                     <li><a href="properties">Swimming Pool</a></li>    -->
<!--                                     <li><a href="properties">3 Stories</a></li> -->
<!--                                     <li><a href="properties">Central Cooling</a></li> -->
<!--                                     <li><a href="properties">Jog Path 2</a></li> -->
<!--                                     <li><a href="properties">2 Lawn</a></li> -->
<!--                                     <li><a href="properties">Bike Path</a></li> -->
<!--                                 </ul> -->

<!--                             </div> -->
<!--                             End features area  -->
							<!-- 클래스 소개 -->
                            <div class="section property-video"> 
                                <h4 class="s-property-title">클래스 소개</h4> 
                                <div class="video-thumb">
                                    <a class="video-popup" href="yout" title="Virtual Tour">
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/detail4.webp" class="img-responsive wp-post-image" alt="Exterior">            
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/detail3.webp" class="img-responsive wp-post-image" alt="Exterior">            
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/detail1.webp" class="img-responsive wp-post-image" alt="Exterior">            
                                        <img src="${pageContext.request.contextPath }/resources/assets/img/detail2.webp" class="img-responsive wp-post-image" alt="Exterior">            
<%--                                         <img src="${pageContext.request.contextPath }/resources/assets/img/detail5.png" class="img-responsive wp-post-image" alt="Exterior">             --%>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
					<!-- side -->
                    <div class="col-md-4 p0 fixed">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget backcolor">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath }/resources/assets/img/property-1/다운로드.jpg" class="img-circle ProfileImg">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
 	                                               <!-- 업체이름 -->
                                                    <a href="">스윙스 목공방</a><br>
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



<!-- 										<div class="Profile-sc-18xe7ny-1 hZQCDJ"> -->
<!-- 											<div class="Profile__Info-sc-18xe7ny-2 ixjLkJ"> -->
<!-- 												<div class="Profile__ProfileImage-sc-18xe7ny-3 hEglGi"> -->
<!-- 													<a href="/hosts/10841"> -->
<!-- 														<div class="Image__Wrapper-v97gyx-0 gDuKGF"> -->
<!-- 															<img class="Image__StyledImageLoader-v97gyx-2 bUFcfh" width="56" height="56" src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_2,f_auto,q_auto,w_56/KakaoTalk_20200321_232623767_ckrt7i"> -->
<!-- 														<div class="Fade__Wrapper-sc-1s0ipfq-0 koasSX" style="opacity: 1; display: block;"> -->
<!-- 															<div class="Ratio " style="display: block;"> -->
<!-- 																<div class="Ratio-ratio " style="height: 0px; position: relative; width: 100%; padding-top: 100%;"> -->
<!-- 																	<div class="Ratio-content " style="height: 100%; left: 0px; position: absolute; top: 0px; width: 100%;"> -->
<!-- 																		<img alt="호스트 프로필 이미지" class="Image__StyledImage-v97gyx-1 VUNpu" width="56" height="56" src="https://res.cloudinary.com/frientrip/image/upload/ar_1:1,c_fill,dpr_2,f_auto,q_auto,w_56/KakaoTalk_20200321_232623767_ckrt7i"> -->
<!-- 																	</div> -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 														</div> -->
<!-- 														</div> -->
<!-- 													</a> -->
<!-- 												</div> -->
<!-- 												<div class="Profile__ProfileContent-sc-18xe7ny-5 fMiunS"> -->
<!-- 													<div class="Profile__HostNameWrapper-sc-18xe7ny-6 jYAYJP"> -->
<!-- 														<a href="/hosts/10841"> -->
<!-- 														<span class="Profile__NickName-sc-18xe7ny-7 cZgpqN"> -->
<!-- 															<span>비비우드스튜디오</span> -->
<!-- 															<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='none' viewBox='0 0 16 16'%3E %3Cpath stroke='%23333' stroke-linecap='round' stroke-width='1.5' d='M6 3l5 5-5 5'/%3E %3C/svg%3E" alt="arrow-right"> -->
<!-- 														</span> -->
<!-- 														</a> -->
<!-- 													</div> -->
<!-- 													<span class="Profile__Stat-sc-18xe7ny-9 cUDkmC">프립 3<span> -->
<!-- 													|</span>후기 247<span> -->
<!-- 													|</span>찜 769</span> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 											<button class="Button-bqxlp0-0 ButtonWish__StyledButton-sc-7k8l60-0 eZGjgL enp_mobon_cart" width="32px" height="32px"> -->
<!-- 												<img src="data:image/svg+xml,%3Csvg width='32' height='32' viewBox='0 0 32 32' fill='none' xmlns='http://www.w3.org/2000/svg'%3E %3Cg clip-path='url(%23clip0_2519_490)'%3E %3Cmask id='mask0_2519_490' style='mask-type:luminance' maskUnits='userSpaceOnUse' x='0' y='0' width='32' height='32'%3E %3Cpath d='M32 0H0V32H32V0Z' fill='white'/%3E %3C/mask%3E %3Cg mask='url(%23mask0_2519_490)'%3E %3Cmask id='mask1_2519_490' style='mask-type:luminance' maskUnits='userSpaceOnUse' x='0' y='0' width='32' height='32'%3E %3Cpath d='M32 0H0V32H32V0Z' fill='white'/%3E %3C/mask%3E %3Cg mask='url(%23mask1_2519_490)'%3E %3Cpath d='M28 12C28 16.1889 24.9781 19.7916 22.063 22.3047C20.2579 23.8469 18.2982 25.1986 16.2154 26.3381C16.2027 26.3441 16.1898 26.3505 16.1774 26.357C16.1226 26.3861 16.0613 26.4013 15.999 26.4015C15.9401 26.4015 15.882 26.3881 15.8293 26.362L15.8094 26.3511L15.784 26.3378C15.1694 26.0033 14.5659 25.649 13.9743 25.2754C12.5586 24.3847 11.2086 23.3914 9.93704 22.3049C7.02334 19.7914 4.00003 16.1887 4 12C4.00014 10.6766 4.41054 9.38568 5.17469 8.30517C5.93885 7.22466 7.01918 6.4076 8.26696 5.96651C9.51472 5.52542 10.8685 5.482 12.142 5.84222C13.4155 6.20245 14.546 6.94859 15.3778 7.97794C15.5297 8.16589 15.7584 8.2751 16 8.2751C16.2416 8.2751 16.4704 8.16589 16.6222 7.97794C17.4541 6.94859 18.5845 6.20245 19.8579 5.84222C21.1315 5.482 22.4853 5.52542 23.7331 5.96651C24.9808 6.4076 26.0611 7.22466 26.8253 8.30517C27.5894 9.38568 27.9998 10.6766 28 12Z' stroke='%23333333' stroke-width='1.5' stroke-linejoin='round'/%3E %3C/g%3E %3C/g%3E %3C/g%3E %3Cdefs%3E %3CclipPath id='clip0_2519_490'%3E %3Crect width='32' height='32' fill='white'/%3E %3C/clipPath%3E %3C/defs%3E %3C/svg%3E" alt="찜하기"> -->
<!-- 											</button> -->
<!-- 										</div> -->





                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i>${company.com_address1} ${company.com_address2}</li>
                                                <li><i class="pe-7s-mail strong"> </i>${company.com_email}</li>
                                                <li><i class="pe-7s-call strong"> </i> ${company.com_tel}</li>
                                            </ul>
                                        </div>
                                        <div>
                                        	<button type="button" class="payButton" onclick="issueCoupon(${company.com_idx})">반장님 팔로우하고 쿠폰받기</button>
                                        	<br>팔로우시 1회에 한해 2000원 쿠폰이 발급됩니다.
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <c:choose>
							    <c:when test="${cla.class_category == 1}">
							        <!-- class_category가 1일 때(정규모집) -->
							        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
           								<div class="panel-heading">
											<h3 class="panel-title">정규모집 클래스 예약하기</h3>
										</div>
										<div class="panel-body search-widget">
											<form action="cartPro" class=" form-inline" method="post">
											    <input type="hidden" name="member_id" value="${param.com_idx}">		
											    <input type="hidden" name="class_idx" value="${param.com_idx}">		
											    <input type="hidden" name="member_id" value="${sessionScope.member_id}">		
											    <input type="hidden" name="res_visit_date" value="${cla.class_start_date} ~ ${cla.class_end_date}">		
											    <input type="hidden" name="memberes_visit_timer_id" value="${startTime} ~ ${endTime}">		
												
												<div>
													<span class="classInfo">기간 : ${cla.class_start_date} ~ ${cla.class_end_date}</span><br>
													<span class="classInfo" id="classDays"><b>${cla.class_day}</b></span><br>
													<span class="classInfo">시간 : ${startTime} ~ ${endTime}</span>
<%-- 													<h3 id="classDays">${cla.class_day}</h3> --%>
												</div>
												<br>
												<div class="persons-group">
										    		<p>예약 인원</p>
										   			<input type="number" id="res_member_count" name="res_member_count" value="1" min="1" max="20">
												</div>
												<br>
												<div>
													&nbsp;&nbsp;&nbsp;<button type="submit" id=onCart class="payButton" onclick="">장바구니</button>&nbsp;&nbsp;&nbsp;
				<!-- 											<button type="button" id="payment" class="payButton" onclick="payment">결제하기</button> -->
														<button type="button" class="payButton" onclick="location.href='${pageContext.request.contextPath}/payment?type=pay'">결제하기</button>
				                                </div> 
											</form>
										</div>
							        </div>
							    </c:when>
							    <c:when test="${cla.class_category == 2}">
							        <!-- class_category가 2일 때(원데이 클래스) -->
							        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
           								<div class="panel-heading">
											<h3 class="panel-title">원데이 클래스 예약하기</h3>
										</div>
										<div class="panel-body search-widget">
											<form action="" class=" form-inline"> 
											<label for="reservation-date"><p>예약 날짜</p></label>
											<input type="date" id="reservation-date" name="reservation-date">
											<br><br>
											<div class="persons-group">
											    <p>예약 인원</p>
											    <input type="number" id="res_person" name="res_person" value="${search.res_person}" min="1" max="20">
											</div>
											<br>
											<div>
												&nbsp;&nbsp;&nbsp;<button type="button" id=onCart class="payButton" onclick="">장바구니</button>&nbsp;&nbsp;&nbsp;
	<!-- 												<button type="button" id="payment" class="payButton" onclick="payment">결제하기</button>  -->
													<button type="button" class="payButton" onclick="location.href='${pageContext.request.contextPath}/payment?type=pay'">결제하기</button>
			                                </div> 
										</div>
							        </div>
							    </c:when>
							</c:choose>

                           

<!-- 							<div class="panel panel-default sidebar-menu wow fadeInRight animated" > -->
<!-- 								<div class="panel-heading"> -->
<!-- 									<h3 class="panel-title">클래스 예약하기</h3> -->
<!-- 								</div> -->
<!-- 								<div class="panel-body search-widget"> -->
<!-- 									<form action="" class=" form-inline">  -->
<!-- 										<label for="reservation-date"><p>예약 날짜</p></label> -->
<!-- 										<input type="date" id="reservation-date" name="reservation-date"> -->
<!-- 										<br><br> -->
<!-- 										<div class="persons-group"> -->
<!-- 										    <p>예약 인원</p> -->
<%-- 										    <input type="number" id="res_person" name="res_person" value="${search.res_person}" min="1" max="20"> --%>
<!-- 										</div> -->
<!-- 										<br> -->
<!-- 										<div> -->
<!-- 											&nbsp;&nbsp;&nbsp;<button type="button" id=onCart class="payButton" onclick="">장바구니</button>&nbsp;&nbsp;&nbsp; -->
<!-- <!-- 												<button type="button" id="payment" class="payButton" onclick="payment">결제하기</button>  --> -->
<%-- 												<button type="button" class="payButton" onclick="location.href='${pageContext.request.contextPath}/payment?type=pay'">결제하기</button> --%>
<!-- 		                                </div>    -->
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
<!-- 									</form> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</aside>
					</div>
				</div>
			</div>
		</div>


        <!-- Footer area-->
        <div class="footer-area">
			<jsp:include page="./inc/bottom.jsp"/>
		</div>
			<button onclick="location.href='${pageContext.request.contextPath}/mypage/review/write'">리뷰쓰기</button>
			<button onclick="location.href='${pageContext.request.contextPath}/review/report'">리뷰신고</button>
			<button onclick="location.href='${pageContext.request.contextPath}/review/modify'">리뷰수정</button>
			<button onclick="location.href='${pageContext.request.contextPath}/review/detail'">리뷰리스트</button>
			<button onclick="location.href='${pageContext.request.contextPath}/review/complete'">리뷰성공</button>
			<button onclick="location.href='${pageContext.request.contextPath}/review/comment'">리뷰대댓글</button>
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
		function printDays(class_day) {
		    var days = ['월', '화', '수', '목', '금', '토', '일'];
		    var classDays = '';
		
		    for (var i = 0; i < class_day.length; i++) {
		        if (class_day[i] === '1') {
		            classDays += days[i];
		        }
		    }
		
		    // 결과를 <h2> 태그에 출력합니다.
		    document.getElementById('classDays').textContent = "요일  :  " + classDays;
		}
		
		// JSP에서 전달받은 class_day 값을 JavaScript에서 사용할 수 있게 변환합니다.
		var class_day = '${cla.class_day}';
		
		// 함수를 호출하여 결과를 출력합니다.
		printDays(class_day);
		</script>
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
        
<!--         <script> -->
<!-- // window.onload = function() { -->
<!-- //     var listItems = document.querySelectorAll('#image-gallery li'); -->
    
<!-- //     listItems.forEach(function(listItem) { -->
<!-- //         var dataThumb = listItem.getAttribute('data-thumb'); -->
<!-- //         var img = new Image(); -->
<!-- //         img.src = dataThumb; -->
<!-- //         img.width = 200;  // 원하는 너비를 설정하세요 -->
<!-- //         img.height = 200; // 원하는 높이를 설정하세요 -->
<!-- //         img.onload = function() { -->
<!-- //             listItem.appendChild(img); -->
<!-- //         } -->
<!-- //     }); -->
<!-- // } -->
<!-- </script> -->

    </body>
</html>