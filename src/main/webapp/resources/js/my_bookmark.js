$(document).ready(function() {
	$(".bookmarkBtn").click(function() {
		console.log("ddd");
		let parent = $(".bookmarkBtn").parent();
		let bookmark_idx = parent.find($(".bookmark_idx")).val();
		if(confirm("북마크를 제거하시겠습니까?")){
			$.ajax({
				url: "deleteBookmark",
				data: {
					bookmark_idx: bookmark_idx,
				},
				dataType: "json",
				success: function(result) {
					if (result == true) {
						location.reload();
					} else {
						alert("북마크 제거에 실패했습니다. 다시 시도해주세요");
					}
				}
			});
		};
	});
});
