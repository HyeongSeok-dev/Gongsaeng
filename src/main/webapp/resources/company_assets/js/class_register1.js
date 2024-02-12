// 전역 변수로 일정 데이터를 저장할 배열 선언
var schedules = [];

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

    // 셀렉트 박스
    document.addEventListener("DOMContentLoaded", function() {
      document.getElementById('interior_type').addEventListener('change', function() {
        var selectedType = this.value;
        var subInteriorSelect = document.getElementById('sub_interior_type');
        subInteriorSelect.innerHTML = ''; // 기존 옵션 초기화
        
        
    switch(selectedType) {
      case '1':
        subInteriorSelect.innerHTML = 
          `<option value="1">바닥재 시공</option>
           <option value="2">장판 시공</option>
           <option value="3">타일 시공</option>
           <option value="4">마루 시공</option>
           <option value="5">카페트 시공</option>`;
        break;
      case '2': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">도배 시공</option>
        	 <option value="2">칸막이 시공</option>
        	 <option value="3">페인트 시공</option>
        	 <option value="4">방음 시공</option>
        	 <option value="5">단열 필름 시공</option>`;
        break;
      case '3': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">샷시 설치 및 수리</option>
        	 <option value="2">화장실 리모델링</option>
        	 <option value="3">주방 리모델링</option>
        	 <option value="4">가구 리폼</option>
        	 <option value="5">붙박이장 시공</option>`;
        break;
      case '4': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">조경 공사</option>
        	 <option value="2">옥상 공사</option>
        	 <option value="3">지붕 공사</option>
        	 <option value="4">태양광 발전</option>
        	 <option value="5">외벽 리모델링</option>`;
        break;
      case '5': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">집 인테리어</option>
        	 <option value="2">상업공간 인테리어</option>
        	 <option value="3">주택 리모델링</option>
        	 <option value="4">집 수리</option>
        	 <option value="5">인테리어 소품</option>`;
        break;
      case '6': 
        subInteriorSelect.innerHTML = 
        	`<option value="1">줄눈 시공</option>
        	 <option value="2">단열 시공</option>
        	 <option value="3">미장 시공</option>`;
        break;

      default:
        subInteriorSelect.innerHTML = '<option value="">소분류를 선택하세요</option>';
    }
  });
  
//   // '기존 공방 주소 출력하기' 선택 시
//    document.getElementById('existingAddress').addEventListener('change', function() {
//        if (this.checked) {
//            // '기존 공방 주소' 필드의 required 속성 제거
//            document.getElementById('postCode').required = true;
//            document.getElementById('address1').required = true;
//            document.getElementById('address2').required = true;
//            
//            // 추가 주소 필드 숨기기
//            document.getElementById('additionalAddress').style.display = 'none';
//        }
//    });
//
//    // '다른 주소 사용하기' 선택 시
//    document.getElementById('newAddress').addEventListener('change', function() {
//        if (this.checked) {
//            // '새 주소' 필드에 required 속성 추가
//            document.getElementById('newPostCode').required = true;
//            document.getElementById('newAddress1').required = true;
//            document.getElementById('newAddress2').required = true;
//
//            // 추가 주소 필드 표시
//            document.getElementById('additionalAddress').style.display = 'block';
//        }
//    });
  
  
});
  //<!-- 이미지 추가버튼 스크립트 -->--------------------
	var preview_array  = [false, false, false];
	
//	<!-- 이미지 등록시 미리보기 추가 작업 -->
	function img_preview() {

		for(var i=0; i<preview_array.length; i++){

// 			for(var i=0; i<preview_array.length; i++){
// 				if(i=[i]){
// 					if(preview_array[i]==false){
// 						send_[i]();
// 						return;
// 					}
// 				}
// 			}
			
			
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
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );

		$('#sumimage').val();
		
		if(check_array.indexOf(file_type)==-1){
			
			/* 사용자에게 알려주고 */
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#sumimage').val('');
			
			return;
		
		} 

		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function ㄹ(e) {
		        $('#imgup_sum').attr('src', e.target.result);
		        
		        $("#img_preview0").css("display","inline-block");
				$("#imgup_sum").show();
		        $("#del_sum").show();
		       
				preview_array[0] = true;
				
				/* 이미지넘버 변경 */
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
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );

		
		if(check_array.indexOf(file_type)==-1){
			
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#imageFile1').val('');
			
			return;
		
		} 
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	        
	        	$('#imgup_1').attr('src', e.target.result);
	        	//배열에 트루값주기, 트루면 업로드 못함
	        
	        	$("#img_preview1").css("display","inline-block");
	        	$("#imgup_1").show();
	        	$("#del_img1").show();
	        	
	        	preview_array[1] = true;
				
	        	/* 이미지넘버 변경 */
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
		
		/* 이미지 확장자 파일체크 */
		var file_kind = input.value.lastIndexOf('.');
		var file_name = input.value.substring(file_kind+1,input.length);
		var file_type = file_name.toLowerCase();

		var check_array = new Array( 'jpg','png','jpeg' );
		
		if(check_array.indexOf(file_type)==-1){
			alert('이미지 파일만 선택할 수 있습니다.');
			/* 실제 업로드 되는 input태그 vlaue값 지우기 */
			$('#imageFile2').val('');
			
			return;
		
		} 
		
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
				$('#imgup_2').attr('src', e.target.result);
				
				 $("#img_preview2").css("display","inline-block");
				$("#imgup_2").show();
				$("#del_img2").show();
				
				preview_array[2] = true;
	        	/* 이미지넘버 변경 */
				img_num();
	       
	        }
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	//<!-- 이미지미리보기삭제 -->--------------------------------

	function del_sum() {
		/* alert('썸네일이미지 지움'); */
		/* 실제 DB에 들어가는 input value 지움 */
		$('#sumimage').val('');
		
      $("#img_preview0").css("display","none");
		$('#imgup_sum').hide();
		$("#del_sum").hide(); 
		
		/* 썸네일 비움 */
		preview_array[0] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}


	function del_img1() {
		/* alert('1번이미지 지움'); */
		
		$('#imageFile1').val('');
		
		$("#img_preview1").css("display","none");
		$('#imgup_1').hide();
		$("#del_img1").hide();
		
		/* 1번사진 비움 */
		preview_array[1] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
	}
	
	function del_img2() {
		/* alert('2번이미지 지움'); */
		
		$('#imageFile2').val('');
		
		$("#img_preview2").css("display","none");
		$('#imgup_2').hide();
		$("#del_img2").hide();
		
		/* 2번사진 비움 */
		preview_array[2] = false;
		
		/* 이미지 넘버변경 */
		img_num();
		
		return;
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
    $('#saveButton').click(function(event) {
        event.preventDefault();
        // 일정 데이터 처리 로직
        processScheduleData();
        // 모달 닫기
//        $('#scheduleModal').modal('hide');
        $('#scheduleModal').modal('remove');
//   		 $('.modal-backdrop').remove();

    });
    
    
    
//});

function updateCheckboxValue(checkbox) {
    var label = document.querySelector('label[for="' + checkbox.id + '"]');
    // 요소가 존재하는지 확인
    if (label) {
        if (checkbox.checked) {
            label.classList.add('checked');
        } else {
            label.classList.remove('checked');
        }
    }
}

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
    var newRow = `<tr>
                    <td>${dayName}</td>
                    <td>${formattedDate}</td>
                    <td>${startTime} ~ ${endTime}</td>
                    <td>${maxParticipants}명</td>
                  </tr>`;
    $('#scheduleTable tbody').append(newRow);
//    $('#scheduleTable').append(newRow);
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
	        alert('클래스 등록이 완료되었습니다.');
	        // 검수 신청 관련 로직 추가
	    } else {
	        alert('모든 약관에 동의해야 클래스 등록이 가능합니다.');
	    }
	} 