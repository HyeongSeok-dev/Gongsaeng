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
	        navigation: true,
	        smartSpeed: 500,
//	        autoplay: true,
	        autoplayTimeout: 5000,
	        items: 3,
	        mouseDrag: true,
	        loop: false
	});
	
	// 메인 리뷰카드(최신순) 슬라이더
    $(".recentReview-slider").owlCarousel({
	        navigation: true,
	        smartSpeed: 500,
//	        autoplay: true,
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
	
	$('.notify_p').css('display', 'none');
	notifyButtons.forEach(function(button) {
		button.style.display = '';
	});
}


/// 여기서부턴 class_list.jsp
// 상세검색
$(document).ready(function () {
	// 상세검색 카테고리(원데이/정규모집) 클릭 시 해당 카테고리 보여주는 이벤트
	$('.search_detail_category').on('click', function(event) {
		// 모든 카테고리에 selected 클래스 삭제
	    $('.search_detail_category').removeClass('selected');
	    // 선택된 카테고리에 selected 클래스 추가
	    $(this).addClass('selected');
	
	    let searchCategory = event.target.value;
	    
	    if(searchCategory == 'searchCategory1') {
	        $('.class_date_button').hide();
	        $('.class_oneday_button').show();
	    } else if(searchCategory == 'searchCategory2') {
	        $('.class_oneday_button').hide();
	        $('.class_date_button').show();
	    }
	});
	
	$('#price-range').slider();
    $('#property-geo').slider();
    $('#min-baths').slider();
    $('#min-bed').slider();

    var RGBChange = function () {
        $('#RGB').css('background', '#FDC600')
    };

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
