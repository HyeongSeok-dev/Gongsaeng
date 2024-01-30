$(document).ready(function() {
//$(function() {	
	
	//결제하기버튼 누르면 결제페이지로 이동============================
	$("#payment").click(function() {
    	window.location.href = "payment";
	});
	
	//장바구니에 물건담기===============================================
	$("#onCart").click(function() {
		
	    var class_idx = $("#class_idx").val(); //클래스 번호
	    var memberId = $("#member_id").val(); //회원 아이디
	
	    $.ajax({
			type: "POST",
	        url: "addCart",
	        data:{
				class_idx : class_idx,
				
				memberId : memberId
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
	$("#cartX").click(function() {
    var class_idx = $("#class_idx").val(); // 삭제하려는 상품의 클래스 번호

    $.ajax({
        type: "POST",
        url: "deleteCart",
        data: { class_idx: class_idx },
        success: function(response) {
            if(response) { // 성공
                alert("상품을 장바구니에서 삭제했습니다.");
                window.reload();
            } else { // 실패
                alert("상품을 장바구니에서 삭제하는데 실패했습니다.");
              }
	        }    
	    });//ajax
	});
	
	//장바구니 목록=====================================================
//	$("#cartList").click(function(){
//		var memberId = $("#member_id").val(); //회원 아이디
//		
//		$.ajax({
//			type: "GET",
//			url: "cartList",
//			data: {
//				memberId : memberId
//			},
//			success : fuction(cartListSelect){
//			}//success
//		});//ajax
//	});


}); //$(document).ready(function() {