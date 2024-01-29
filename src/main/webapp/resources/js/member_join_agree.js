$(document).ready(function() {
    $("#checkAll").click(function() {
        var isChecked = $(this).prop("checked");
        $("#checkbox_agree1, #checkbox_agree2, #checkbox_agree3").prop('checked', isChecked);
    });
});
