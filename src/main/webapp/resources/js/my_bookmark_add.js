$(document).ready(function() {
	$(".bookmarkBtn").click(function() {
		let parent = $(".bookmarkBtn").parent();
		let class_idx = parent.find($(".class_idx")).val();
		if(confirm("북마크를 추가하시겠습니까?")){
			$.ajax({
				url: "addBookmark",
				data: {
					class_idx: class_idx,
				},
				dataType: "json",
				success: function(result) {
					if (result == true) {
						alert("북마크 되었습니다.")
						location.reload();
					}else if(result == false) {
						alert("이미 북마크 되어있습니다.")
					}else{
						alert("북마크 추가에 실패했습니다. 다시 시도해주세요");
					}
				}
			});
		};
	});
});
