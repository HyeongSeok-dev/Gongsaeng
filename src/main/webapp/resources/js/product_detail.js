	var selectedDate = null;
$(document).ready(function() {


	// 날짜 클릭 이벤트
	$(".date-item").click(function() {
		$(".date-item").removeClass("selected"); // 모든 날짜의 선택 상태를 해제
		$(this).addClass("selected"); // 클릭된 날짜만 선택 상태로 변경
		selectedDate = $(this).text(); // 선택된 날짜 저장

	});
	
				function goToPayment2() {
			    var res_visit_date = selectedDate; // 선택된 날짜를 사용합니다.
			    var res_visit_time = document.getElementById('res_visit_time').value;
			    var res_member_count = document.getElementById('res_member_count').value;
			    var class_idx = '${cla.class_idx}';
			    var contextPath = '${pageContext.request.contextPath}';
			    
			    var url = contextPath + '/payment?type=pay&class_idx=' + class_idx + '&res_visit_date=' + encodeURIComponent(res_visit_date) + '&res_visit_time=' + encodeURIComponent(res_visit_time) + '&res_member_count=' + res_member_count;
			    location.href = url;
			}
	
	

	// '장바구니' 버튼 클릭 이벤트
	$("#add-to-cart").click(function() {
		if (selectedDate) { // 날짜가 선택되었을 때만 처리
			var classIdx = $("input[name='class_idx']").val(); // class_idx 값 가져오기
			var memberId = $("input[name='member_id']").val(); // member_id 값 가져오기
			var resVisitTime = $("#res_visit_time").val(); // res_visit_time 값 가져오기
			var resMemberCount = $("#res_member_count").val(); // res_member_count 값 가져오기

			$.ajax({
				url: "add-to-cart", // 서버의 '장바구니' 처리 URL
//				type: "POST", // HTTP 메소드
				data: { // 서버로 보낼 데이터
					res_visit_date: selectedDate,
					class_idx: classIdx,
					member_id: memberId,
					res_visit_time: resVisitTime,
					res_member_count: resMemberCount
				},
				dataType: "json",
				success: function(result) {
					if (result == true) {
						alert("장바구니에 추가되었습니다.");
						location.href = "/gongsaeng/cart";
					} else {
						alert("북마크 제거에 실패했습니다. 다시 시도해주세요");
					}
//					console.log(response);
					// 서버로부터의 응답 처리
				},
				error: function(jqXHR, textStatus, errorThrown) {
        console.log(textStatus, errorThrown); // 오류 정보 출력
    }
			});
		} else {
			alert("날짜를 선택해주세요.");
		}
	});


	//	var contextRoot = window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
	//
	//	//결제하기버튼 누르면 결제페이지로 이동
	//	$("#payment").click(function() {
	//		console.log("결제하기 버튼 작동");
	//		//결제하기 화면으로 넘길때 "pay" 도 같이 넘기기
	//		var url = "payment?type=pay";
	//
	//		window.location.href = url;
	//
	//		console.log(url);
	//	});
//
//	fetchRestaurants('near');
	//즐겨찾기 누르기

//	$(".favorite_button").click(function() {
//		var comId = $("#com_id").val(); // 회사 아이디 가져오기
//
//		// Ajax 요청 보내기
//		$.ajax({
//			type: "POST",
//			url: "favor",
//			data: { com_id: comId },
//			success: function(response) {
//				if (response != 'notLogin') {
//					if (response === 'true') {
//						$(".favor_container").html("<div class='favor_on'><span id='favorite_button'> 북마크 </span></div>");
//					} else if (response === 'false') {
//						$(".favor_container").html("<div class='favor_off'><span id='favorite_button'> 북마크 </span></div>");
//					}
//				} else {
//					alert('로그인 후 북마크가 가능합니다!');
//					window.location.href = "../login";
//				}
//			},
//			error: function() {
//				alert("오류가 발생했습니다.");
//			}
//		});
//	});



	//	$('input[name="menu_idx"]').each(function() {
	//		$(this).change(function() {
	//			if ($('input[name="menu_idx"]').is(':checked')) {
	//				$('#reservation-confirm-button').text('선택한 메뉴와 예약하기');
	//			} else {
	//				$('#reservation-confirm-button').text('선주문없이 바로 예약하기');
	//			}
	//		});
	//	});

	//	$('.sort-option-div').each(function() {
	//		$(this).click(function() {
	//			var sortValue = $(this).attr('data-sort-value');
	//
	//			if ($('.sort-option-selected')) {
	//				$('.sort-option-selected').removeClass('sort-option-selected');
	//			}
	//
	//			$(this).addClass('sort-option-selected');
	//
	//			fetchRestaurants(sortValue);
	//		});
	//	});



	//	$('#reservation-confirm-button').click(function() {
	//
	//		var selectedMenus = [];
	//
	//		$('input.menu_check:checked').each(function() {
	//			var menuCard = $(this).closest('.menu_card');
	//			selectedMenus.push({
	//				menu_idx: menuCard.data('menu-id'),
	//				menu_name: menuCard.data('menu-name'),
	//				menu_price: menuCard.data('menu-price'),
	//				order_amount: menuCard.find('input[name="order_amount"]').val()
	//			});
	//		});

	// formData 기본 구조 설정
	//		var formData = {
	//			com_id: $('#com_id').val()
	//		};
	//
	//		if (selectedMenus.length > 0) {
	//			formData.menus = selectedMenus;
	//		}

	//		$.ajax({
	//			url: contextRoot + '/product/detailPro',
	//			type: 'POST',
	//			contentType: 'application/json',
	//			dataType: 'json',
	//			data: JSON.stringify(formData),
	//			success: function(response) {
	//				// 성공적으로 데이터를 받으면 실행할 코드
	//				console.log("Response: ", response);
	//				window.location.href = contextRoot + response.redirectURL; // Redirect to the reservation page
	//			},
	//			error: function(xhr) { // xhr은 XMLHttpRequest 객체입니다.
	//				var response = xhr.responseJSON; // JSON 응답을 객체로 변환
	//				if (response && response.error) {
	//					alert(response.message);
	//					if (response.redirectURL != null) {
	//						window.location.href = response.redirectURL; // Redirect
	//					}
	//				}
	//			}
	//		});
	//	});

	// 두 위치 사이의 거리를 계산하는 함수
	//	function calculateDistance(lat1, lon1, lat2, lon2, callback) {
	//		var origin = new kakao.maps.LatLng(lat1, lon1);
	//		var destination = new kakao.maps.LatLng(lat2, lon2);
	//
	//		// 선 객체를 생성합니다
	//		var polyline = new kakao.maps.Polyline({
	//			path: [origin, destination]
	//		});
	//
	//		// 선의 총 거리를 계산합니다
	//		var distance = polyline.getLength();
	//		callback(distance);
	//	}

	// 사용자의 현재 위치를 얻는 함수
	//	function getCurrentLocation(callback) {
	//		if (navigator.geolocation) {
	//			navigator.geolocation.getCurrentPosition(function(position) {
	//				callback(position.coords.latitude, position.coords.longitude);
	//			});
	//		} else {
	//			alert("지원하지 않는 브라우저입니다.");
	//		}
	//	}

	// 주소를 좌표로 변환하는 함수
	//	function getAddressCoordinates(address, callback) {
	//		var geocoder = new kakao.maps.services.Geocoder();
	//		geocoder.addressSearch(address, function(result, status) {
	//			if (status === kakao.maps.services.Status.OK) {
	//				var coordinates = {
	//					lat: result[0].y,
	//					lon: result[0].x
	//				};
	//				callback(coordinates);
	//			} else {
	//				alert("주소를 좌표로 변환하는 데 실패했습니다: " + address);
	//			}
	//		});
	//	}

	// 가게의 주소 정보와 사용자의 현재 위치를 사용하여 거리 계산
	//	function calculateDistanceForRestaurants() {
	//		getCurrentLocation(function(userLat, userLon) {
	//			$('.basic-info').each(function() {
	//				var restaurant = $(this);
	//				var storeAddress = restaurant.find('input[name="storeAddress"]').val();
	//				getAddressCoordinates(storeAddress, function(coordinates) {
	//					calculateDistance(userLat, userLon, coordinates.lat, coordinates.lon, function(distance) {
	//						if (distance < 1000) { // 1000m 미만일 때는 m 단위로 정수 표시
	//							restaurant.find('.restaurant-distance').text(Math.round(distance) + ' m');
	//						} else { // 1000m 이상일 때는 km 단위로 소수 첫째자리까지 표시
	//							restaurant.find('.restaurant-distance').text((distance / 1000).toFixed(1) + ' km');
	//						}
	//					});
	//				});
	//			});
	//		});
	//	}

	//	function calculateDistanceForSimilarRestaurants() {
	//		getCurrentLocation(function(userLat, userLon) {
	//			$('.similar_rest_card').each(function() {
	//				var restaurant = $(this);
	//				var storeAddress = restaurant.find('input[name="storeAddress"]').val();
	//				getAddressCoordinates(storeAddress, function(coordinates) {
	//					calculateDistance(userLat, userLon, coordinates.lat, coordinates.lon, function(distance) {
	//						if (distance < 1000) { // 1000m 미만일 때는 m 단위로 정수 표시
	//							restaurant.find('.similar_rest_distance_number').text(Math.round(distance) + ' m');
	//						} else { // 1000m 이상일 때는 km 단위로 소수 첫째자리까지 표시
	//							restaurant.find('.similar_rest_distance_number').text((distance / 1000).toFixed(1) + ' km');
	//						}
	//					});
	//				});
	//			});
	//		});
	//	}

	//	function fetchRestaurants(sortValue) {
	//		var fetchData = { similarSort: sortValue, com_id: $('#com_id').val() }
	//		var contextPath = "/zzimkong/";
	//		$.ajax({
	//			url: 'similarList',
	//			type: 'POST',
	//			contentType: 'application/json',
	//			dataType: 'json',
	//			data: JSON.stringify(fetchData),
	//			success: function(response) {
	//				var similarContents = $('#similar-contents');
	//				similarContents.html('');
	//
	//				response.forEach(function(restaurant) {
	//					var restaurantHtml = `
	//                <a href="detail?com_id=${restaurant.com_id}"&selectedTime=''>
	//                    <div class="similar_rest_card">
	//                        <div class="similar_rest_box">
	//                            <div class="similar_rest_distance">
	//                                <img class="similar_rest_distance_img"
	//                                    src="` + contextPath + `/resources/img/products_location_img.png"
	//                                    alt="추천 식당 거리 표시 아이콘"> <span
	//                                    class="similar_rest_distance_number"></span>
	//                            </div>
	//                            <img class="similar_rest_img"
	//                                 src="` + contextPath + `/resources/upload/${restaurant.com_img}">
	//                            <div class="similar_rest_average">
	//                                <img class="similar_rest_average_img"
	//                                     src="` + contextPath + `/resources/img/products_similar_star.png"
	//                                    alt=""> <span class="similar_rest_average_number">
	//                                    ${restaurant.avg_score}</span>
	//                            </div>
	//                        </div>
	//                        <span class="similar_rest_title">${restaurant.com_name}<br></span>
	//                        <input type="hidden" name="storeAddress" value="${restaurant.com_address}">
	//                    </div>
	//                    </a>
	//                `;
	//					similarContents.append(restaurantHtml);
	//					calculateDistanceForSimilarRestaurants();
	//				});
	//			},
	//			error: function(error) {
	//				console.error("에러 ", error);
	//			}
	//		});
	//	}

//	kakao.maps.load(function() {
//		calculateDistanceForRestaurants();
//	});


});

//function mapPopup(address, name) {
//	var encodedAddress = encodeURIComponent(address);
//	var encodedName = encodeURIComponent(name);
//	var url = "map?address=" + encodedAddress + "&name=" + encodedName;
//	var windowName = "MapPopup";
//	var windowSize = "width=1000,height=800,left=200,top=200";
//
//	window.open(url, windowName, windowSize);
//}

function issueCoupon(com_idx) {

	$.ajax({
		url: "issueCoupon",
		data: {
			com_idx: com_idx,
		},
		success: function(data) {
			const result = $.trim(data);
			if (result == 'success') {
				alert("반장님을 팔로우해 쿠폰이 발급 되었습니다.")
			} else if (result == 'following') {
				alert("반장님을 팔로우 했습니다. 쿠폰은 더이상 지급되지 않습니다.");
			} else if (result == 'fail') {
				alert("이미 팔로우되어 이미 쿠폰이 발급되었습니다.");
			} else {
				alert("오류가 발생했습니다. 잠시후 다시 시도해주세요");
			}
		}
	});
}
/*tests*/
//// reviewList가 있다고 가정
//var reviewList = [/* 리뷰 데이터 */];
//
//// 처음 5개의 리뷰만 선택
//var firstFiveReviews = reviewList.slice(0, 5);
//
//// 각 리뷰에 대해 HTML 생성
//firstFiveReviews.forEach(function(review) {
//    // 여기에서 review를 사용해 HTML을 생성
//});

//function printDays(class_day) {
//    var days = ['월', '화', '수', '목', '금', '토', '일'];
//    var classDays = '';
//
//    for (var i = 0; i < class_day.length; i++) {
//        if (class_day[i] === '1') {
//            classDays += days[i];
//        }
//    }
//
//    // 결과를 <h2> 태그에 출력합니다.
//    document.getElementById('classDays').textContent = classDays;
//}

