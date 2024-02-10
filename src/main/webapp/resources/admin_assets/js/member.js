//무한 스크롤 기능에 활용될 페이지번호 변수
let pageNum = "1";
let maxPage = "";

$(function() {
	//member.js
	// 회원상태/일반회원/필터링함수
	function tableFilter(){
		//전체선택일때 페이지 리로드(아닐때 필터링 기능작동)
		if($("#statusAllCheck").prop("checked") == true && $("#categoryAllCheck").prop("checked") == true) {
			location.reload();
		} else if($('input[type="checkbox"]:checked').length == 0) {
			let table = "<table class='table table-bordered'>"
						+ "<colgroup>"
						+	"<col width='20%' />"
                		+	"<col width='10%' />"
                		+	"<col width='20%' />"
                		+	"<col width='20%' />"
                		+	"<col width='10%' />"
                		+	"<col width='10%' />"
						+ "</colgroup>"
						+ "<tr>"
						+    "<th>가입/탈퇴일자</th>"
			            +    "<th>회원분류</th>"
			            +    "<th>아이디</th>"
			            +    "<th>닉네임</th>"
			            +    "<th>회원상태</th>"
			            +    "<th>신고받은 수</th>"
						+ "</tr>"
						+ "<tr>"
						+	"<td colspan='6'> 불러올 정보가 없습니다. </td>"
						+ "</tr>"
						+ "</table>"
			
			$("table").remove();
			$("#tableDivArea").append(table);
			console.log("체크박스에 체크없음");
		} else {
			console.log("필터링 ajax 작동");
			$.ajax({
				type: "get",
				url: "memberTableFilter",
				data: $("form").serialize(),				
				success: function(data) {
					console.log("필터링 결과");
					console.log("data : " + data);
					for(let m of data.memberList) {
						var member_category = ""; 
						if(m.com_status == 2){
							member_category = "반장 승인대기";
						} else if(m.com_status == 5){
							member_category = "반장 승인거부";
						} else if(m.member_category == 2){
							member_category = "반장";
						} else if(m.member_category == 1){
							member_category = "일반";
						} else {
							member_category = "관리자";
						}
						var member_status = ""; 
						if(m.member_status == 1){
							member_status = "정상";
						} else if(m.member_status == 2){
							member_status = "휴면";
						} else {
							member_status = "탈퇴";
						}
						
						var reportCount = "";
						if(m.reportCount == null) {
							reportCount == "0";
						} else {
							reportCount = m.reportCount;
						}
												
						let table = "<table class='table table-bordered' id='tableArea'>"
									+ "<colgroup>"
									+	"<col width='20%' />"
					        		+	"<col width='10%' />"
					        		+	"<col width='20%' />"
					        		+	"<col width='20%' />"
					        		+	"<col width='10%' />"
					        		+	"<col width='10%' />"
									+ "</colgroup>"
									+ "<tr>"
									+    "<th>가입/탈퇴일자</th>"
						            +    "<th>회원분류</th>"
						            +    "<th>아이디</th>"
						            +    "<th>닉네임</th>"
						            +    "<th>회원상태</th>"
						            +    "<th>신고받은 수</th>"
									+ "</tr>"
									+ "</table>"
						
						let result = "<tr>" +
										 "<td>" + m.member_date + "</td>" +
						                 "<td>" + member.category + "</td>" +
						                 "<td>" + m.member_id + "</td>" +
						                 "<td>" + m.member_nick + "</td>" +
						                 "<td>" + member_status + "</td>" +
						                 "<td>" + reportCount + "</td>" +
				            		"</tr>";
				        $("table").remove();
						$("#tableDivArea").append(table);	
						$("#tableArea").append(result);	
					}
				},
				error: function(e) {
					console.log("파라미터 전송 실패");
				}
			});
		}
	}
	
	
	// 테이블 상단의 체크박스
	// 기본값은 전체선택
	$(".member_status").prop('checked', true);
	$("#statusAllCheck").prop('checked', true);
	$(".member_category").prop('checked', true);
	$("#categoryAllCheck").prop('checked', true);
	
	// 전체선택시 전체체크/해제
	// 회원상태
	$("#statusAllCheck").change(function(){
		$(".member_status").prop('checked', this.checked);
		tableFilter();
	});	
	// 회원카테고리
	$("#categoryAllCheck").change(function(){
		$(".member_category").prop('checked', this.checked);
		tableFilter();
	});	
	
	// 각 체크선택시
	// 회원카테고리
	$(".member_category").click(function() {
        if ($(this).prop("checked") == false) {
            $("#categoryAllCheck").prop("checked", false);
            tableFilter();
        }
        if ($(".member_category:checked").length == $(".member_category").length) {
            $("#categoryAllCheck").prop("checked", true);
            tableFilter();
        }
    });
	// 회원상태
	$(".member_status").click(function() {
        if ($(this).prop("checked") == false) {
            $("#statusAllCheck").prop("checked", false);
            tableFilter();
        }
        if ($(".member_status:checked").length == $(".member_status").length) {
            $("#statusAllCheck").prop("checked", true);
            tableFilter();
        }
    });
	
	// 검색버튼 클릭시
	$("#searchBtn").on("click", function(){
		if($("#searchText").val() == ""){
			alert("검색어를 입력해 주세요!");
			return false;
		}
		return true;
	});
	
	//========================================================================
	$(function() {
		// board_list.jsp 페이지 로딩 시 게시물 목록 조회 수행을 위해 load_list() 함수 호출
		load_list();
		
		// 무한스크롤 기능을 통해 다음 글 목록 자동으로 로딩
		$(window).scroll(function() { // 윈도우 스크롤 이벤트 핸들링
// 			console.log("window scroll");
		
			// 1. window 객체와 document 객체를 활용하여 스크롤 관련 값 가져오기
			let scrollTop = $(window).scrollTop(); // 스크롤바 현재 위치
			let windowHeight = $(window).height(); // 브라우저 창 높이
			let documentHeight = $(document).height(); // 문서 높이
// 			console.log("scrollTop : " + scrollTop + ", windowHeight : " + windowHeight + ", documentHeight : "+ documentHeight);
			// scrollTop : 0, windowHeight : 607, documentHeight : 649
			// scrollTop : 41.33333206176758, windowHeight : 607, documentHeight : 649
			
			// 2. 스크롤바 위치값 + 창 높이 + x 값이 문서 전체 높이 이상일 경우
			//    다음 페이지 게시물 목록 로딩하여 화면에 추가
			//    이 때, x 값의 역할은 스크롤바가 바닥으로부터 얼마만큼 떨어져 있을지 결정
			//    (x 값이 커질 수록 스크롤바가 더 높은 곳에 위치해도 다음 페이지 로딩 동작 수행)
			if(scrollTop + windowHeight + 1 >= documentHeight) {
				pageNum++; // 다음 목록 조회를 위해 현재 페이지번호 1 증가
				
				// 만약, 증가된 페이지번호가 끝 페이지 번호보다 작거나 같을 경우에만 다음 페이지 로딩
				// => 단, 끝 페이지 번호가 널스트링일 경우에는 로딩 수행 X
				if(maxPage != "" && pageNum <= maxPage) {
					load_list(); // 다음 페이지 로딩을 위해 load_list() 함수 호출
				}
			}
			
		});
	});
	
});