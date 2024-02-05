$(document).ready(function() {
	$(".followingBtn").click(function() {
		let parent = $(".followingBtn").parent();
		let following_idx = parent.find($(".following_idx")).val();
		if(confirm("팔로우를 해제하시겠습니까?")){
			$.ajax({
				url: "deletefollowing",
				data: {
					following_idx: following_idx,
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
