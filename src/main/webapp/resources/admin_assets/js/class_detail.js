$(function() {
	//class _detail.js
	// 천단위 쉼표
	var price = parseInt($("#price").text().trim()).toLocaleString();
	$("#price").text(price);
	
	
	var pic1 = $("#pic1").text();
	var pic2 = $("#pic2").text();
	var pic3 = $("#pic3").text();
	var curriculum1 = $("#curriculum1").text();
	var curriculum2 = $("#curriculum2").text();
	var curriculum3 = $("#curriculum3").text();
		
	// 파일선택버튼

	$("#uploadPicBtn1").click(function() {
		console.log("파일선택");
        $("#file4").click();
    });
	$("#uploadPicBtn2").click(function() {
		console.log("파일선택");
        $("#file5").click();
    });
	$("#uploadPicBtn3").click(function() {
		console.log("파일선택");
        $("#file6").click();
    });

	$("#uploadCurriculumBtn1").click(function() {
		console.log("파일선택");
        $("#file1").click();
    });
	$("#uploadCurriculumBtn2").click(function() {
		console.log("파일선택");
        $("#file2").click();
    });
	$("#uploadCurriculumBtn3").click(function() {
		console.log("파일선택");
        $("#file3").click();
    });

	// 파일이 변경되었을때
    $("#file4").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#pic1").text(fileName ? fileName : pic1);
    });
    $("#file5").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#pic2").text(fileName ? fileName : pic2);
    });
    $("#file6").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#pic3").text(fileName ? fileName : pic4);
    });
	
    $("#file1").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#curriculum1").text(fileName ? fileName : curriculum1);
    });
    $("#file2").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#curriculum2").text(fileName ? fileName : curriculum2);
    });
    $("#file3").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $("#curriculum3").text(fileName ? fileName : curriculum3);
    });
	//사진 미리보기
    $("#file4").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("reg_img");
            $("#img4").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });
    $("#file5").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("reg_img");
            $("#img5").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });
    $("#file6").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("reg_img");
            $("#img6").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });

    $("#file1").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("reg_img");
            $("#img1").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });
    $("#file2").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("reg_img");
            $("#img2").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });
    $("#file3").change(function() {
        var reader = new FileReader();
        reader.onload = function(e) {
           var img = $("<img>").attr("src", e.target.result).addClass("reg_img");
            $("#img3").empty().append(img);
        }
        reader.readAsDataURL(this.files[0]);
    });
    
	// 변경저장버튼을 눌렀을 때
	$("#modifyClass").on("click", function(){
		
		if($("#pic1").text() != "파일명" || $("#uploadPicBtn1").text() != fileLabel) {
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else if($("#pic2").text() != "파일명" || $("#uploadPicBtn2").text() != fileLabel){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else if($("#pic3").text() != "파일명" || $("#uploadPicBtn3").text() != fileLabel){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else if($("#img1").text() != "파일명" || $("#uploadCurriculumBtn1").text() != fileLabel){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else if($("#img2").text() != "파일명" || $("#uploadCurriculumBtn2").text() != fileLabel){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else if($("#img3").text() != "파일명" || $("#uploadCurriculumBtn3").text() != fileLabel){
			if(confirm("회원의 정보를 수정하시겠습니까?")){
				return true;
			} else {
				return false;
			}
		} else {
			alert("수정할 내용이 없습니다");
			return false;
		}
		
	});
	
});

