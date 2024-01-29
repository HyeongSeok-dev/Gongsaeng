/* 글쓰기 사진 첨부 */
var fileList = [];
$(document).ready(function() {
    function readURL(input) {
        if (input.files) {
            var filesAmount = input.files.length;
            var totalFiles = fileList.length + filesAmount;

            if (totalFiles > 3) {
                alert("사진은 최대 3장만 첨부 가능합니다.");
                return;
            }

            for (i = 0; i < filesAmount; i++) {
                fileList.push(input.files[i]);
                var reader = new FileReader();

                reader.onload = function(event) {
                    var img = $('<img src="'+ event.target.result +'" alt="Image Preview" width="100">');
                    var removeBtn = $('<span class="remove-image">x</span>');
                    removeBtn.click(function() {
                        $(this).parent().remove();
                        fileList.splice(fileList.indexOf($(this).parent().find('img').attr('src')), 1);
                        $('.file-count').text("(" + fileList.length + "/3)");
                    });
                    $('.image-preview__image').append($('<div>').append(img, removeBtn));
                    $('.image-preview__default-text').hide();
                }
                reader.readAsDataURL(input.files[i]);
            }
            $('.file-count').text("(" + fileList.length + "/3)");
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

