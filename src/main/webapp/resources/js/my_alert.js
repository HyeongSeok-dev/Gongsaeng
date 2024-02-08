$(document).ready(function() {
	$(".removeAlertButton").click(function() {
		let parent = $(".removeAlertButton").parent();
		let alert_idx = parent.find($(".alert_idx")).val();
		if(confirm("알림을 삭제하시겠습니까?")){
			$.ajax({
				url: "deleteAlert",
				data: {
					alert_idx: alert_idx,
				},
				dataType: "json",
				success: function(result) {
					if (result == true) {
						location.reload();
					} else {
						alert("팔로우 해제에 실패했습니다. 다시 시도해주세요");
					}
				}
			});
		};
	});
});
