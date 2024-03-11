// 전역 변수로 일정 데이터를 저장할 배열 선언
var schedules = [];


function updateCheckboxValue(checkbox) {
    var label = document.querySelector('label[for="' + checkbox.id + '"]');
    if (label) {
        if (checkbox.checked) {
            label.classList.add('checked');
        } else {
            label.classList.remove('checked');
        }
    }
}

// 이미지 변경 시 호출되는 함수
function changeImage(input, previewId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function (e) {
            // 프리뷰 이미지를 변경
            var previewImg = document.querySelector(`#${previewId} img`);
            previewImg.src = e.target.result;
            // 프리뷰 영역을 보이게 설정
            document.getElementById(previewId).style.display = 'block';
        };
        
        reader.readAsDataURL(input.files[0]);
    }
}

// 이미지 미리보기 함수
function previewImage(previewId, input) {
    var file = input.files[0];
    if (file) {
        var reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById(previewId).innerHTML = '<img src="' + e.target.result + '" width="150" height="150"/><span class="chk_style" onclick="removeImage(\'' + previewId + '\', \'' + input.id + '\');">x</span>';
        };
        reader.readAsDataURL(file);
    }
}

// 이미지 프리뷰 업데이트 함수에 파일 이름 저장 로직 추가
function updateImagePreview(index) {
    var fileInput = document.getElementById('curriculum_imageFile' + index);
    var preview = document.getElementById('curriculum_imagePreview' + index);

    if (fileInput.files && fileInput.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            preview.innerHTML = '<img src="' + e.target.result + '" width="150" height="150"><span class="chk_style" onclick="removePreview(\'curriculum_imagePreview' + index + '\', \'curriculum_imageFile' + index + '\');">x</span>';
        };

        reader.readAsDataURL(fileInput.files[0]);
        fileInput.setAttribute('data-filename', fileInput.files[0].name); // 파일 이름을 data-filename 속성에 저장
    }
}



$(document).ready(function() {


    $("#goTo1Tab").click(function() {
        $('#home-tab').tab('show');

    });

    // 두 번째 탭으로 이동하는 이전 버튼 이벤트
    $("#goTo2Tab").click(function() {
        $('#profile-tab').tab('show');
    });
    
    // 세 번째 탭으로 이동하는 이전 버튼 이벤트
    $("#goTo3Tab").click(function() {
        $('#contact-tab').tab('show');
    });

    // 네 번째 탭으로 이동하는 이전 버튼 이벤트
    $("#goTo4Tab").click(function() {
        $('#extra-tab').tab('show');
    });

 // =================== 이전버튼 
    // 스케줄 및 부가정보 탭에서 이전 버튼 클릭 시 기본 정보 탭으로 이동
    $("#goToHomeFromProfile").click(function() {
        $('#home-tab').tab('show');
    });

    // 기타 제공사항 탭에서 이전 버튼 클릭 시 스케줄 및 부가정보 탭으로 이동
    $("#goToProfileFromContact").click(function() {
        $('#profile-tab').tab('show');
    });

    // 검수 요청 및 약관 동의 탭에서 이전 버튼 클릭 시 기타 제공사항 탭으로 이동
    $("#goToContactFromExtra").click(function() {
        $('#contact-tab').tab('show');
    });

	 // 주소 선택 라디오 버튼 이벤트 핸들러 등록
	  setupAddressSelection();

	});


/* 1페이지 */
  	document.getElementById('newAddress').addEventListener('change', function() {
	      if(this.checked) {
	          document.getElementById('additionalAddress').style.display = 'block';
	      }
	  });
	
	  document.getElementById('existingAddress').addEventListener('change', function() {
	      if(this.checked) {
	          document.getElementById('additionalAddress').style.display = 'none';
	      }
	  });
	  
		// =====================================================================
		// 주소 검색 API 활용 기능 추가
		// "t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" 스크립트 파일 로딩 필수!
		// 주소 검색 API 활용 기능 추가
		document.querySelector("#btnSearchAddress").onclick = function() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            // 우편번호(zonecode) 가져와서 우편번호 항목(postCode)에 출력
		            document.getElementById('newPostCode').value = data.zonecode; 
		            
		            // 기본주소(address) 가져와서 기본주소 항목(address1)에 출력
		            let address = data.address;
		            if(data.buildingName != "") {
		                address += " (" + data.buildingName + ")";
		            }
		            document.getElementById('newAddress1').value = address;
		
		            // 상세주소 항목(address2)에 포커스 요청
		            document.getElementById('newAddress2').focus();
		        }
		    }).open();
		};

	// ---------------------------------------------------------------------------------

$(document).ready(function() {
    // 숨겨진 input 태그에서 값을 읽어옴
    var selectedMainCategory = $('#hiddenMainCategory').val();
    var selectedSubCategory = $('#hiddenSubCategory').val();
     
    // 요일 체크박스의 초기 상태를 저장합니다.
    var initialDays = '${classDetail.class_day}';

    // 값 확인을 위한 로그 출력
    console.log("Selected Main Category:", selectedMainCategory);
    console.log("Selected Sub Category:", selectedSubCategory);
	    // 대분류 선택 시 해당하는 소분류 옵션을 동적으로 업데이트하는 함수
	    function updateSubCategories(mainCategory, callback) {
	        var subCategorySelect = $('#sub_interior_type');
	        subCategorySelect.empty(); // 기존 옵션 초기화

	        var subCategories = {
	            '1': [
	                {value: '1', text: '바닥재 시공'},
	                {value: '2', text: '장판 시공'},
	                {value: '3', text: '타일 시공'},
	                {value: '4', text: '마루 시공'},
	                {value: '5', text: '카페트 시공'}
	            ],

	            '2': [
	                {value: '1', text: '도배 시공'},
	                {value: '2', text: '칸막이 시공'},
	                {value: '3', text: '페인트 시공'},
	                {value: '4', text: '방음 시공'},
	                {value: '5', text: '단열 필름 시공'}
	            ],

	            '3': [
	                {value: '1', text: '샷시 설치 및 수리'},
	                {value: '2', text: '화장실 리모델링'},
	                {value: '3', text: '주방 리모델링'},
	                {value: '4', text: '가구 리폼'},
	                {value: '5', text: '붙박이장 시공'}
	            ],

	            '4': [
	                {value: '1', text: '조경 공사'},
	                {value: '2', text: '옥상 공사'},
	                {value: '3', text: '지붕 공사'},
	                {value: '4', text: '태양광 발전'},
	                {value: '5', text: '외벽 리모델링'}
	            ],

	            '5': [
	                {value: '1', text: '집 인테리어'},
	                {value: '2', text: '상업공간 인테리어'},
	                {value: '3', text: '주택 리모델링'},
	                {value: '4', text: '집 수리'},
	                {value: '5', text: '인테리어 소품'}
	            ],

	            '6': [
	                {value: '1', text: '줄눈 시공'},
	                {value: '2', text: '단열 시공'},
	                {value: '3', text: '미장 시공'}
	            ],

	        };
	
	        if (subCategories[mainCategory]) {
	            subCategories[mainCategory].forEach(function(subCategory) {
	                subCategorySelect.append($('<option></option>').attr('value', subCategory.value).text(subCategory.text));
	            });
	        } else {
	            subCategorySelect.append($('<option></option>').attr('value', '').text('소분류를 선택하세요'));
	        }
	
	        if (callback) callback();
	    }
	
    // 기타 스크립트 로직...
    updateSubCategories(selectedMainCategory, function() {
        $('#sub_interior_type').val(selectedSubCategory); // 이 부분에서 소분류를 선택
    });
    
    // 대분류 변경 시 이벤트 핸들러
    $('#interior_type').change(function() {
        updateSubCategories(this.value);
    });
	
	
	   // '기존 공방 주소 출력하기' 선택 시
    document.getElementById('existingAddress').addEventListener('change', function() {
        if (this.checked) {
            // '기존 공방 주소' 필드의 required 속성 제거
            document.getElementById('postCode').required = true;
            document.getElementById('address1').required = true;
            document.getElementById('address2').required = true;
            
            // 추가 주소 필드 숨기기
            document.getElementById('additionalAddress').style.display = 'none';
        }
    });

    // '다른 주소 사용하기' 선택 시
    document.getElementById('newAddress').addEventListener('change', function() {
        if (this.checked) {
            // '새 주소' 필드에 required 속성 추가
            document.getElementById('newPostCode').required = true;
            document.getElementById('newAddress1').required = true;
            document.getElementById('newAddress2').required = true;

            // 추가 주소 필드 표시
            document.getElementById('additionalAddress').style.display = 'block';
        }
  	  });
  
	});




	// 주소 선택 처리 함수
	function setupAddressSelection() {
	    $('#existingAddress').change(function() {
	        if(this.checked) {
	            $('#additionalAddress').hide();
	            // 새 주소 입력 필드의 name 속성 제거
	            $('#newPostCode, #newAddress1, #newAddress2').removeAttr('name');
	            // 기존 주소 입력 필드의 name 속성 추가
	            $('#postCode').attr('name', 'class_post_code');
	            $('#address1').attr('name', 'class_address1');
	            $('#address2').attr('name', 'class_address2');
	        }
	    });

    $('#newAddress').change(function() {
        if(this.checked) {
            $('#additionalAddress').show();
            // 새 주소 입력 필드의 name 속성 추가
            $('#newPostCode').attr('name', 'class_post_code');
            $('#newAddress1').attr('name', 'class_address1');
            $('#newAddress2').attr('name', 'class_address2');
            // 기존 주소 입력 필드의 name 속성 제거
            $('#postCode, #address1, #address2').removeAttr('name');
        }
    });
}

  // ---------------------------------------------------------------------------------
  //<!-- 이미지 추가버튼 스크립트 -->--------------------
	var preview_array  = [false, false, false];
	
//	<!-- 이미지 등록시 미리보기 추가 작업 -->
	function img_preview() {

		for(var i=0; i<preview_array.length; i++){
			
			/* i가 0일때 */
			if(i==0){
				/* 0번사진 비어있으면 */
				if(preview_array[0]==false){
					/* 섬네일사진 */
					/* 0번사진 인풋태그 호출 */
					send_0();
					return;
				}
			}
			
			/* i가1일때 */
			if(i==1){
				/* 1번사진이 비어있으면 */
				if(preview_array[1]==false){
					/* 1번사진 인풋태그 호출 */
					send_1();
					return;
				}
			}
			
			/* i가 2일때 */
			if(i==2){
				/* 2번사진 비어있으면 */
				if(preview_array[2]==false){
					/* 2번사진 인풋태그 호출 */
					send_2();
					return;
				}
			}
			

		}/*  for end */
		
		alert("더이상 등록할 수 없습니다.");
		return;
		
	}/* 프리뷰 end */

//-----------------------------------------------------

//<!-- 이미지 장수 표현 함수 -->-----------------------
	function img_num() {
		var img_number = 0;
		
		for(var i=0; i<preview_array.length; i++ ){
			if(preview_array[i]==true){
				img_number++;
			}	
		}
		/* 이미지 장수 표시 */
		$("#img_number").html('('+ img_number + '/3)');
	}
	
	//-----------------------------------------------------------

	
	
	function send_0() {
		$("#sumimage").click();
	}
	
	$(function(){
		$("#sumimage").on('change',function(){
			if( $("#sumimage")[0].files[0]==undefined) {
				return;
			}
			
			imgcheck0(this);
			
		})
		
	});



	//<!-- 이미지 미리보기 -->-----------------------------------
	function imgcheck0(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            // 기존 프리뷰 이미지가 있다면 제거
	            $("#img_preview0 img").remove();
	
	            // 새로운 프리뷰 이미지 생성
	            var newImg = $('<img>', {
	                src: e.target.result,
	                width: "150px",
	                height: "150px"
	            });
	
	            // 삭제 버튼 추가 (기존에 있던 삭제 버튼이 있다면 재사용)
	            var delBtn = $("#del_sum").length ? $("#del_sum") : $('<span>', {
	                id: "del_sum",
	                class: "chk_style",
	                onclick: "del_sum();",
	                text: "x"
	            });
	
	            // 프리뷰 영역에 새 이미지와 삭제 버튼 추가
	            $("#img_preview0").append(newImg).append(delBtn).css("display", "inline-block");
	
	            // 이미지 업로드 상태 업데이트
	            preview_array[0] = true;
	
	            // 이미지 카운트 업데이트
	            img_num();
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	
	/* 1번사진 */
	
	function send_1() {
		$("#imageFile1").click();
	}
	
	$(function(){
		$("#imageFile1").on('change',function(){
			/* 파일선택 취소했을때 */
			if( $("#imageFile1")[0].files[0]==undefined) {
				return;
			}
			imgcheck1(this);
		})
		
	});
	
		function imgcheck1(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            // 기존 프리뷰 이미지가 있다면 제거
	            $("#img_preview1 img").remove();
	
	            // 새로운 프리뷰 이미지 생성
	            var newImg = $('<img>', {
	                src: e.target.result,
	                width: "150px",
	                height: "150px"
	            });
	
	            // 삭제 버튼 추가 (기존에 있던 삭제 버튼이 있다면 재사용)
	            var delBtn = $("#del_img1").length ? $("#del_img1") : $('<span>', {
	                id: "del_img1",
	                class: "chk_style",
	                onclick: "del_img1();",
	                text: "x"
	            });
	
	            // 프리뷰 영역에 새 이미지와 삭제 버튼 추가
	            $("#img_preview1").append(newImg).append(delBtn).css("display", "inline-block");
	
	            // 이미지 업로드 상태 업데이트
	            preview_array[1] = true;
	
	            // 이미지 카운트 업데이트
	            img_num();
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	/* 2번사진 */

	function send_2() {
		$("#imageFile2").click();
	}
	
	$(function(){
		$("#imageFile2").on('change',function(){
			/* 파일선택 취소했을때 */
			if( $("#imageFile2")[0].files[0]==undefined) {
				return;
			}
			imgcheck2(this);
		})
		
	});
	
	
		
	function imgcheck2(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            // 기존 프리뷰 이미지가 있다면 제거
	            $("#img_preview2 img").remove();
	
	            // 새로운 프리뷰 이미지 생성
	            var newImg = $('<img>', {
	                src: e.target.result,
	                width: "150px",
	                height: "150px"
	            });
	
	            // 삭제 버튼 추가 (기존에 있던 삭제 버튼이 있다면 재사용)
	            var delBtn = $("#del_img2").length ? $("#del_img2") : $('<span>', {
	                id: "del_img2",
	                class: "chk_style",
	                onclick: "del_img2();",
	                text: "x"
	            });
	
	            // 프리뷰 영역에 새 이미지와 삭제 버튼 추가
	            $("#img_preview2").append(newImg).append(delBtn).css("display", "inline-block");
	
	            // 이미지 업로드 상태 업데이트
	            preview_array[2] = true;
	
	            // 이미지 카운트 업데이트
	            img_num();
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	//<!-- 이미지미리보기삭제 -->--------------------------------

		// 대표 이미지 삭제 기능
		function del_sum() {
		    $('#sumimage').val(''); // input 파일 선택을 초기화
		    $('#img_preview0').hide(); // 프리뷰 영역 숨김
		    preview_array[0] = false; // 프리뷰 상태 업데이트
		    img_num(); // 이미지 수 업데이트 함수 호출
		}
		
		// 1번 이미지 삭제 기능
		function del_img1() {
		    $('#imageFile1').val(''); // input 파일 선택을 초기화
		    $('#img_preview1').hide(); // 프리뷰 영역 숨김
		    preview_array[1] = false; // 프리뷰 상태 업데이트
		    img_num(); // 이미지 수 업데이트 함수 호출
		}
		
		// 2번 이미지 삭제 기능
		function del_img2() {
		    $('#imageFile2').val(''); // input 파일 선택을 초기화
		    $('#img_preview2').hide(); // 프리뷰 영역 숨김
		    preview_array[2] = false; // 프리뷰 상태 업데이트
		    img_num(); // 이미지 수 업데이트 함수 호출
		}

	
// -----------------------------------------------2페이지 올라감
//$(document).ready(function() {
    // 페이지 로딩 시 초기화 작업
    $('input[type="checkbox"]').each(function() {
        updateCheckboxValue(this);
    });

    // '일정 등록' 버튼 클릭 이벤트 핸들러
    $('.btn-secondary').click(function() {
        // 모달창 표시 전에 실행할 코드
        resetModalContent(); // 모달 내용 초기화 함수 호출
        // 모달창 표시
        $('#scheduleModal').modal('show');
    });

    // '저장' 버튼 클릭 이벤트 핸들러
//    $('#saveButton').click(function(event) {
//        event.preventDefault();
//        // 일정 데이터 처리 로직
//        processScheduleData();
//        // 모달 닫기
//        $('#scheduleModal').modal('hide');
//    });

// '저장' 버튼 클릭 이벤트 핸들러
$('#saveButton').click(function(event) {
    event.preventDefault(); // 폼 제출 방지

    // 선택된 요일 정보를 저장할 변수 초기화
    var selectedDays = '';

    // 각 체크박스를 순회하면서 선택된 요일 정보 수집
    $('input[type="checkbox"][name="class_day"]').each(function() {
        if ($(this).is(':checked')) {
            // 체크박스가 선택되었다면, 해당 요일의 value 값을 selectedDays 문자열에 추가
            selectedDays += $(this).val();
        }
    });

    // 선택된 요일 정보를 hidden input 필드에 설정
    $('#selectedDays').val(selectedDays);

    // 일정 데이터 처리 로직 호출
    processScheduleData();

    // 모달 닫기
    $('#scheduleModal').modal('hide');
    // 모달 및 배경 제거를 위한 추가 코드 (필요한 경우)
    $('.modal-backdrop').remove();
    $('body').removeClass('modal-open');
});



    
 	    // 모달이 닫힐 때의 이벤트 핸들러
    $('#scheduleModal').on('hidden.bs.modal', function () {
        $('.modal-backdrop').remove(); // 배경 제거
        $('body').removeClass('modal-open'); // 클래스 제거
    });   
    
    
	function getDatesBetweenDates(startDate, endDate, dayIndex) {
	    var dates = [];
	    var currentDate = new Date(startDate);
	    currentDate.setHours(0, 0, 0, 0);
	    endDate = new Date(endDate);
	    endDate.setHours(0, 0, 0, 0);
	
	    while (currentDate <= endDate) {
	        if (currentDate.getDay() === dayIndex) {
	            dates.push(new Date(currentDate));
	        }
	        currentDate.setDate(currentDate.getDate() + 1);
	    }
	    return dates;
	}

	function dayStringToIndex(dayString) {
	    var daysMapping = {'월': 1, '화': 2, '수': 3, '목': 4, '금': 5, '토': 6, '일': 0};
	    return daysMapping[dayString];
	}
	
	function resetModalContent() {
	    // 모달 내용 초기화 로직
	    // 입력 필드, 체크박스, 테이블 내용 등을 초기화합니다.
	    $('#startDate, #endDate, #startTime, #endTime').val('');
	    $('input[type="checkbox"]').prop('checked', false).each(function() {
	        updateCheckboxValue(this);
	    });
	    $('#scheduleTable tbody').empty();
	}

	function processScheduleData() {
	    // 선택된 요일 추출 및 기타 입력값 처리 로직
	    var selectedDays = [];
	    var startDate = $('#startDate').val();
	    var endDate = $('#endDate').val();
	    var startTime = $('#startTime').val();
	    var endTime = $('#endTime').val();
	    var maxParticipants = $('.modal_select select').val();
	
	    // 체크박스에서 선택된 요일 처리
	    $('input[type="checkbox"]:checked').each(function() {
	        var day = dayStringToIndex($(this).next('label').text().trim());
	        selectedDays.push(day);
	    });
	
	    // 날짜 데이터 생성 및 테이블에 행 추가 로직
	    selectedDays.forEach(function(dayIndex) {
	        var dates = getDatesBetweenDates(startDate, endDate, dayIndex);
	        dates.forEach(function(date) {
	            addScheduleRow(date, dayIndex, startTime, endTime, maxParticipants);
	        });
	    });
	
	    console.log("일정이 처리되었습니다.");
	}

	function addScheduleRow(date, dayIndex, startTime, endTime, maxParticipants) {
	    // 테이블에 새로운 일정 행을 추가하는 로직
	    var dayMapping = ['일', '월', '화', '수', '목', '금', '토'];
	    var formattedDate = date.toISOString().split('T')[0];
	    var dayName = dayMapping[dayIndex];
		var newRow = `<tr data-date="${formattedDate}">
	                    <td>${dayName}</td>
	                    <td>${formattedDate}</td>
	                    <td>${startTime} ~ ${endTime}</td>
	                    <td>${maxParticipants}명</td>
	                  </tr>`;
	    $('#scheduleTable tbody').append(newRow);
		    sortTableRowsByDate();
	}

	 // 일정등록 - 일자별 정렬
	function sortTableRowsByDate() {
	    var rows = $('#scheduleTable tbody tr').get();
	
	    rows.sort(function(a, b) {
	        var keyA = $(a).data('date');
	        var keyB = $(b).data('date');
	        if (keyA < keyB) return -1;
	        if (keyA > keyB) return 1;
	        return 0;
	    });
	
	    $.each(rows, function(index, row) {
	        $('#scheduleTable tbody').append(row);
	    });
	}
	
	// '일정 등록' 버튼 클릭 이벤트 핸들러
	$('#openScheduleModal').click(function() {
	    resetModalContent(); // 모달 내용 초기화 함수 호출
	    $('#scheduleModal').modal('show');
	});
	
	function formatPrice(input) {
	    // 숫자를 제외한 모든 문자를 제거합니다.
	    var num = input.value.replace(/\D/g, '');
	    // 숫자를 3자리마다 쉼표로 구분하여 포맷팅합니다.
	    var formatted = num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	    // 포맷된 문자열을 입력 필드에 다시 설정합니다.
	    input.value = formatted;
	}
// ========================================================================================
  /* 3페이지 */

		$('#keyword').on('input', function(e) {
		    var lines = $(this).val().split('\n');
		    for (var i = 0; i < lines.length; i++) {
		        if (lines[i].length > 0 && lines[i][0] != '#') {
		            lines[i] = '#' + lines[i];
		        }
		    }
		    $(this).val(lines.join('\n'));
		    
		});
		
		$('#keyword').on('keydown', function(e) {
	    if (e.which == 32) {
	        e.preventDefault();
	        $(this).val($(this).val() + '#'); 
	    }
	});
	
	
	
	
	/* 4페이지 */

//	$("#goToContactTab").click(function() {
//        // '기타 제공사항' 탭으로 이동
//      	$('#contact-tab').tab('show');
//    });

//	$("#goTo1Tab").click(function() {
//      	$('#home-tab').tab('show');
//    });
//
//	$("#goTo2Tab").click(function() {
//      	$('#profile-tab').tab('show');
//    });
//    
//	$("#goTo3Tab").click(function() {
//      	$('#contact-tab').tab('show');
//    });
//
//	$("#goTo4Tab").click(function() {
//      	$('#extra-tab').tab('show');
//    });


		function submitReview() {
	    // 각 체크박스의 상태 확인
	    var isTermsAgreed = document.getElementById('termsAgreement').checked;
	    var isPrivacyPolicyAgreed = document.getElementById('privacyPolicyAgreement').checked;
	    var isRefundPolicyAgreed = document.getElementById('refundPolicyAgreement').checked;

	    // 모든 체크박스가 선택되었는지 확인
	    if (isTermsAgreed && isPrivacyPolicyAgreed && isRefundPolicyAgreed) {
	        // 모든 조건이 충족 -> 실제 검수 신청 로직 처리
	        alert('검수 신청이 완료되었습니다.');
	        // 검수 신청 관련 로직 추가
	    } else {
	        alert('모든 약관에 동의해야 검수 신청이 가능합니다.');
	    }
	} 