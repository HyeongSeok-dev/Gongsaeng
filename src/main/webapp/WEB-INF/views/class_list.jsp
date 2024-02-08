<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">	<%-- TimePicker : input type="time" 형식 변경 --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.transitions.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
let pageNum = 1;
let maxPage = "";
let itemCount = $(".proerty-item").length;

$(function() {
    // 'input[name="className"]' 입력 필드의 값이 변경될 때
    $("input[name='className']").on('input', function() {
        // '.top_search' 입력 필드의 값을 'input[name="className"]' 입력 필드의 값으로 설정
        $(".top_search").val($(this).val());
    });

    // '.top_search' 입력 필드의 값이 변경될 때
    $(".top_search").on('input', function() {
        // 'input[name="className"]' 입력 필드의 값을 '.top_search' 입력 필드의 값으로 설정
        $("input[name='className']").val($(this).val());
    });
	
	
	// 초기값 설정 (상단 검색창에서 검색할 경우 대비)
	classType = "";
	className = "";
	classMainCategory = "";
	classSubCategory = "";
	classDay = "";
	classOffering = "";
	
	var urlParams = new URLSearchParams(window.location.search);
	className = urlParams.get('className');
	
	load_list();
	
	$(".top_search").on('keypress', function(event) {
	    if(event.which == 13) {
	        pageNum = 1;
	
	        // 입력에 따라 변수 업데이트
			classType = $(".search_detail_classType.selected").val();
			className = $(".top_search").val();
			if($("#classCategory").val() != null) {
				classMainCategory = $("#classCategory").val().substring(0, 1);
				classSubCategory = $("#classCategory").val().substring(1, 2);
			} else {
				classMainCategory = "";
				classSubCategory = "";
			}
			classDay = $("#classDay").val();
			classOffering = 
			    ($("input.classOffering[value='1']").parent().hasClass('checked') ? '1' : '0') +
			    ($("input.classOffering[value='2']").parent().hasClass('checked') ? '1' : '0') +
			    ($("input.classOffering[value='3']").parent().hasClass('checked') ? '1' : '0') +
			    ($("input.classOffering[value='4']").parent().hasClass('checked') ? '1' : '0') +
			    ($("input.classOffering[value='5']").parent().hasClass('checked') ? '1' : '0') +
			    ($("input.classOffering[value='6']").parent().hasClass('checked') ? '1' : '0') +
			    ($("input.classOffering[value='7']").parent().hasClass('checked') ? '1' : '0');
			
			// 기존에 출력되어있는 리스트 삭제
		    $("#list-type").empty();
			
			load_list();
			
			event.preventDefault();
	    }
    });
	
	$("#SearchListJsonButton").click(function() {
        pageNum = 1;

        // 입력에 따라 변수 업데이트
		classType = $(".search_detail_classType.selected").val();
		className = $("input[name='className']").val();
		if($("#classCategory").val() != null) {
			classMainCategory = $("#classCategory").val().substring(0, 1);
			classSubCategory = $("#classCategory").val().substring(1, 2);
		} else {
			classMainCategory = "";
			classSubCategory = "";
		}
		classDay = $("#classDay").val();
		classOffering = 
		    ($("input.classOffering[value='1']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='2']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='3']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='4']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='5']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='6']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='7']").parent().hasClass('checked') ? '1' : '0');
		
		// 기존에 출력되어있는 리스트 삭제
	    $("#list-type").empty();
		
		load_list();
    });
	
	$(window).scroll(function() {
		let scrollTop = $(window).scrollTop();
		let windowHeight = $(window).height();
		let documentHeight = $(document).height();

		if(scrollTop + windowHeight + 1 >= documentHeight) {
			pageNum++;
			
			if(maxPage != "" && pageNum <= maxPage) {
				load_list();
			}
		}
		
	});
});

function load_list() {
	// AJAX로 보낼 데이터
	let searchData = {
			classType: classType,
			className: className,
			classMainCategory: classMainCategory,
			classSubCategory: classSubCategory,
// 			classState: $("#classState").val(),
			classDay: classDay,
			classStartDate: $("#date1").val(),
			classEndDate: $("#date2").val(),
			classStartTime: $("#timepicker1").val() + ":00",
			classEndTime: $("#timepicker2").val() + ":00",
			minAmount: $("#minAmount").val().replace(/,/g, ''),
			maxAmount: $("#maxAmount").val().replace(/,/g, ''),
			classOffering : classOffering,
			pageNum : pageNum
	}

	$.ajax({
		type: "GET",
		url: "/gongsaeng/SearchListJson",
	    data: searchData,
		dataType: "json",
		success: function(data) {
			console.log("classType >>> " + searchData.classType);
			console.log("className >>> " + searchData.className);
			console.log("classDay >>> " + searchData.classDay);
			console.log("classStartDate >>> " + searchData.classStartDate);
			console.log("classEndDate >>> " + searchData.classEndDate);
			console.log("classStartTime >>> " + searchData.classStartTime);
			console.log("classEndTime >>> " + searchData.classEndTime);
// 			console.log("classCategory >>> " + searchData.classCategory);
			console.log("classMainCategory >>> " + searchData.classMainCategory);
			console.log("classSubCategory >>> " + searchData.classSubCategory);
			console.log("classOffering >>> " + searchData.classOffering);
			console.log("classState >>> " + searchData.classState);
			console.log("minAmount >>> " + searchData.minAmount);
			console.log("maxAmount >>> " + searchData.maxAmount);
			console.log("pageNum >>> " + pageNum);
			console.log("maxPage >>> " + maxPage);
			
			let contextPath = "<%=request.getContextPath()%>";
			
			// 출력될 데이터의 갯수
			console.log("data.searchClassList 갯수 >>> " + data.searchClassList.length);
		    if (data.searchClassList.length == 0) {
		 		$(".noResearchResult").show();
		    } else {
		 		$(".noResearchResult").hide();
		    }
			
			for(let searchClass of data.searchClassList) {
			    // 클래스 형식 판별
			    let classCategoryText = '';
			    if(searchClass.class_category === 1) {
			        classCategoryText = '정규모집';
			    } else if(searchClass.class_category === 2) {
			        classCategoryText = '원데이 클래스';
			    }

			    // 북마크 체크에 따른 코드 삽입
				isBookmarked = (searchClass.isBookmark_idx > 0);
				bookmark_button1_ButtonStyle = isBookmarked ? 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnNO' : 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtn';
				bookmark_button2_ButtonStyle = isBookmarked ? 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtn' : 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOK';
				bookmark_button1_DisplayStyle = isBookmarked ? 'style="display: none;"' : '';
				bookmark_button2_DisplayStyle = isBookmarked ? '' : 'style="display: none;"';

				let classBookmarked = "";
			    if(isBookmarked) {
			    	classBookmarked = 
					'<button id="bookmark_button1" value="' + searchClass.isBookmark_idx + '" class="' + bookmark_button1_ButtonStyle + '" tabindex="0" type="button" ' + bookmark_button1_DisplayStyle + '>'
					+ '					<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">'
					+ '						<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.10c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.10-.10-.10C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>'
					+ '					</svg>'
					+ '					<span class="MuiTouchRipple-root css-w0pj6f"></span>'
					+ '				</button>'
					+ '				<button id="bookmark_button2" value="' + searchClass.isBookmark_idx + '" class="' + bookmark_button2_ButtonStyle + '" tabindex="0" type="button" ' + bookmark_button2_DisplayStyle + '>'
					+ '					<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">'
					+ '						<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.10C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.10 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>'
					+ '					</svg>'
					+ '					<span class="MuiTouchRipple-root css-w0pj6f"></span>'
					+ '				</button>';
			    } else {
			    	classBookmarked = 
					'				<button id="bookmark_button1" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtn" tabindex="0" type="button">'
					+ '				<button id="bookmark_button1" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtn" tabindex="0" type="button">'
					+ '					<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">'
					+ '						<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.10c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.10-.10-.10C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>'
					+ '					</svg>'
					+ '					<span class="MuiTouchRipple-root css-w0pj6f"></span>'
					+ '				</button>'
					+ '				<button id="bookmark_button2" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtn" tabindex="0" type="button" style="display: none;">'
					+ '					<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">'
					+ '						<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.10C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.10 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>'
					+ '					</svg>'
					+ '					<span class="MuiTouchRipple-root css-w0pj6f"></span>'
					+ '				</button>';
			    }

				let result = 
					'	<div class="col-sm-6 col-md-3 p0">'
					+ '		<div class="box-two proerty-item" id="class_list_item">'
					+ '			<div class="item-thumb">'
					+ '				<a href="property-1" >'
					+ '					<img src=\'' + contextPath + '/resources/upload/' + searchClass.class_pic1 + '" onerror="this.onerror=null; this.src=\'' + contextPath + '/resources/img/noimg.png\'">'
					+ '				</a>'
					+ '				<span class="jss162">'
					+					classCategoryText
					+ '				</span>'
					+ 			classBookmarked
					+ '			</div>'
					+ '			<div class="item-entry overflow">'
					+ '				<div class="container-fluid">'
					+ '					<div class="row">'
					+ '						<div class="col-sm-6" style="padding: 0px;">'
					+ '							<h6><a href="${pageContext.request.contextPath}/company/profile/com_idx="' + searchClass.com_idx + '">' + searchClass.com_name + '</a></h6>'
					+ '						</div>'
					+ '						<div class="col-sm-6" style="padding: 0px; text-align: right;">'
					+ '							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">'
					+ '								<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.10C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.10 1.76-2.06 5.02-2.91 7.66-1.10 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>'
					+ '							</svg>'
					+ 							searchClass.bookmarkCount
					+ '						</div>'
					+ '					</div>'
					+ '					<div class="row">'
					+ '						<div class="col-sm-12 col_className">'
					+ '		                	<h5><a href="${pageContext.request.contextPath}/product/detail/class_idx="' + searchClass.class_idx + '">' + searchClass.class_title + '</a></h5>'
					+ '		                	<div class="dot-hr"></div>'
					+ '				       		<div class="item_p">'
					+ '								<span class="pull-left_plus">'
					+ 									searchClass.class_introduction
					+ '								</span>'
					+ '				            </div>'
					+ '						</div>'
					+ '					</div>'
					+ '					<div class="row">'
					+ '						<div class="col-sm-12 col_classPrice">'
					+ '							<div class="item_p">'
					+ '			                	<span class="proerty-price pull-right">'
					+ 									searchClass.class_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원'
					+ '			                	</span>'
					+ '							</div>'
					+ '						</div>'
					+ '					</div>'
					+ '				</div>'
					+ '			</div>'     
					+ '		</div>'
					+ ' </div>'
// 					;
	
				$("#list-type").append(result);
				maxPage = data.maxPage;
			}
		},
		error: function() {
			alert("요청 실패!");
			console.log("classType >>> " + searchData.classType);
			console.log("className >>> " + searchData.className);
			console.log("classDay >>> " + searchData.classDay);
			console.log("classStartDate >>> " + searchData.classStartDate);
			console.log("classEndDate >>> " + searchData.classEndDate);
			console.log("classStartTime >>> " + searchData.classStartTime);
			console.log("classEndTime >>> " + searchData.classEndTime);
// 			console.log("classCategory >>> " + searchData.classCategory);
			console.log("classMainCategory >>> " + searchData.classMainCategory);
			console.log("classSubCategory >>> " + searchData.classSubCategory);
			console.log("classOffering >>> " + searchData.classOffering);
			console.log("classState >>> " + searchData.classState);
			console.log("minAmount >>> " + searchData.minAmount);
			console.log("maxAmount >>> " + searchData.maxAmount);
			console.log("pageNum >>> " + pageNum);
			console.log("maxPage >>> " + maxPage);
		}
	});
}
</script>
</head>
<body>
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div>
	
	<%-- 상단바 삽입 --%>
	<jsp:include page="./inc/top.jsp"/>

	<div class="page-head"> 
		<div class="container">
	        <div class="row">
	            <div class="page-head-content">
	                <h1 id="page-title-left">
		                <c:if test="${not empty searchData.className}">
		                	'${searchData.className}'
		                </c:if>
		                검색결과
	                </h1>               
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

	                    <form class="form-inline">
	                        <div class="col-md-12">
	                            <div class="col-md-4">
		                        	<button type="button" class="search_detail_classType selected" name="classType" value="1">정규모집</button>
		                        	<button type="button" class="search_detail_classType" name="classType" value="2">원데이</button>
		                        </div>
	                        </div>
	                        <div class="col-md-12" style="margin-bottom: 20px;">
	                            <div class="col-md-4">
	                                <input type="text" class="form-control" placeholder="클래스명" name="className" value="${searchData.className}">
	                            </div>
	                            <div class="col-md-4">                                   
	                                <select id="classCategory" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="카테고리">
	                                    <optgroup label="바닥 시공">
	                                    	<option value="1">바닥 시공 전체</option>
	                                    	<option value="11">바닥재 시공</option>
	                                    	<option value="12">장판 시공</option>
	                                    	<option value="13">타일 시공</option>
	                                    	<option value="14">마루 시공</option>
	                                    	<option value="15">카페트 시공</option>
	                                    </optgroup>
	                                    <optgroup label="벽/천장 시공">
	                                    	<option value="2">벽/천장 시공 전체</option>
	                                    	<option value="21">도배 시공</option>
	                                    	<option value="22">칸막이 시공</option>
	                                    	<option value="23">페인트 시공</option>
	                                    	<option value="24">방음 시공</option>
	                                    	<option value="25">단열 필름 시공</option>
	                                    </optgroup>
	                                    <optgroup label="부분 인테리어">
	                                    	<option value="3">부분 인테리어 전체</option>
	                                    	<option value="31">샷시 설치 및 수리</option>
	                                    	<option value="32">화장실 리모델링</option>
	                                    	<option value="33">주방 리모델링</option>
	                                    	<option value="34">가구 리폼</option>
	                                    	<option value="35">붙박이장 시공</option>
	                                    </optgroup>
	                                    <optgroup label="야외 시공">
	                                    	<option value="4">야외 시공 전체</option>
	                                    	<option value="41">조경 공사</option>
	                                    	<option value="42">옥상 공사</option>
	                                    	<option value="43">지붕 공사</option>
	                                    	<option value="44">태양광 발전</option>
	                                    	<option value="45">외벽 리모델링</option>
	                                    </optgroup>
	                                    <optgroup label="종합 인테리어">
	                                    	<option value="5">종합 인테리어 전체</option>
	                                    	<option value="51">집 인테리어</option>
	                                    	<option value="52">상업공간 인테리어</option>
	                                    	<option value="53">주택 리모델링</option>
	                                    	<option value="54">집 수리</option>
	                                    	<option value="55">인테리어 소품</option>
	                                    </optgroup>
	                                    <optgroup label="기타 시공">
	                                    	<option value="6">기타 시공 전체</option>
	                                    	<option value="61">줄눈 시공</option>
	                                    	<option value="62">단열 시공</option>
	                                    	<option value="63">미장 시공</option>
	                                    </optgroup>
	                                </select>
	                            </div>
	                            
	                            <div class="col-md-4">                                     
	                                <select id="classState" class="selectpicker show-tick form-control" title="상태">
	                                    <option value="classState1">모집중</option>
	                                    <option value="classState2">마감</option>
	                                    <option value="classState3">종료</option>  
	                                </select>
	                            </div>
	                        </div>
	                        
	                        <div class="col-md-12">
								<%-- 정규모집 클래스일 경우 --%>
								<div class="col-md-4 class_date_button">
									<input type="hidden" id="date1" class="form-control hidden_class_start_date" name="classStartDate" style="margin-right: auto;" value="1999-01-01">
									<input type="hidden" id="date2" class="form-control hidden_class_end_date" name="classEndDate" style="margin-right: auto;" value="3000-12-12">
									<input type="text" id="" class="form-control class_start_date" name="classStartDate" style="margin-right: auto;" placeholder="시작일">
									<span><b style="vertical-align: text-top;">&nbsp;~&nbsp;</b></span>
									<input type="text" id="" class="form-control class_end_date" name="classEndDate" style="margin-right: auto;" placeholder="종료일">
								</div>
	                        	<%-- 원데이 클래스일 경우 --%>
								<div class="col-md-4 class_oneday_button" style="display: none;">
									<select id="classDay" class="selectpicker show-tick form-control" title="요일">
										<option value="1111100">평일</option>
										<option value="0000010">토요일</option>
										<option value="0000001">일요일</option>  
									</select>
								</div>
								
								<%-- 클래스 시간 --%>
								<div class="col-md-4 class_time">
									<input type="text" id="timepicker1" class="form-control timepicker" name="classStartTime" style="margin-right: auto;" placeholder="시작시간">
									<span><b style="vertical-align: text-top;">&nbsp;~&nbsp;</b></span>
									<input type="text" id="timepicker2" class="form-control timepicker" name="classEndTime" style="margin-right: auto;" placeholder="종료시간">
								</div>
								
								<%-- 클래스 금액 --%>
								<div class="col-sm-4 class_amount">
								    <div class="input-group">
								        <input type="text" id="minAmount" class="form-control currency" name="classMinAmount" value="0">
								    <span class="currency-sign">원</span>
								    </div>
								    <span><b style="vertical-align: text-top;">&nbsp;~&nbsp;</b></span>
								    <div class="input-group">
								        <input type="text" id="maxAmount" class="form-control currency" name="classMaxAmount" value="1,000,000">
								    <span class="currency-sign">원</span>
								    </div>
								</div>
								
							</div>
							
	                        <div class="col-md-12 ">
	                            <div class="search-row">  
	                            
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox" class="classOffering" value="1"> 공방 보유</label>
	                                    </div>
	                                </div>

	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox" class="classOffering" value="2"> 주차공간</label>
	                                    </div>
	                                </div>

	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox" class="classOffering" value="3"> 와이파이</label>
	                                    </div>
	                                </div>
	
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                        <label><input type="checkbox" class="classOffering" value="4"> 커피 별도 구매</label>
	                                    </div>
	                                </div>
	
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                    	<label><input type="checkbox" class="classOffering" value="5"> 대중교통 용이</label>
	                                    </div>
	                                </div>
	                                
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                    	<label><input type="checkbox" class="classOffering" value="6"> 택시·자가용 추천</label>
	                                    </div>
	                                </div>
	                                
	                                <div class="col-sm-3">
	                                    <div class="checkbox">
	                                    	<label><input type="checkbox" class="classOffering" value="7"> 음료·간식 제공</label>
	                                    </div>
	                                </div>
	
	                            </div>   
	                        </div>
	                        
	                        <div class="col-md-12 form_button">
	                        	<button type="reset">초기화</button>
	                        	<button type="button" id="SearchListJsonButton">검색</button>
	                        </div>
	                    </form>
	                    
	                </div>
	            </div>
				<%-- 상세검색 area --%>
	
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
				
	            <div class="col-md-12 clear" style="padding-bottom: 100px;"> 
	                <div id="list-type" class="proerty-th">
						<%-- AJAX 를 활용한 요청으로 전달받은 클래스 카드 목록 출력 위치 : 무한스크롤 --%>
					</div>
	            </div>
				
				<%-- 검색결과 없을 경우 --%>
				<div class="noResearchResult" style="display: none;">
				<hr>
		            <div class="col-md-12 clear"> 
		                <div id="list-type" class="proerty-th">
		                
		                <%-- 상단바 검색창으로 검색할 경우 --%>
<!-- 	               		<h2 class="noResearchResult_h2"> -->
<%-- 	               			<b>'${param.searchKeyword}'</b> 에 대한 검색결과가 없습니다. --%>
<!-- 							<br> -->
<!-- 	               			검색어를 다시 입력해 주세요. -->
<!-- 	               		</h2> -->
	                	
	                	<%-- 상세 검색창으로 검색할 경우 --%>
	               		<h2 class="noResearchResult_h2">
	               			검색결과가 없습니다.
							<br>
	               			검색어를 다시 입력하거나 필터를 재설정해주세요.
	               		</h2>
	
						</div>
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
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>	<%-- TimePicker : input type="time" 형식 변경 --%>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>
