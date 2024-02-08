$(window).load(function () { // makes sure the whole site is loaded
    $('#status').fadeOut(); // will first fade out the loading animation
    $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('body').delay(350).css({'overflow': 'visible'});
})

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

// 최신순, 인기순 버튼
$(".order_recently").click(function() {
	$(".order_recently_area").show();
	$(".order_popularity_area").hide();
});
$(".order_popularity").click(function() {
	$(".order_popularity_area").show();
	$(".order_recently_area").hide();
});




// 북마크 삭제 이벤트
$(".bookmarkBtnOK").click(function() {
//	let bookmark_button = this.id;
	let bookmark_idx = $(this).val();
//	console.log("bookmark_button : " + bookmark_button);
//	console.log("bookmark_idx : " + bookmark_idx);
	
	if(confirm("북마크를 제거하시겠습니까?")){
		$.ajax({
			url: "mypage/deleteBookmark",
			data: {
				bookmark_idx: bookmark_idx,
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
	// 상세검색 카테고리(원데이/정규모집) 클릭 시 해당 카테고리 보여주는 이벤트
	// 기본 : 정규모집
	$('.search_detail_classType').on('click', function(event) {
	    let classType = event.target.value;
		// 모든 카테고리에 selected 클래스 삭제
	    $('.search_detail_classType').removeClass('selected');
	    // 선택된 카테고리에 selected 클래스 추가
	    $(this).addClass('selected');
		
	    if(classType == '1') {  // 정규모집
	        $('.class_date_button').show();
	        $('.class_oneday_button').hide();
	    } else if(classType == '2') { // 원데이
	        $('.class_oneday_button').show();
	        $('.class_date_button').hide();
	    }
	});

	// 시작일 드롭박스 focus 이벤트
	$('.class_start_date').on('focus', function() {
		// input type="text" -> input type="date"
		this.type = 'date';
		
		// input type="hidden"의 id값 삭제 (초기값을 위해 만든 input)
		// 실제 날짜 선택 드롭박스에 id값 부여
		$(".hidden_class_start_date").attr("id", "");
		$(".class_start_date").attr("id", "date1");
		
		
		// 초기화 등의 사유로 id값을 잃어버렸을 경우
		let idValue = $("date1").attr('id');
		if(idValue == null) {
			// input type="hidden"의 id값 부여
			// 실제 날짜 선택 드롭박스 id 삭제
			$(".hidden_class_start_date").attr("id", "date1");			
			$(".class_start_date").attr("id", "");
		}
	});
	// 종료일 드롭박스 focus 이벤트
	$('.class_end_date').on('focus', function() {
		// input type="text" -> input type="date"
		this.type = 'date';
		
		// input type="hidden"의 id값 삭제 (초기값을 위해 만든 input)
		// 실제 날짜 선택 드롭박스에 id값 부여
		$(".hidden_class_end_date").attr("id", "");
		$(".class_end_date").attr("id", "date2");

		// 초기화 등의 사유로 id값을 잃어버렸을 경우
		let idValue = $("date2").attr('id');
		if(idValue == null) {
			// input type="hidden"의 id값 부여
			// 실제 날짜 선택 드롭박스 id 삭제
			$(".hidden_class_end_date").attr("id", "date2");			
			$(".class_end_date").attr("id", "");
		}
	});
	
//    $('#time-range').slider();
//    $('#property-geo').slider();
//    $('#price-range').slider();
//    $('#min-baths').slider();
//    $('#min-bed').slider();

	// timepicker : 클래스 시간 드롭다운 형식 커스텀
	$('input.timepicker').timepicker({
        timeFormat: 'HH:mm',
        interval: 1,
        startTime: '00:00',
        dynamic: false,
        dropdown: true,
        scrollbar: false
    });
        
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

        alert("grid 선택!!!!!!!!!!");
    });

    $('.layout-list').on('click', function () {
		
        $('.layout-grid').removeClass('active');
        $('.layout-list').addClass('active');

        $('#list-type').addClass('proerty-th-list');
        $('#list-type').removeClass('proerty-th');

        alert("list 선택!!!!!!!!!!");
    });
    

});


// Initializing WOW.JS

new WOW().init();
