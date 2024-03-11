<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>공생 | 공간을 생각하다</title>
	<meta name="description" content="GARO is a real-estate template">
	<meta name="author" content="Kimarotec">
	<meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
<!-- 	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'> -->
<!-- 	<link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- 	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
<!-- 	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet"> -->
	
	<%-- css 파일 --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/normalize.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontello.css">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icheck.min_all.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/price-range.css">
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">	부트스트랩 캐러셀 CSS --%>
<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">	부트스트랩 캐러셀 CSS --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">	<%-- 폰트 --%>

</head>
<body>
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div>
	
	<%-- 상단바 삽입 --%>
	<jsp:include page="./inc/top.jsp"/>
	
	<%-- 캐러셀_광고 area --%>
	<div class="slider-area">
	   <div class="slider">
	       <div id="bg-slider" class="owl-carousel owl-theme">
	           <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="GTA V"></div>
	           <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash_3.jpg" alt="The Last of us"></div>
	           <div class="item"><img src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="GTA V"></div>
	        </div>
	    </div>
	</div>
	<%-- 캐러셀_광고 area --%>
                            
	<!-- property area -->
	<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title-icon">
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
	

    <div class="content-area recent-property" style="background-color: background-color: #FCFCFC; padding-bottom: 0px;">
        <div class="container">   
            <div class="row">
                <div class="col-md-12  padding-top-40 properties-page">
                
                    <div class="col-md-12 "> 
                        <div class="col-xs-6 page-subheader sorting pl0">
	                        <ul class="sort-by-list">
	                            <li class="active" data-value="sort_recent">
	                                <a href="javascript:void(0);" class="order_recently">최신순</a>
	                            </li>
	                            <li class="" data-value="sort_popular">
	                                <a href="javascript:void(0);" class="order_popularity">인기순</a>
	                            </li>
	                        </ul>
                        </div>
                        
                        <div class="col-xs-6 page-subheader sorting pl0">
							<button class="plus_class_List" onclick="plus_class_List()">
								더보기
							</button>
                        </div>
                    </div>

                    <div class="col-md-12 main_first_area"> 
                        <div id="list-type" class="proerty-th">
                        
                            <%-- 클래스 카드 (최신순) area --%>
                            <div class="order_recently_area">
                            <c:forEach var="recentClass" items="${recentClassList}" end="5">
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product/detail?class_idx=${recentClass.class_idx}">
                                        	<img src="${pageContext.request.contextPath}/resources/upload/${recentClass.class_pic1}" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/img/noimg.png';">
										</a>

										<%-- 클래스 기간형식 --%>
										<span class="jss162">
											<c:if test="${recentClass.class_category eq 1}">
												정규모집
											</c:if>
											<c:if test="${recentClass.class_category eq 2}">
												원데이 클래스
											</c:if>
										</span>
										
										<%-- 북마크 --%>
										<c:choose>
											<%-- 북마크 된 클래스인 경우 --%>	
											<c:when test="${recentClass.isBookmark_idx > 0}">
												<%-- 북마크 전 아이콘 --%>
		                                    	<button id="bookmark_button1" value="${recentClass.isBookmark_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnNO" tabindex="0" type="button" style="display: none;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
														<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
													</svg>
													<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>
												
												<%-- 북마크 후 아이콘 --%>
												<button id="bookmark_button2" value="${recentClass.isBookmark_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOK" tabindex="0" type="button">
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
													<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
												</svg>
												<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>
											</c:when>

											<%-- 북마크된 클래스가 아닌 경우 --%>	
											<c:otherwise>
												<%-- 북마크 전 아이콘 --%>
		                                    	<button id="bookmark_button1" value="${recentClass.class_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnON" tabindex="0" type="button">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
														<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
													</svg>
													<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>

												<%-- 북마크 후 아이콘 --%>
												<button id="bookmark_button2" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOFF" tabindex="0" type="button" style="display: none;">
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
													<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
												</svg>
												<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>
											</c:otherwise>
										</c:choose>
                                    </div>

                                    <div class="item-entry overflow">
										<div class="container-fluid">
											<div class="row">
												<div class="col-sm-9 col_class_category">
													<h6>
														<a href="javascript:void(0);">
															<c:choose>
																<c:when test="${recentClass.class_main_category eq 1}">바닥 시공 &gt;
																	<c:if test="${recentClass.class_sub_category eq 1}">바닥재 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 2}">장판 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 3}">타일 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 4}">마루 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 5}">카페트 시공</c:if>
																</c:when>
																<c:when test="${recentClass.class_main_category eq 2}">벽/천장 시공 &gt;
																	<c:if test="${recentClass.class_sub_category eq 1}">도배 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 2}">칸막이 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 3}">페인트 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 4}">방음 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 5}">단열 필름 시공</c:if>
																</c:when>
																<c:when test="${recentClass.class_main_category eq 3}">부분 인테리어 &gt;
																	<c:if test="${recentClass.class_sub_category eq 1}">샷시 설치 및 수리</c:if>
																	<c:if test="${recentClass.class_sub_category eq 2}">화장실 리모델링</c:if>
																	<c:if test="${recentClass.class_sub_category eq 3}">주방 리모델링</c:if>
																	<c:if test="${recentClass.class_sub_category eq 4}">가구 리폼</c:if>
																	<c:if test="${recentClass.class_sub_category eq 5}">붙박이장 시공</c:if>
																</c:when>
																<c:when test="${recentClass.class_main_category eq 4}">야외 시공 &gt;
																	<c:if test="${recentClass.class_sub_category eq 1}">조경 공사</c:if>
																	<c:if test="${recentClass.class_sub_category eq 2}">옥상 공사</c:if>
																	<c:if test="${recentClass.class_sub_category eq 3}">지붕 공사</c:if>
																	<c:if test="${recentClass.class_sub_category eq 4}">태양광 발전</c:if>
																	<c:if test="${recentClass.class_sub_category eq 5}">외벽 리모델링</c:if>
																</c:when>
																<c:when test="${recentClass.class_main_category eq 5}">종합 인테리어 &gt;
																	<c:if test="${recentClass.class_sub_category eq 1}">집 인테리어</c:if>
																	<c:if test="${recentClass.class_sub_category eq 2}">상업공간 인테리어</c:if>
																	<c:if test="${recentClass.class_sub_category eq 3}">주택 리모델링</c:if>
																	<c:if test="${recentClass.class_sub_category eq 4}">집 수리</c:if>
																	<c:if test="${recentClass.class_sub_category eq 5}">인테리어 소품</c:if>
																</c:when>
																<c:when test="${recentClass.class_main_category eq 6}">기타 시공 &gt;
																	<c:if test="${recentClass.class_sub_category eq 1}">줄눈 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 2}">단열 시공</c:if>
																	<c:if test="${recentClass.class_sub_category eq 3}">미장 시공</c:if>
																</c:when>
																<c:otherwise>
																	알수없음
																</c:otherwise>
															</c:choose>
														</a>
													</h6>
												</div>

												<div class="col-sm-3" style="padding: 0px; text-align: right;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
														<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
													</svg>
													<span class="bookmark_count">${recentClass.bookmarkCount}</span>
												</div>
											</div>
										
											<div class="row">
												<div class="col-sm-12 col_className">
													<h5><a href="${pageContext.request.contextPath}/product/detail?class_idx=${recentClass.class_idx}">${recentClass.class_title}</a></h5>
													<div class="dot-hr"></div>
													<div class="item_p">
														<span class="pull-left_plus">
															${recentClass.class_introduction}<br>
														</span>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-sm-12 col_company_name">
													<h6>
														<a href="${pageContext.request.contextPath}/class/list?com_idx=${recentClass.com_idx}">
															${recentClass.com_name} / 
															<span class="col_company_address">${recentClass.classAddress}</span>
														</a>
													</h6>
												</div>
											</div>

											<div class="row">
												<div class="col-sm-12 col_classPrice">
													<div class="item_p">
														<span class="proerty-price pull-right">
															<fmt:formatNumber value="${recentClass.class_price}" pattern="#,###"/>원
<%-- 															${recentClass.class_price}원 --%>
														</span>
													</div>
												</div>
                                            </div>
											
										</div>
                                    </div>
                                    
                                </div>
                            </div>
                            </c:forEach>
                            </div>
                            <%-- 클래스 카드 (최신순) area --%>

                            <%-- 클래스 카드 (인기순) area --%>
                            <div class="order_popularity_area" style="display: none;">
                            <c:forEach var="popularClass" items="${popularClassList}" end="5">
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product/detail?class_idx=${popularClass.class_idx}">
                                        	<img src="${pageContext.request.contextPath}/resources/upload/${popularClass.class_pic1}" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/img/noimg.png';">
										</a>

										<%-- 클래스 기간형식 --%>
										<span class="jss162">
											<c:if test="${popularClass.class_category eq 1}">
												정규모집
											</c:if>
											<c:if test="${popularClass.class_category eq 2}">
												원데이 클래스
											</c:if>
										</span>
										
										<%-- 북마크 --%>
										<c:choose>
											<%-- 북마크 된 클래스인 경우 --%>	
											<c:when test="${popularClass.isBookmark_idx > 0}">
												<%-- 북마크 전 아이콘 --%>
		                                    	<button id="bookmark_button1" value="${popularClass.isBookmark_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnNO" tabindex="0" type="button" style="display: none;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
														<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
													</svg>
													<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>
												
												<%-- 북마크 후 아이콘 --%>
												<button id="bookmark_button2" value="${popularClass.isBookmark_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOK" tabindex="0" type="button">
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
													<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
												</svg>
												<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>
											</c:when>

											<%-- 북마크된 클래스가 아닌 경우 --%>	
											<c:otherwise>
												<%-- 북마크 전 아이콘 --%>
		                                    	<button id="bookmark_button1" value="${popularClass.class_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnON" tabindex="0" type="button">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
														<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
													</svg>
													<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>

												<%-- 북마크 후 아이콘 --%>
												<button id="bookmark_button2" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOFF" tabindex="0" type="button" style="display: none;">
												<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
													<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
												</svg>
												<span class="MuiTouchRipple-root css-w0pj6f"></span>
												</button>
											</c:otherwise>
										</c:choose>
                                    </div>

                                    <div class="item-entry overflow">
										<div class="container-fluid">
											<div class="row">
											<div class="col-sm-9 col_class_category">
												<h6>
													<a href="javascript:void(0);">
														<c:choose>
															<c:when test="${popularClass.class_main_category eq 1}">바닥 시공 &gt;
																<c:if test="${popularClass.class_sub_category eq 1}">바닥재 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 2}">장판 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 3}">타일 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 4}">마루 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 5}">카페트 시공</c:if>
															</c:when>
															<c:when test="${popularClass.class_main_category eq 2}">벽/천장 시공 &gt;
																<c:if test="${popularClass.class_sub_category eq 1}">도배 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 2}">칸막이 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 3}">페인트 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 4}">방음 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 5}">단열 필름 시공</c:if>
															</c:when>
															<c:when test="${popularClass.class_main_category eq 3}">부분 인테리어 &gt;
																<c:if test="${popularClass.class_sub_category eq 1}">샷시 설치 및 수리</c:if>
																<c:if test="${popularClass.class_sub_category eq 2}">화장실 리모델링</c:if>
																<c:if test="${popularClass.class_sub_category eq 3}">주방 리모델링</c:if>
																<c:if test="${popularClass.class_sub_category eq 4}">가구 리폼</c:if>
																<c:if test="${popularClass.class_sub_category eq 5}">붙박이장 시공</c:if>
															</c:when>
															<c:when test="${popularClass.class_main_category eq 4}">야외 시공 &gt;
																<c:if test="${popularClass.class_sub_category eq 1}">조경 공사</c:if>
																<c:if test="${popularClass.class_sub_category eq 2}">옥상 공사</c:if>
																<c:if test="${popularClass.class_sub_category eq 3}">지붕 공사</c:if>
																<c:if test="${popularClass.class_sub_category eq 4}">태양광 발전</c:if>
																<c:if test="${popularClass.class_sub_category eq 5}">외벽 리모델링</c:if>
															</c:when>
															<c:when test="${popularClass.class_main_category eq 5}">종합 인테리어 &gt;
																<c:if test="${popularClass.class_sub_category eq 1}">집 인테리어</c:if>
																<c:if test="${popularClass.class_sub_category eq 2}">상업공간 인테리어</c:if>
																<c:if test="${popularClass.class_sub_category eq 3}">주택 리모델링</c:if>
																<c:if test="${popularClass.class_sub_category eq 4}">집 수리</c:if>
																<c:if test="${popularClass.class_sub_category eq 5}">인테리어 소품</c:if>
															</c:when>
															<c:when test="${popularClass.class_main_category eq 6}">기타 시공 &gt;
																<c:if test="${popularClass.class_sub_category eq 1}">줄눈 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 2}">단열 시공</c:if>
																<c:if test="${popularClass.class_sub_category eq 3}">미장 시공</c:if>
															</c:when>
															<c:otherwise>
																알수없음
															</c:otherwise>
														</c:choose>
													</a>
												</h6>
											</div>
						
											<div class="col-sm-3" style="padding: 0px; text-align: right;">
													<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
														<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
													</svg>
													<span class="bookmark_count">${popularClass.bookmarkCount}</span>
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12 col_className">
													<h5><a href="${pageContext.request.contextPath}/product/detail?class_idx=${popularClass.class_idx}">${popularClass.class_title}</a></h5>
													<div class="dot-hr"></div>
													<div class="item_p">
														<span class="pull-left_plus">
															${popularClass.class_introduction}<br>
														</span>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-sm-12 col_company_name">
													<h6>
														<a href="${pageContext.request.contextPath}/class/list?com_idx=${popularClass.com_idx}">
															${popularClass.com_name} / 
															<span class="col_company_address">${popularClass.classAddress}</span>
														</a>
													</h6>
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12 col_classPrice">
													<div class="item_p">
				                                        <span class="proerty-price pull-right">
				                                        	<fmt:formatNumber value="${popularClass.class_price}" pattern="#,###"/>원
<%-- 				                                        	${popularClass.class_price}원 --%>
				                                        </span>
			                                        </div>
												</div>
											</div>

										</div>
                                    </div>
                                    
                                </div>
                            </div>
                            </c:forEach>
                            </div>
                            <%-- 클래스 카드 (인기순) area --%>
                            
                        </div>
                    </div>
                </div>  
            </div>
        </div>
    </div>

	<%-- 마감임박순 class area --%>
	<div class="content-area recent-property" style="background-color: background-color: #FCFCFC; padding-bottom: 60px;">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-12  padding-top-40 properties-page">
	                <div class="col-md-12 ">
	                    <h2 class="class_card_h2">마감임박순</h2>
	                </div>

	                <div class="col-md-12 ">
	                    <div id="list-type" class="proerty-th">
							
							<%-- 마감임박순 클래스 카드 area --%>
	                        <div class="slider-area">
	                            <div class="slider">
	                                <div class="owl-carousel owl-theme deadlineClass-slider">

										<c:forEach var="deadlineSoonClass" items="${deadlineSoonClassList}" end="9">
	                                    <div class="item">
	                                        <div class="col-sm-6 col-md-3 p0">
	                                            <div class="box-two proerty-item">
	                                            
	                                                <div class="item-thumb">
				                                        <a href="${pageContext.request.contextPath}/product/detail?class_idx=${deadlineSoonClass.class_idx}">
				                                        	<img src="${pageContext.request.contextPath}/resources/upload/${deadlineSoonClass.class_pic1}" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/img/noimg.png';">
														</a>
	                                                    
	                                                    <%-- 클래스 기간형식 --%>
														<span class="jss162">
															<c:if test="${deadlineSoonClass.class_category eq 1}">
																정규모집
															</c:if>
															<c:if test="${deadlineSoonClass.class_category eq 2}">
																원데이 클래스
															</c:if>
														</span>

														<%-- 북마크 --%>
														<c:choose>
															<%-- 북마크 된 클래스인 경우 --%>	
															<c:when test="${deadlineSoonClass.isBookmark_idx > 0}">
																<%-- 북마크 전 아이콘 --%>
						                                    	<button id="bookmark_button1" value="${deadlineSoonClass.isBookmark_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnNO" tabindex="0" type="button" style="display: none;">
																	<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
																		<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
																	</svg>
																	<span class="MuiTouchRipple-root css-w0pj6f"></span>
																</button>
																
																<%-- 북마크 후 아이콘 --%>
																<button id="bookmark_button2" value="${deadlineSoonClass.isBookmark_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOK" tabindex="0" type="button">
																<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
																	<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
																</svg>
																<span class="MuiTouchRipple-root css-w0pj6f"></span>
																</button>
															</c:when>
				
															<%-- 북마크된 클래스가 아닌 경우 --%>	
															<c:otherwise>
																<%-- 북마크 전 아이콘 --%>
						                                    	<button id="bookmark_button1" value="${deadlineSoonClass.class_idx}" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnON" tabindex="0" type="button">
																	<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">
																		<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.1c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.1-.1-.1C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>
																	</svg>
																	<span class="MuiTouchRipple-root css-w0pj6f"></span>
																</button>
				
																<%-- 북마크 후 아이콘 --%>
																<button id="bookmark_button2" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOFF" tabindex="0" type="button" style="display: none;">
																<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
																	<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
																</svg>
																<span class="MuiTouchRipple-root css-w0pj6f"></span>
																</button>
															</c:otherwise>
														</c:choose>
				                                    </div>

	                                                <div class="item-entry overflow">
	                                                    <div class="container-fluid">
	                                                        <div class="row">
																<div class="col-sm-9 col_class_category">
																	<h6>
																		<a href="javascript:void(0);">
																			<c:choose>
																				<c:when test="${deadlineSoonClass.class_main_category eq 1}">바닥 시공 &gt;
																					<c:if test="${deadlineSoonClass.class_sub_category eq 1}">바닥재 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 2}">장판 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 3}">타일 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 4}">마루 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 5}">카페트 시공</c:if>
																				</c:when>
																				<c:when test="${deadlineSoonClass.class_main_category eq 2}">벽/천장 시공 &gt;
																					<c:if test="${deadlineSoonClass.class_sub_category eq 1}">도배 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 2}">칸막이 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 3}">페인트 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 4}">방음 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 5}">단열 필름 시공</c:if>
																				</c:when>
																				<c:when test="${deadlineSoonClass.class_main_category eq 3}">부분 인테리어 &gt;
																					<c:if test="${deadlineSoonClass.class_sub_category eq 1}">샷시 설치 및 수리</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 2}">화장실 리모델링</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 3}">주방 리모델링</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 4}">가구 리폼</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 5}">붙박이장 시공</c:if>
																				</c:when>
																				<c:when test="${deadlineSoonClass.class_main_category eq 4}">야외 시공 &gt;
																					<c:if test="${deadlineSoonClass.class_sub_category eq 1}">조경 공사</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 2}">옥상 공사</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 3}">지붕 공사</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 4}">태양광 발전</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 5}">외벽 리모델링</c:if>
																				</c:when>
																				<c:when test="${deadlineSoonClass.class_main_category eq 5}">종합 인테리어 &gt;
																					<c:if test="${deadlineSoonClass.class_sub_category eq 1}">집 인테리어</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 2}">상업공간 인테리어</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 3}">주택 리모델링</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 4}">집 수리</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 5}">인테리어 소품</c:if>
																				</c:when>
																				<c:when test="${deadlineSoonClass.class_main_category eq 6}">기타 시공 &gt;
																					<c:if test="${deadlineSoonClass.class_sub_category eq 1}">줄눈 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 2}">단열 시공</c:if>
																					<c:if test="${deadlineSoonClass.class_sub_category eq 3}">미장 시공</c:if>
																				</c:when>
																				<c:otherwise>
																					알수없음
																				</c:otherwise>
																			</c:choose>
																		</a>
																	</h6>
																	
																</div>
											
																<div class="col-sm-3" style="padding: 0px; text-align: right;">
																	<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">
																		<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.1C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.1 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>
																	</svg>
																	<span class="bookmark_count">${deadlineSoonClass.bookmarkCount}</span>
																</div>
															</div>
															
	                                                        <div class="row">
	                                                            <div class="col-sm-12 col_className">
																	<h5><a href="${pageContext.request.contextPath}/product/detail?class_idx=${deadlineSoonClass.class_idx}">${deadlineSoonClass.class_title}</a></h5>
	                                                                <div class="dot-hr"></div>
	                                                                <div class="item_p">
	                                                                    <span class="pull-left_plus">
	                                                                    	${deadlineSoonClass.class_introduction}<br>
	                                                                    </span>
	                                                                </div>
	                                                            </div>
	                                                        </div>

															<div class="row">
																<div class="col-sm-12 col_company_name">
																	<h6>
																		<a href="${pageContext.request.contextPath}/class/list?com_idx=${deadlineSoonClass.com_idx}">
																			${deadlineSoonClass.com_name} / 
																			<span class="col_company_address">${deadlineSoonClass.classAddress}</span>
																		</a>
																	</h6>
																</div>
															</div>
															
	                                                        <div class="row">
	                                                            <div class="col-sm-12 col_classPrice">
	                                                                <div class="item_p">
	                                                                	<span class="proerty-price pull-right">
	                                                                    	<fmt:formatNumber value="${deadlineSoonClass.class_price}" pattern="#,###"/>원
<%-- 	                                                                    	${deadlineSoonClass.class_price}원 --%>
	                                                               		</span>
	                                                                </div>
	                                                            </div>
	                                                        </div>

	                                                    </div>
	                                                </div>

	                                            </div>
	                                        </div>
	                                    </div>
										</c:forEach>
	                                    
	                                </div>
	                            </div>
	                        </div>
							<%-- 마감임박순 클래스 카드 area --%>

                        </div>
                    </div>

                </div>  
            </div>
        </div>
    </div>
   	<%-- 마감임박순 class area --%>

	<%-- 캐러셀_이벤트 area --%>
	<div class="slider-area">
	   <div class="slider">
	       <div id="event-slider" class="owl-carousel owl-theme">
	           <div class="item"><img style="height: 200px !important;" src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="GTA V"></div>
	           <div class="item"><img style="height: 200px !important;" src="${pageContext.request.contextPath}/resources/assets/img/nathan-dumlao-Wr3comVZJxU-unsplash_3.jpg" alt="The Last of us"></div>
	           <div class="item"><img style="height: 200px !important;" src="${pageContext.request.contextPath}/resources/assets/img/kelly-sikkema-4l2Ml8-MLUg-unsplash_3.jpg" alt="GTA V"></div>
	        </div>
	    </div>
	</div>
	<%-- 캐러셀_이벤트 area --%>

    <!-- 최신 리뷰 area -->
    <div class="content-area recent-property recentReview-property" style="background-color: background-color: #FCFCFC; padding-bottom: 100px;">
        <div class="container">   
            <div class="row">
                <div class="col-md-12  padding-top-60 properties-page">
                    <div class="col-md-12"> 
						<h2 class="class_card_h2">최신 리뷰</h2>
                    </div>

	                <div class="col-md-12 ">
	                    <div id="list-type" class="proerty-th">
							
							<%-- 리뷰 카드 area --%>
	                        <div class="slider-area">
	                            <div class="slider">
	                                <div class="owl-carousel owl-theme recentReview-slider">
	                                
	                                	<c:forEach var="recentReview" items="${recentReviewList}" end="12">
	                                    <div class="item">
	                                        <div class="col-sm-6 col-md-3 p0_review">
	                                            <div class="box-two proerty-item">
	                                            
	                                                <div class="item-thumb">
				                                        <a href="${pageContext.request.contextPath}/review/detail?class_idx=${recentReview.class_idx}">
				                                        	<img src="${pageContext.request.contextPath}/resources/upload/${recentReview.review_img_1}" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/img/noimg.png';">
														</a>
	                                                </div>

	                                                <div class="item-entry overflow">
	                                                    <div class="container-fluid">
	                                                        <div class="row">
	                                                            <div class="col-sm-12" style="padding: 0px;">
	                                                                <h6><a href="${pageContext.request.contextPath}/product/detail?class_idx=${recentReview.class_idx}" style="font-weight: bold;">${recentReview.class_title}</a></h6>
	                                                            </div>
	                                                        </div>

	                                                        <div class="row">
	                                                            <div class="col-sm-12 col_reviewContent">
	                                                                <a href="javascript:void(0)">${recentReview.member_id}</a>
	                                                                <div class="dot-hr"></div>
	                                                                <div class="item_p">
	                                                                    <span class="pull-left_plus">
	                                                                    	${recentReview.review_content}
	                                                                    </span>
	                                                                </div>
	                                                            </div>
	                                                        </div>

	                                                    </div>
	                                                </div>

	                                            </div>
	                                        </div>
	                                    </div>
	                                	</c:forEach>
										
	                                </div>
	                            </div>
	                        </div>
							<%-- 리뷰 카드 area --%>

                        </div>
                    </div>

                </div>  
            </div>
        </div>
    </div>
   	<%-- 최근 리뷰 area --%>
    
	<!-- Footer area -->
	<!-- 하단바 삽입-->
	<div class="footer-area">
		<jsp:include page="./inc/bottom.jsp"/>
	</div>




	
	<!-- test 버튼 -->
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/review/write'">리뷰쓰기</button> --%>
<!-- 	<hr> -->
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/payment'">payment</button> --%>
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/payment/agree'">payment/agree</button> --%>
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/payment/charge'">payment/charge</button> --%>
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/payment/charge/account'">payment/charge/account</button> --%>
<!-- 	<hr> -->
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/mypage/main'">mypage/main</button> --%>
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/member/login'">login</button> --%>
<!-- 	<hr> -->
<%-- 	<button onclick="location.href='${pageContext.request.contextPath}/company/main'">사업체 페이지(반장)</button> --%>
	<!-- Footer area -->





	<%-- js파일 --%>
	<script src="${pageContext.request.contextPath}/resources/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>	부트스트랩 캐러셀 JS --%>
	<script src="${pageContext.request.contextPath}/resources/assets/js/wow.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/price-range.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>	<%-- Owl 캐러셀 JS --%>
	
<%-- 	<script src="${pageContext.request.contextPath}/resources/assets/js/icheck.min.js"></script> --%>
</body>
</html>
