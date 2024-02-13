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
<script>
let contextPath = "<%=request.getContextPath()%>";

let pageNum = 1;
let maxPage = "";

// 상단바 전체메뉴
let classMainCategory = new URL(location.href).searchParams.get("classMainCategory");
let classSubCategory = new URL(location.href).searchParams.get("classSubCategory");

$(function() {
    // 메인에서 sort값 들고와서
    let sort = new URL(location.href).searchParams.get("sort");
    // 최신순/인기순 버튼 활성화 시키기
    if (sort === "sort_recent") {
        $('.order_popularity').parent().removeClass("active");
        $('.order_recently').parent().addClass("active");
    } else if (sort === "sort_popular") {
        $('.order_recently').parent().removeClass("active");
        $('.order_popularity').parent().addClass("active");
    }
    
    /// input type="text" js 설정 때 했던 흔적..
	// 초기화 버튼 클릭 시
//     $('button[type="reset"]').click(function(e){
    	// 기본 이벤트 실행X
//         e.preventDefault();
        
        // 셀렉트박스(selectpicker), 체크박스 초기화
//         $('.selectpicker').selectpicker('deselectAll');
//         $(".classOffering").each(function() {
//             $(this).iCheck('uncheck').iCheck('update');
//         });
        
        // 시작일과 종료일 초기화 - min, max 속성 제거
//         $('.class_start_date').val('').prop('min', '').prop('max', '');
//         $('.class_end_date').val('').prop('min', '').prop('max', '');
        
        // 최소금액과 최대금액 값을 초기화
//         $('#minAmount').val('0');
//         $('#maxAmount').val('1,000,000');
//     });
	
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
    
    
    // 클래스 상태 변경 이벤트
    let today = new Date();
    let currentDate = today.toISOString().substring(0,10);

    $('#classState').change(function() {
        // "모집중" 선택한 경우
        if ($(this).val() == "classState1") {
            // 시작일을 오늘로 설정하고, 오늘 이전 날짜는 선택할 수 없게 함
            $('.class_start_date').val(currentDate).prop('min', currentDate).prop('max', '');
            // 종료일은 초기화하고, 선택 범위는 시작일 이후만 가능하게 함
            $('.class_end_date').val('').prop('min', $('.class_start_date').val()).prop('max', '');
        }
        // "종료" 선택한 경우
        else if ($(this).val() == "classState4") {
            // 시작일은 초기화하고, 선택 범위는 종료일 이전만 가능하게 함
            $('.class_start_date').val('').prop('min', '').prop('max', currentDate);
            // 종료일을 오늘로 설정하고, 오늘 이후 날짜는 선택할 수 없게 함
            $('.class_end_date').val(currentDate).prop('min', '').prop('max', currentDate);
        }
    });

    // 시작일 변경 이벤트
    $('.class_start_date').change(function() {
        // 종료일은 시작일 이후만 선택 가능하게 함
        $('.class_end_date').prop('min', $(this).val());
    });

    // 종료일 변경 이벤트
    $('.class_end_date').change(function() {
        // 시작일은 종료일 이전만 선택 가능하게 함
        $('.class_start_date').prop('max', $(this).val());
    });
    
 	// 북마크 추가 이벤트 (※ main.js에 있는 거랑 별개)
 	$(document).on('click', '.bookmarkBtnON', function() {
    	let class_idx = $(this).val();
    	
    	if(confirm("북마크를 추가하시겠습니까?")){
    		$.ajax({
    			url: contextPath + "/insertBookmark",
    			data: {
    				class_idx: class_idx
    			},
    			dataType: "text",
    			success: function(result) {
    				console.log(result);
                    if (result == 'forward') {
                        // 로그인되지 않은 상태라면 로그인 페이지로 리다이렉트
                        location.href = '/gongsaeng/member/login';
                    } else if (result == 'true') {
                        location.reload();
                    } else {
                        alert("북마크 추가에 실패했습니다. 다시 시도해주세요");
                    }
    			}
    		});
    	};
	});
    // 북마크 삭제 이벤트
    $(document).on('click', '.bookmarkBtnOK', function() {
    	let bookmark_idx = $(this).val();
    	
    	if(confirm("북마크를 제거하시겠습니까?")){
    		$.ajax({
    			url: contextPath + "/mypage/deleteBookmark",
    			data: {
    				bookmark_idx: bookmark_idx
    			},
    			dataType: "json",
    			success: function(result) {
    				if (result == true) {
    					location.reload();
    				} else {
    					alert("북마크 제거에 실패했습니다. 다시 시도해주세요");
    				}
    			}
    		});
    	};
    });
});

$(function() {
	// 초기값 설정 (일부만)
	className = "";
// 	classMainCategory = "";
// 	classSubCategory = "";
	classState = "classState0";	// 클래스 상태 "전체"
	classDay = "";
	classOffering = "";
	
	// 상단 검색창 검색키워드 가져오기
	let urlParams = new URLSearchParams(window.location.search);
	className = urlParams.get('className');
	
	load_list();
	
	// 입력에 따라 변수 업데이트
	// ※ 앞에서 초기값을 설정한 변수 한정
	function data_update() {
		className = $(".top_search").val();
		
		// 메인카테고리 하나만 선택 시 서브카테고리 검색X
		// (해당 메인카테고리 전부 검색되게끔 하기)
		if($("#classCategory").val() != null) {
			classMainCategory = $("#classCategory").val().substring(0, 1);
			classSubCategory = $("#classCategory").val().substring(1, 2);
		} else {
			classMainCategory = "";
			classSubCategory = "";
		}
       
		classState = $("#classState").val();
       
		classDay = 
		    ($("#classDay option[value='1']").prop('selected') ? '1' : '0') +
		    ($("#classDay option[value='2']").prop('selected') ? '1' : '0') +
		    ($("#classDay option[value='3']").prop('selected') ? '1' : '0') +
		    ($("#classDay option[value='4']").prop('selected') ? '1' : '0') +
		    ($("#classDay option[value='5']").prop('selected') ? '1' : '0') +
		    ($("#classDay option[value='6']").prop('selected') ? '1' : '0') +
		    ($("#classDay option[value='7']").prop('selected') ? '1' : '0');
		
		classOffering = 
		    ($("input.classOffering[value='1']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='2']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='3']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='4']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='5']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='6']").parent().hasClass('checked') ? '1' : '0') +
		    ($("input.classOffering[value='7']").parent().hasClass('checked') ? '1' : '0');
	}
	
	// 상단바 검색창에서 키워드 검색 시
	$(".top_search").on('keypress', function(event) {
	    if(event.which == 13) {
	        pageNum = 1;
	
			// 입력에 따라 변수 업데이트
	        data_update();
	        
			// 기존에 출력되어있는 리스트 비우기
		    $("#list-type").empty();
			
			// AJAX 불러오기
			load_list();
			
			event.preventDefault();
	    }
    });
	
	// 상세검색란에서 "검색" 버튼 누를 시
	$(".SearchListJsonButton").click(function() {
        pageNum = 1;

     	// 입력에 따라 변수 업데이트
        data_update();
        
		// 기존에 출력되어있는 리스트 비우기
	    $("#list-type").empty();
		
	 	// AJAX 불러오기
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

// AJAX
function load_list() {
	// AJAX로 보낼 데이터
	let searchData = {
			classType: $(".search_detail_classType.selected").val(),
			className: className,
			classMainCategory: classMainCategory,
			classSubCategory: classSubCategory,
			classState: classState,
			classDay: classDay,
			classStartDate: $("#date1").val(),
			classEndDate: $("#date2").val(),
			classStartTime: $("#time1").val() + ":00",
			classEndTime: $("#time2").val() + ":00",
			minAmount: $("#minAmount").val().replace(/,/g, ''),
			maxAmount: $("#maxAmount").val().replace(/,/g, ''),
			classOffering: classOffering,
			pageNum: pageNum,
			sort: $('.sort-by-list .active').data('value')
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
			console.log("classMainCategory >>> " + searchData.classMainCategory);
			console.log("classSubCategory >>> " + searchData.classSubCategory);
			console.log("classOffering >>> " + searchData.classOffering);
			console.log("classState >>> " + searchData.classState);
			console.log("minAmount >>> " + searchData.minAmount);
			console.log("maxAmount >>> " + searchData.maxAmount);
			console.log("pageNum >>> " + pageNum);
			console.log("maxPage >>> " + maxPage);
			console.log("sort >>> " + searchData.sort);
			console.log("listCount >>> " + data.listCount);
			
			let contextPath = "<%=request.getContextPath()%>";
			
			// 검색시도한 키워드, 검색결과 데이터 갯수
			let result_keyword = searchData.className;
			let result_count = '총 <b>' + data.listCount + '</b>개';
			
			// 페이지에 검색시도한 키워드 출력
			// 검색 안했거나 키워드 치지 않은 상태로 검색창 엔터를 쳤을 경우
			if(result_keyword != null && result_keyword != '') {
				$(".className_area").empty();
				$(".className_area").append("'<b>" + result_keyword + "</b>'");
			} else if(result_keyword == '') {
				$(".className_area").empty();
			}
			// 페이지에 검색결과 데이터 갯수 출력
			$(".list_count_area").empty();
			$(".list_count_area").append(result_count);
			
			
		    if (data.searchClassList.length == 0) {
		 		$(".noResearchResult").show();
		    } else {
		 		$(".noResearchResult").hide();
		    }

		    for(let searchClass of data.searchClassList) {
			    // 클래스 형식 판별
			    if(searchClass.class_category === 1) {
			        classType = '정규모집';
			    } else if(searchClass.class_category === 2) {
			        classType = '원데이 클래스';
			    }

			    // 북마크 체크에 따른 코드 삽입
				isBookmarked = (searchClass.isBookmark_idx > 0);
				bookmark_button1_ButtonStyle = isBookmarked ? 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnNO' : 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnON';
				bookmark_button2_ButtonStyle = isBookmarked ? 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOK' : 'MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOFF';
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
					'				<button id="bookmark_button1" value="' + searchClass.class_idx + '" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnON" tabindex="0" type="button">'
					+ '				<button id="bookmark_button1" value="' + searchClass.class_idx + '" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss95 css-1j7qk7u bookmarkBtnON" tabindex="0" type="button">'
					+ '					<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss97 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteBorderRoundedIcon">'
					+ '						<path d="M19.66 3.99c-2.64-1.8-5.9-.96-7.66 1.1-1.76-2.06-5.02-2.91-7.66-1.1-1.4.96-2.28 2.58-2.34 4.29-.14 3.88 3.3 6.99 8.55 11.76l.1.09c.76.69 1.93.69 2.69-.01l.11-.10c5.25-4.76 8.68-7.87 8.55-11.75-.06-1.7-.94-3.32-2.34-4.28zM12.1 18.55l-.1.10-.10-.10C7.14 14.24 4 11.39 4 8.5 4 6.5 5.5 5 7.5 5c1.54 0 3.04.99 3.57 2.36h1.87C13.46 5.99 14.96 5 16.5 5c2 0 3.5 1.5 3.5 3.5 0 2.89-3.14 5.74-7.9 10.05z"></path>'
					+ '					</svg>'
					+ '					<span class="MuiTouchRipple-root css-w0pj6f"></span>'
					+ '				</button>'
					+ '				<button id="bookmark_button2" value="" class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall jss146 css-1j7qk7u bookmarkBtnOFF" tabindex="0" type="button" style="display: none;">'
					+ '					<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss147 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">'
					+ '						<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.10C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.1 1.76-2.06 5.02-2.91 7.66-1.10 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>'
					+ '					</svg>'
					+ '					<span class="MuiTouchRipple-root css-w0pj6f"></span>'
					+ '				</button>';
			    }
			    
			    // 클래스 카테고리에 따른 코드 삽입
			    let classCategory = "";
			    if(searchClass.class_main_category === 1) {
			    	classCategory = '바닥 시공';
			    	if(searchClass.class_sub_category === 1) {classCategory += ' &gt 바닥재 시공';}
			    	else if(searchClass.class_sub_category === 2) {classCategory += ' &gt 장판 시공';}
			    	else if(searchClass.class_sub_category === 3) {classCategory += ' &gt 타일 시공';}
			    	else if(searchClass.class_sub_category === 4) {classCategory += ' &gt 마루 시공';}
			    	else if(searchClass.class_sub_category === 5) {classCategory += ' &gt 카페트 시공';}
			    } else if(searchClass.class_main_category === 2) {
			    	classCategory = '벽/천장 시공';
			    	if(searchClass.class_sub_category === 1) {classCategory += ' &gt 도배 시공';}
			    	else if(searchClass.class_sub_category === 2) {classCategory += ' &gt 칸막이 시공';}
			    	else if(searchClass.class_sub_category === 3) {classCategory += ' &gt 페인트 시공';}
			    	else if(searchClass.class_sub_category === 4) {classCategory += ' &gt 방음 시공';}
			    	else if(searchClass.class_sub_category === 5) {classCategory += ' &gt 단열 시공';}
			    } else if(searchClass.class_main_category === 3) {
			    	classCategory = '부분 인테리어';
			    	if(searchClass.class_sub_category === 1) {classCategory += ' &gt 샷시 설치 및 수리';}
			    	else if(searchClass.class_sub_category === 2) {classCategory += ' &gt 화장실 리모델링';}
			    	else if(searchClass.class_sub_category === 3) {classCategory += ' &gt 주방 리모델링';}
			    	else if(searchClass.class_sub_category === 4) {classCategory += ' &gt 가구 리폼';}
			    	else if(searchClass.class_sub_category === 5) {classCategory += ' &gt 붙박이장 시공';}
			    } else if(searchClass.class_main_category === 4) {
			    	classCategory = '야외 시공';
			    	if(searchClass.class_sub_category === 1) {classCategory += ' &gt 조경 공사';}
			    	else if(searchClass.class_sub_category === 2) {classCategory += ' &gt 옥상 공사';}
			    	else if(searchClass.class_sub_category === 3) {classCategory += ' &gt 지붕 공사';}
			    	else if(searchClass.class_sub_category === 4) {classCategory += ' &gt 태양광 발전';}
			    	else if(searchClass.class_sub_category === 5) {classCategory += ' &gt 외벽 리모델링';}
			    } else if(searchClass.class_main_category === 5) {
			    	classCategory = '종합 인테리어';
			    	if(searchClass.class_sub_category === 1) {classCategory += ' &gt 집 인테리어';}
			    	else if(searchClass.class_sub_category === 2) {classCategory += ' &gt 상업공간 인테리어';}
			    	else if(searchClass.class_sub_category === 3) {classCategory += ' &gt 주택 리모델링';}
			    	else if(searchClass.class_sub_category === 4) {classCategory += ' &gt 집 수리';}
			    	else if(searchClass.class_sub_category === 5) {classCategory += ' &gt 인테리어 소품';}
			    } else if(searchClass.class_main_category === 6) {
			    	classCategory = '기타 시공';
			    	if(searchClass.class_sub_category === 1) {classCategory += ' &gt 줄눈 시공';}
			    	else if(searchClass.class_sub_category === 2) {classCategory += ' &gt 단열 시공';}
			    	else if(searchClass.class_sub_category === 3) {classCategory += ' &gt 미장 시공';}
			    } else {
			    	classCategory = '알수없음';
			    }
				
				let result_content =
					'	<div class="col-sm-6 col-md-3 p0">'
					+ '		<div class="box-two proerty-item" id="class_list_item">'
					+ '			<div class="item-thumb">'
					+ '				<a href="' + contextPath + '/product/detail?com_idx=' + searchClass.com_idx + '">'
					+ '					<img src="' + contextPath + '/resources/upload/' + searchClass.class_pic1 + '" onerror="this.onerror=null; this.src=\'' + contextPath + '/resources/img/noimg.png\'">'
					+ '				</a>'
					+ '				<span class="jss162">'
					+					classType
					+ '				</span>'
					+ 				classBookmarked
					+ '			</div>'
					+ '			<div class="item-entry overflow">'
					+ '				<div class="container-fluid">'
					+ '					<div class="row">'
					+ '						<div class="col-sm-9 col_class_category">'
					+ '							<h6>'
					+ '								<a href="javascript:void(0);">'
					+ 									classCategory
					+ '								</a>'
					+ '							</h6>'
					+ '						</div>'
					+ '						<div class="col-sm-3" style="padding: 0px; text-align: right;">'
					+ '							<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall jss14 css-1k33q06" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="FavoriteRoundedIcon">'
					+ '								<path d="M13.35 20.13c-.76.69-1.93.69-2.69-.01l-.11-.10C5.3 15.27 1.87 12.16 2 8.28c.06-1.7.93-3.33 2.34-4.29 2.64-1.8 5.9-.96 7.66 1.10 1.76-2.06 5.02-2.91 7.66-1.10 1.41.96 2.28 2.59 2.34 4.29.14 3.88-3.3 6.99-8.55 11.76l-.1.09z"></path>'
					+ '							</svg>'
					+ '							<span class="bookmark_count">'
					+ 								searchClass.bookmarkCount
					+ '							</span>'
					+ '						</div>'
					+ '					</div>'
					+ '					<div class="row">'
					+ '						<div class="col-sm-12 col_className">'
					+ '		                	<h5><a href="' + contextPath + '/product/detail?class_idx=' + searchClass.class_idx + '">' + searchClass.class_title + '</a></h5>'
					+ '		                	<div class="dot-hr"></div>'
					+ '				       		<div class="item_p">'
					+ '								<span class="pull-left_plus">'
					+ 									searchClass.class_introduction
					+ '								</span>'
					+ '				            </div>'
					+ '						</div>'
					+ '					</div>'
					+ '					<div class="row">'
					+ '						<div class="col-sm-12 col_company_name">'
					+ '							<h6>'
					+ '								<a href="' + contextPath + '/com_idx=' + searchClass.com_idx + '">'
					+ 									searchClass.com_name + ' / '
					+ '									<span class="col_company_address">'
					+ 										searchClass.classAddress
					+ '									</span>'
					+ '								</a>'
					+ '							</h6>'
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
					+ ' </div>';
	
				$("#list-type").append(result_content);
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
			console.log("classMainCategory >>> " + searchData.classMainCategory);
			console.log("classSubCategory >>> " + searchData.classSubCategory);
			console.log("classOffering >>> " + searchData.classOffering);
			console.log("classState >>> " + searchData.classState);
			console.log("minAmount >>> " + searchData.minAmount);
			console.log("maxAmount >>> " + searchData.maxAmount);
			console.log("pageNum >>> " + pageNum);
			console.log("maxPage >>> " + maxPage);
			console.log("sort >>> " + searchData.sort);
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
	                	<span class="className_area"></span>
		                검색결과
	                	<span class="list_count_area"></span>
		                <%-- AJAX 를 활용한 요청으로 전달받은 검색결과 갯수 출력 위치 --%>
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
		                        	<button type="button" class="search_detail_classType selected" name="classType" value="0">전체</button>
		                        	<button type="button" class="search_detail_classType" name="classType" value="1">정규모집</button>
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
	                                    <option value="classState3">진행중</option>
	                                    <option value="classState4">종료</option>  
	                                </select>
	                            </div>
	                        </div>
	                        
	                        <div class="col-md-12">
								<%-- 클래스 시작일, 종료일 --%>
								<div class="col-md-4 class_typeAll_button class_typeAll_date_button">
									<label for="date1" class="label_date1">시작 날짜</label>
									<input type="date" id="date1" class="form-control class_start_date" name="classStartDate" style="margin-right: auto;">
									<span><b style="vertical-align: text-top;">&nbsp;~&nbsp;</b></span>
									<label for="date2" class="label_date2">종료 날짜</label>
									<input type="date" id="date2" class="form-control class_end_date" name="classEndDate" style="margin-right: auto;">
								</div>
								<%-- 요일 선택 --%>
								<div class="col-md-4 class_typeAll_button class_typeAll_time_button">
									<select id="classDay" class="selectpicker show-tick form-control" title="요일" multiple>
										<option value="1">월요일</option>
										<option value="2">화요일</option>
										<option value="3">수요일</option>
										<option value="4">목요일</option>
										<option value="5">금요일</option>
										<option value="6">토요일</option>
										<option value="7">일요일</option>  
									</select>
								</div>
								
								<%-- 클래스 금액 --%>
								<div class="col-sm-4 class_amount" id="class_amount_check">
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
							
							<div class="col-md-12">
								<%-- 클래스 시간 --%>
								<div class="col-md-4 class_time" id="class_time_check">
									<label for="time1" class="label_time1">시작 시간</label>
									<input type="time" id="time1" class="form-control class_start_time" name="classStartTime" style="margin-right: auto;">
									<span><b style="vertical-align: text-top;">&nbsp;~&nbsp;</b></span>
									<label for="time2" class="label_time2">종료 시간</label>
									<input type="time" id="time2" class="form-control class_end_time" name="classEndTime" style="margin-right: auto;">
								</div>
							
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
	                        	<button type="button" class="SearchListJsonButton searchButton">검색</button>
	                        </div>
	                    </form>
	                    
	                </div>
	            </div>
				<%-- 상세검색 area --%>
	
	            <div class="col-md-12  clear"> 
	                <div class="col-xs-10 page-subheader sorting pl0">
	                    <ul class="sort-by-list">
                            <li class="active" data-value="sort_recent">
                                <a href="javascript:void(0);" class="order_recently SearchListJsonButton">최신순</a>
                            </li>
                            <li class="" data-value="sort_popular">
                                <a href="javascript:void(0);" class="order_popularity SearchListJsonButton">인기순</a>
                            </li>
	                    </ul>
	                </div>
	
	                <div class="col-xs-2 layout-switcher">
	                    <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
	                    <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
	                </div><!--/ .layout-switcher-->
	            </div>
				
	            <div class="col-md-12 clear" style="padding-bottom: 100px;">
	                <div id="list-type" class="proerty-th">
						<%-- AJAX 를 활용한 요청으로 전달받은 클래스 카드 목록 출력 위치 (+ 무한스크롤) --%>
					</div>
	            </div>
				
				<%-- 검색결과 없을 경우 --%>
				<div class="noResearchResult" style="display: none;">
				<hr>
		            <div class="col-md-12 clear"> 
		                <div id="list-type" class="proerty-th">
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
<%-- 	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script> --%>
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
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/class_list.js"></script> --%>
</body>
</html>
