/* 글쓰기 사진 첨부 */
var fileCount = 0;
var fileList = [];
$(document).ready(function() {
    function readURL(input) {
        if (input.files && input.files[0]) {
            fileList.push(input.files[0]);
            if (fileList.length > 3) {
                alert("사진은 최대 3장만 첨부 가능합니다.");
                fileList.pop();
                return;
            }
            $('.file-count').text("(" + fileList.length + "/3)");
            var reader = new FileReader();
            reader.onload = function(e) {
                $('.image-preview__image').append('<img src="'+ e.target.result +'" alt="Image Preview" width="100">');
                $('.image-preview__default-text').hide();
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#file-input").change(function() {
        readURL(this);
        this.value = null;
    });
});


$(function(){
    $('.tip').tooltip();
});

document.getElementById('likeButton').addEventListener('click', function(event) {
    event.preventDefault();
    var likeCountElement = document.getElementById('likeCount');
    var likeCount = parseInt(likeCountElement.textContent, 10);
    likeCountElement.textContent = likeCount + 1;
});

