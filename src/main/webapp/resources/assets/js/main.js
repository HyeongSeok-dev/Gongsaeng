$(document).ready(function() { // makes sure the whole site is loaded
    $('#status').fadeOut(); // will first fade out the loading animation
    $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('body').delay(350).css({'overflow': 'visible'});
});

// 슬라이더
$(document).ready(function () {
	// 메인 광고 슬라이더
    $("#bg-slider").owlCarousel({
        navigation: true, // Show next and prev buttons
        smartSpeed: 500,
        autoplay: true,
        autoplayTimeout: 5000,
		items : 1,
        mouseDrag: true,
        center: true,
        loop: true
    });
    // 메인 이벤트 슬라이더
    $("#event-slider").owlCarousel({
        navigation: true, // Show next and prev buttons
        smartSpeed: 500,
        autoplay: true,
        autoplayTimeout: 5000,
		items : 1,
        mouseDrag: true,
        center: true,
        loop: true,
        animateOut: 'fadeOut',
    	animateIn: 'fadeIn'
    });
    $("#prop-smlr-slide_0").owlCarousel({
        navigation: false, // Show next and prev buttons
        slideSpeed: 100,
        pagination: true,
        paginationSpeed: 100,
        items: 3

    });
    $("#testimonial-slider").owlCarousel({
		navigation: false, // Show next and prev buttons
		slideSpeed: 100,
		pagination: true,
		paginationSpeed: 100,
		items: 3
    });
    
    // 메인 클래스카드(마감임박순) 슬라이더
    $(".deadlineClass-slider").owlCarousel({
		nav: true,
		dots: false,
		smartSpeed: 500,
		autoplayTimeout: 5000,
		items: 3,
		mouseDrag: true,
		loop: false
	});
	
	// 메인 리뷰카드(최신순) 슬라이더
    $(".recentReview-slider").owlCarousel({
//        navigation: true,
        nav: true,
        dots: false,
        smartSpeed: 500,
        autoplayTimeout: 5000,
        items: 3,
        mouseDrag: true,
        loop: false
	});
	
})

// 상단바 전체메뉴 멀티 드롭다운 이벤트
$(document).ready(function () {
    $(".submenu-container").each(function() {
        let submenu = $(this).find('.dropdown-submenu');

        $(this).hover(function() {
            submenu.show();
            $('#dropdown-submenu_event').css('min-width', '300px');
            $('.dropdown-menu-toggle', this).css({'font-weight': 'bold'});
        }, function() {
            submenu.hide();
            $('#dropdown-submenu_event').css('min-width', '160px');
            $('.dropdown-menu-toggle', this).css({'font-weight': 'normal'});
        });
    });
});

// 상단바 전체메뉴 - 상위메뉴
$(document).on('click', '.mainMenu', function() {
    // classMainCategory 값을 가져옴
    let classMainCategory = $(this).data('value');

    // classMainCategory 값만 들고 class/list로 리다이렉트
    location.href = "/gongsaeng/class/list?classMainCategory=" + classMainCategory;
});
// 상단바 전체메뉴 - 하위메뉴
$(document).on('click', '.dropdown-submenu a li', function() {
    // classMainCategory 값을 가져옴
    let classMainCategory = $(this).closest('.submenu-container').find('.mainMenu').data('value');

    // classSubCategory 값을 가져옴
    let classSubCategory = $(this).data('value');
    
    // classMainCategory와 classSubCategory 값을 들고 class/list로 리다이렉트
    location.href = "/gongsaeng/class/list?classMainCategory=" + classMainCategory + "&classSubCategory=" + classSubCategory;
});

// 알림 카테고리 클릭 시 해당 알림 보여주는 이벤트
function notify_button(value) {
	var notifyButtons = document.querySelectorAll('.notify_button_' + value);
	var $button = $('button:not(.notify_setting)[value="' + value + '"]');

	$('.notify_button').css({'font-weight': 'normal', 'background' : 'none'});
	$button.css({'font-weight': 'bold', 'background' : 'linear-gradient(to top, #ddd 40%, transparent 20%)'});
	$('.notify_p').css('display', 'none');
	notifyButtons.forEach(function(button) {
		button.style.display = '';
	});
}

// 최신순 버튼 클릭 시
$(".order_recently").click(function() {
	
	$(".order_recently_area").show();
	$(".order_popularity_area").hide();
	
	$('.order_recently').parent().addClass("active");
	$('.order_popularity').parent().removeClass("active");
	
	// 어떤 경우에든 항상 class/list로 보내도록
//	$('.plus_class_List').click(function() {
//		location.href = '/gongsaeng/class/list';
//		location.href = '/gongsaeng/class/list?sort=sort_recent';
//	});	
});
// 인기순 버튼 클릭 시
$(".order_popularity").click(function() {
	$(".order_popularity_area").show();
	$(".order_recently_area").hide();

	$('.order_popularity').parent().addClass("active");
	$('.order_recently').parent().removeClass("active");
});

// "더보기" 버튼 클릭 시
function plus_class_List() {
    // sort 값을 가져옴
    let sort = $('.sort-by-list .active').data('value');
    
    // sort값을 들고 class/list로 리다이렉트
    location.href = "/gongsaeng/class/list?sort=" + sort;
}


// 북마크 추가 이벤트
$(".bookmarkBtnON").click(function() {
	let class_idx = $(this).val();
	
	if(confirm("북마크를 추가하시겠습니까?")){
		$.ajax({
			url: "insertBookmark",
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
$(".bookmarkBtnOK").click(function() {
	let bookmark_idx = $(this).val();
	
	if(confirm("북마크를 제거하시겠습니까?")){
		$.ajax({
			url: "mypage/deleteBookmark",
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
	

/// 여기서부턴 class_list.jsp
// 상세검색
$(document).ready(function () {
	// 상세검색 카테고리(전체/정규모집/원데이) 클릭 시
	// 해당 카테고리 보여주는 이벤트 --- 폐기
	// 기본 : 전체
	$('.search_detail_classType').on('click', function(event) {
//	    let classType = event.target.value;
		// 모든 카테고리에 selected 클래스 삭제
	    $('.search_detail_classType').removeClass('selected');
	    // 선택된 카테고리에 selected 클래스 추가
	    $(this).addClass('selected');
		
		/// 상세검색란에서
		/// 전체/정규모집/원데이 클릭 시 선택할 수 있는 셀렉트박스가
		/// 변경되는 기능인데 굳이 그럴 필요가 없어서 X
//	    if(classType == '0') {	// 전체
//	        $('.class_typeAll_button').show();
//	        $('.class_date_button').hide();
//	        $('.class_oneday_button').hide();
//	        
//	        $('#class_time_check').removeClass();
//	        $('#class_time_check').addClass('col-md-3 class_time');
//	        
//	        $("#class_time_check").css('width', '28%');
//	        $("#class_amount_check").css('width', '26.36%');
//		} else if(classType == '1') {  // 정규모집
//	        $('.class_date_button').show();
//	        $('.class_oneday_button').hide();
//	        $('.class_typeAll_button').hide();
//
//	        $('#class_time_check').removeClass();
//	        $('#class_time_check').addClass('col-md-4 class_time');
//	        
//	        $("#class_time_check").css('width', '33.33%');
//	        $("#class_amount_check").css('width', '33.33%');
//	    } else if(classType == '2') { // 원데이
//	        $('.class_oneday_button').show();
//	        $('.class_date_button').hide();
//	        $('.class_typeAll_button').hide();
//
//	        $('#class_time_check').removeClass();
//	        $('#class_time_check').addClass('col-md-4 class_time');
//	        
//	        $("#class_time_check").css('width', '33.33%');
//	        $("#class_amount_check").css('width', '33.33%');
//	    }
	});

	/// 원래 placeholder 기능을 위해 input type="text" 태그를 클릭 시
	/// input type="date/time"으로 바뀌는 기능을 썼는데
	/// 초기값 설정과 초기화 기능, 파라미터 등의 문제로 꼬여서 X
	// 시작일 드롭박스 focus 이벤트
//	$('.class_start_date').on('focus', function() {
//		// input type="text" -> input type="date"
//		this.type = 'date';
//		
//		// input type="hidden"의 id값 삭제 (초기값을 위해 만든 input)
//		// 실제 날짜 선택 드롭박스에 id값 부여
//		$(".hidden_class_start_date").attr("id", "");
//		$(".class_start_date").attr("id", "date1");
//		
//		
//		// 초기화 등의 사유로 id값을 잃어버렸을 경우
//		let idValue = $("date1").attr('id');
//		if(idValue == null) {
//			// input type="hidden"의 id값 부여
//			// 실제 날짜 선택 드롭박스 id 삭제
//			$(".hidden_class_start_date").attr("id", "date1");			
//			$(".class_start_date").attr("id", "");
//		}
//	});
	// 종료일 드롭박스 focus 이벤트
//	$('.class_end_date').on('focus', function() {
//		// input type="text" -> input type="date"
//		this.type = 'date';
//		
//		// input type="hidden"의 id값 삭제 (초기값을 위해 만든 input)
//		// 실제 날짜 선택 드롭박스에 id값 부여
//		$(".hidden_class_end_date").attr("id", "");
//		$(".class_end_date").attr("id", "date2");
//
//		// 초기화 등의 사유로 id값을 잃어버렸을 경우
//		let idValue = $("date2").attr('id');
//		if(idValue == null) {
//			// input type="hidden"의 id값 부여
//			// 실제 날짜 선택 드롭박스 id 삭제
//			$(".hidden_class_end_date").attr("id", "date2");			
//			$(".class_end_date").attr("id", "");
//		}
//	});
	// 시작시간 드롭박스 focus 이벤트
//	$('.class_start_time').on('focus', function() {
//	    // input type="text" -> input type="time"
//	    this.type = 'time';
//	
//	    // input type="hidden"의 id값 삭제 (초기값을 위해 만든 input)
//	    // 실제 시간 선택 드롭박스에 id값 부여
//	    $(".hidden_class_start_time").attr("id", "");
//	    $(".class_start_time").attr("id", "time1");
//	
//	    // 초기화 등의 사유로 id값을 잃어버렸을 경우
//	    let idValue = $("#time1").attr('id');
//	    if(idValue == null) {
//	        // input type="hidden"의 id값 부여
//	        // 실제 시간 선택 드롭박스 id 삭제
//	        $(".hidden_class_start_time").attr("id", "time1");            
//	        $(".class_start_time").attr("id", "");
//	    }
//	});
	// 종료시간 드롭박스 focus 이벤트
//	$('.class_end_time').on('focus', function() {
//	    // input type="text" -> input type="time"
//	    this.type = 'time';
//	
//	    // input type="hidden"의 id값 삭제 (초기값을 위해 만든 input)
//	    // 실제 시간 선택 드롭박스에 id값 부여
//	    $(".hidden_class_end_time").attr("id", "");
//	    $(".class_end_time").attr("id", "time2");
//	
//	    // 초기화 등의 사유로 id값을 잃어버렸을 경우
//	    let idValue = $("#time2").attr('id');
//	    if(idValue == null) {
//	        // input type="hidden"의 id값 부여
//	        // 실제 시간 선택 드롭박스 id 삭제
//	        $(".hidden_class_end_time").attr("id", "time2");            
//	        $(".class_end_time").attr("id", "");
//	    }
//	});
	
	/// 기존의 부트스트랩 템플릿에 포함되어 있던 슬라이더 기능
	/// 편하지 않고, 다루기 어렵고, 파라미터의 문제로 X
//    $('#time-range').slider();
//    $('#property-geo').slider();
//    $('#price-range').slider();
//    $('#min-baths').slider();
//    $('#min-bed').slider();

	/// 사용자의 편의를 위해 굳이 넣은건데
	/// 생각보다 편하지 않고, 제이쿼리 함수가 잘 먹히지 않아서 X
	// timepicker : 클래스 시간 드롭다운 형식 커스텀
//	$('input.timepicker').timepicker({
//        timeFormat: 'HH:mm',
//        interval: 1,
//        startTime: '00:00',
//        dynamic: false,
//        dropdown: true,
//        scrollbar: false
//    });

	/// 기존의 템플릿에 있던건데
	/// 뭔지 하나도 모르겠음
//    var RGBChange = function () {
//        $('#RGB').css('background', '#FDC600')
//    };
	
	// 클래스 금액
	// 입력숫자 3자리마다 콤마로 구분
	function formatNumber(n) {
		return n.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	// 1,000,000 초과되면 입력못하게
	$("#minAmount, #maxAmount").on("input", function() {
		let value = $(this).val().replace(/\D/g, "");
	
		if (value > 1000000) {
			value = "1000000";
		}
		value = formatNumber(value);
		$(this).val(value);
	});
	// 커서를 벗어나면 1,000,000으로 초기화
	$("#minAmount, #maxAmount").on("blur", function() {
		var value = $(this).val().replace(/\D/g, "");
		
		if (value < 0) {
			$(this).val("0");
		} else if (value > 1000000) {
			$(this).val("1,000,000");
		}
	});

	$('button[type="reset"]').click(function () {
    	$('.selectpicker').selectpicker('deselectAll');
	});

	$('button[type="reset"]').click(function () {
	    $('input[type="checkbox"]').prop('checked', false);
	});

	/// 뭔지 모르겠지만 냅둠
    // Advanced search toggle
    var $SearchToggle = $('.search-form .search-toggle');
    $SearchToggle.hide();

    $('.search-form .toggle-btn').on('click', function (e) {
        e.preventDefault();
        $SearchToggle.slideToggle(300);
    });

    setTimeout(function () {
        $('#counter').text('0');
        $('#counter1').text('0');
        $('#counter2').text('0');
        $('#counter3').text('0');
        setInterval(function () {
            var curval = parseInt($('#counter').text());
            var curval1 = parseInt($('#counter1').text().replace(' ', ''));
            var curval2 = parseInt($('#counter2').text());
            var curval3 = parseInt($('#counter3').text());
            if (curval <= 1007) {
                $('#counter').text(curval + 1);
            }
            if (curval1 <= 1280) {
                $('#counter1').text(sdf_FTS((curval1 + 20), 0, ' '));
            }
            if (curval2 <= 145) {
                $('#counter2').text(curval2 + 1);
            }
            if (curval3 <= 1022) {
                $('#counter3').text(curval3 + 1);
            }
        }, 2);
    }, 500);

    function sdf_FTS(_number, _decimal, _separator) {
        var decimal = (typeof (_decimal) != 'undefined') ? _decimal : 2;
        var separator = (typeof (_separator) != 'undefined') ? _separator : '';
        var r = parseFloat(_number)
        var exp10 = Math.pow(10, decimal);
        r = Math.round(r * exp10) / exp10;
        rr = Number(r).toFixed(decimal).toString().split('.');
        b = rr[0].replace(/(\d{1,3}(?=(\d{3})+(?:\.\d|\b)))/g, "\$1" + separator);
        r = (rr[1] ? b + '.' + rr[1] : b);

        return r;
    }
    
    /// 기존의 템플릿에 포함되어 있던 부트스트랩 기능
    /// 아이콘 디자인 변경을 원할 시
    /// webapp/resources/assets/img/icon 폴더 참고해서 변경
    // 체크박스 아이콘
	$('input').iCheck({
		checkboxClass: 'icheckbox_square-grey',
		radioClass: 'iradio_square-grey',
		increaseArea: '20%' // optional
    });
});

// class_list.jsp (체크박스 이벤트, 카드 레이아웃 선택)
$(document).ready(function () {
    $('.layout-grid').on('click', function () {
        $('.layout-grid').addClass('active');
        $('.layout-list').removeClass('active');

        $('#list-type').removeClass('proerty-th-list');
        $('#list-type').addClass('proerty-th');
        $("#list-type").parent().addClass("class_list_items_area");
    });

    $('.layout-list').on('click', function () {
        $('.layout-grid').removeClass('active');
        $('.layout-list').addClass('active');

        $('#list-type').addClass('proerty-th-list');
        $('#list-type').removeClass('proerty-th');
        $("#list-type").parent().removeClass("class_list_items_area");
    });
    

});


// Initializing WOW.JS

new WOW().init();
