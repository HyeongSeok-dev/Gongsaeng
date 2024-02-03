// ========================================================================================
/* 2페이지 */	
// 커리큘럼
// 일정 등록 모달창 내 체크박스 상태 업데이트 함수
function updateCheckboxValue(checkbox) {
  var label = document.querySelector('label[for="' + checkbox.id + '"]');
  if (checkbox.checked) {
      label.classList.add('checked');
  } else {
      label.classList.remove('checked');
  }
}

// 특정 요일을 가진 모든 날짜를 가져오는 함수
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

// 요일 문자열을 인덱스로 변환하는 함수
function dayStringToIndex(dayString) {
  var daysMapping = {'월': 1, '화': 2, '수': 3, '목': 4, '금': 5, '토': 6, '일': 0};
  return daysMapping[dayString];
}

$(document).ready(function() {
  // 페이지 로딩 시 초기화 작업
  $('input[type="checkbox"]').each(function() {
      updateCheckboxValue(this);
  });

  // =============================

    // 현재 날짜를 YYYY-MM-DD 형식으로 가져옵니다.
    var today = new Date().toISOString().split('T')[0];

    // startDate, endDate의 min 속성 : 오늘t
    $('#startDate').attr('min', today);
    $('#endDate').attr('min', today);
	  
	  
 // =============================
  
  
  
  // '일정 등록' 버튼 클릭 이벤트 핸들러
  $('.btn-secondary').click(function() {
    // 모달창 표시 전에 실행할 코드

    // 모달창 표시
    $('#scheduleModal').modal('show');
  });

  // 모달이 열릴 때마다 내용을 초기화
  $('#scheduleModal').on('show.bs.modal', function () {
    // 입력 필드 초기화
    $('#startDate').val('');
    $('#endDate').val('');
    $('#startTime').val('');
    $('#endTime').val('');

    // 체크박스 초기화
    $('input[type="checkbox"]').each(function() {
      this.checked = false;
      updateCheckboxValue(this);
    });

    // 테이블 내용을 비우기
    $('#scheduleTable tbody').empty();
  });

  // '저장' 버튼 클릭 이벤트 핸들러
  $('#saveButton').click(function(event) {
    event.preventDefault();

    // 선택된 요일 추출
    var selectedDays = [];
    var daysMapping = {
      'mon_checkbox': '월',
      'tue_checkbox': '화',
      'wed_checkbox': '수',
      'thr_checkbox': '목',
      'fri_checkbox': '금',
      'sat_checkbox': '토',
      'sun_checkbox': '일'
    };

    $('input[type="checkbox"]:checked').each(function() {
      selectedDays.push(daysMapping[this.id]);
    });

    // 기타 입력값
    var startDate = $('#startDate').val();
    var endDate = $('#endDate').val();
    var startTime = $('#startTime').val();
    var endTime = $('#endTime').val();
    var maxParticipants = $('.modal_select select').val();

    // 입력값 검증
    if (selectedDays.length === 0 || !startDate || !endDate || !startTime || !endTime) {
      alert("모든 필드를 채워주세요.");
      return;
    }

    // 날짜 데이터 생성
    var dateData = [];
    selectedDays.forEach(function(day) {
      var dayIndex = dayStringToIndex(day);
      var dates = getDatesBetweenDates(startDate, endDate, dayIndex);
      dates.forEach(function(date) {
        dateData.push({
          day: day,
          date: date
        });
      });
    });

    // 날짜별로 정렬
    dateData.sort(function(a, b) {
      return a.date - b.date;
    });

    // 테이블에 행 추가
    dateData.forEach(function(item) {
      var formattedDate = item.date.toISOString().split('T')[0];
      var tableRow = '<tr>' +
                      '<td>' + item.day + '</td>' +
                      '<td>' + formattedDate + '</td>' +
                      '<td>' + startTime + ' ~ ' + endTime + '</td>' +
                      '<td>' + maxParticipants + '</td>' +
                      '</tr>';
      $('#scheduleTable tbody').append(tableRow);
    });

      // 모달 닫기
      $('.modal-backdrop').remove();
//       $('#scheduleModal').modal('hide');


      console.log("선택된 요일:>>>>>>>>>>>>>>>> " + selectedDays);
      console.log("시작 날짜: >>>>>>>>>>>>>>>>" + startDate);
      console.log("종료 날짜: >>>>>>>>>>>>>>>>" + endDate);
      console.log("시작 시간: >>>>>>>>>>>>>>>>" + startTime);
      console.log("종료 시간: >>>>>>>>>>>>>>>>" + endTime);
      console.log("최대 인원: >>>>>>>>>>>>>>>>" + maxParticipants);
  });
  
  
  
});

// ========================================================================================


/* 1페이지 */


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
	        reader.onload = function (e) {
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