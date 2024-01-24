$(document).ready(function() {
    $("#checkAll").click(function() {
        var isChecked = $(this).prop("checked");
        $("#checkbox_agree1, #checkbox_agree2, #checkbox_agree3").prop('checked', isChecked);
    });
});

//필수항목 체크 안하면 포커스 이동
function next() {

	var checkbox1 = document.getElementById("checkbox_agree1");
	var checkbox2 = document.getElementById("checkbox_agree2");


	if (!checkbox1.checked) {
		alert("이용 약관에 동의해주세요.");
		checkbox1.focus();
		return false;
	}

	if (!checkbox2.checked) {
		alert("개인정보 수집 및 이용에 동의해주세요.");
		checkbox2.focus();
		return false;
	}

	//필수항목 다 체크시 페이지 이동
	location.href = "join";

} //필수항목체크후 이동
