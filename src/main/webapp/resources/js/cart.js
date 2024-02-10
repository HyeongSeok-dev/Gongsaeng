$(document).ready(function() {
//최종 결제금액
var total = 0;
	
//총결제금액 계산
function calculateTotal() {

    $(".panel-body").each(function() {
        var price = parseInt($(this).find(".text-muted").text(), 10);
        var quantity = parseInt($(this).find(".res_person").val(), 10);

        total += price * quantity;
    });

    $("#total").text(total);
}
	//결제하기버튼 누르면 결제페이지로 이동============================
	$("#payment").click(function() {
		
    	console.log(total);
		
		//결제하기 화면으로 넘길때 "cart" 도 같이 넘기기
    	 var url = "payment?type=cart&total="+total;
    	 
    	window.location.href = url;
    	
    	console.log(url);
	});
	
	//장바구니에 물건담기===============================================
	$("#onCart").click(function() {
		
//	    var class_idx = $("#class_idx").val(); //클래스 번호
//	    var memberId = $("#member_id").val(); //회원 아이디
	    var class_idx = "1"; //클래스 번호하드코딩
	    var memberId = "testUser"; //회원 아이디 하드코딩
	    var date = $("#reservation-date").val(); //예약날짜
	    var res_person = $("#res_person").var(); //예약인원수
	
	    $.ajax({
			type: "POST",
	        url: "addCart",
	        data:{
				class_idx : class_idx,
				memberId : memberId,
				date : date,
				res_person : res_person
			},
	        dataType: "json",
	        success: function(onCart){
				if(onCart){ //성공
					alert("상품을 장바구니에 담았습니다.");
				}else{ //실패
					alert("상품을 장바구니에 담는것을 실패했습니다.");
				}
			}//success
	        
	    });//ajax
	    
	});
	
	//장바구니에 물건삭제===============================================
	$(".delet").click(function() {
	console.log("삭제버튼 작동");
	
    var cart_idx = $(this).val(); // 삭제하려는 상품의 클래스 번호
	console.log("cart_idx : " + cart_idx);

	var result = confirm("상품을 장바구니에서 삭제하시겠습니까?");

			if(result) { // '확인'을 눌렀을 때
			    $.ajax({
			        type: "POST",
			        url: "deleteCart",
			        data: { cart_idx : cart_idx },
			        success: function(response) {
			            if(response) { // 성공
			                alert("상품을 장바구니에서 삭제했습니다.");
			                location.reload();
			            } else { // 실패
			                alert("상품을 장바구니에서 삭제하는데 실패했습니다.");
			            }
			        }    
			    }); //ajax
			} 
	});
	
	//장바구니에 수량변경===============================================
	$(".update").click(function() {
    console.log("수정하기버튼 작동");
		
    // 총 결제금액 계산
    calculateTotal();
    
	var cart_idx = $(this).val(); // 변경하려는 카트번호
	console.log("cart_idx : " + cart_idx);
    var res_person = $(this).closest(".panel-body").find(".res_person").val(); // 예약인원수

	    $.ajax({
	        type: "POST",
	        url: "updateCart",
	        data: { 
	            cart_idx: cart_idx, //카트번호
	            res_person: res_person //인원수(수량)
	        },
	        success: function(response) {
	            if(response) { // 성공
	                alert("상품 수량을 수정했습니다.");
	                location.reload();
	            } else { // 실패
	                alert("상품 수량을 수정하는데 실패했습니다.");
	            }
	        }
	    }); //ajax
	});

	//총결제금액 계산=====================================================
 	calculateTotal();
	 

}); //$(document).ready(function() {