$(function(){
    $('.tip').tooltip();
});

document.getElementById('likeButton').addEventListener('click', function(event) {
    event.preventDefault();
    var likeCountElement = document.getElementById('likeCount');
    var likeCount = parseInt(likeCountElement.textContent, 10);
    likeCountElement.textContent = likeCount + 1;
});