

window.onload = function() {

/* 1:1 문의 사진 첨부 */
    var fileInput = document.querySelector('.file-upload input[type=file]');
    var cameraIcon = document.querySelector('.file-upload i');

    cameraIcon.addEventListener('click', function() {
        fileInput.click();
    });

    fileInput.addEventListener('change', function() {
        var fileName = fileInput.value.split('\\').pop();
        cameraIcon.title = fileName ? fileName : '';
    });
    
//    let date = new Date();
//let hours = date.getHours();
//let minutes = date.getMinutes();
//let ampm = hours >= 12 ? '오후' : '오전';
//hours = hours % 12;
//hours = hours ? hours : 12; 
//minutes = minutes < 10 ? '0' + minutes : minutes;
//let strTime = ampm + ' ' + hours + ':' + minutes;
//    
    
}


$(".messages").animate({ scrollTop: $(document).height() }, "fast");

$("#profile-img").click(function() {
	$("#status-options").toggleClass("active");
});

$(".expand-button").click(function() {
  $("#profile").toggleClass("expanded");
	$("#contacts").toggleClass("expanded");
});

$("#status-options ul li").click(function() {
	$("#profile-img").removeClass();
	$("#status-online").removeClass("active");
	$("#status-away").removeClass("active");
	$("#status-busy").removeClass("active");
	$("#status-offline").removeClass("active");
	$(this).addClass("active");
	
	if($("#status-online").hasClass("active")) {
		$("#profile-img").addClass("online");
	} else if ($("#status-away").hasClass("active")) {
		$("#profile-img").addClass("away");
	} else if ($("#status-busy").hasClass("active")) {
		$("#profile-img").addClass("busy");
	} else if ($("#status-offline").hasClass("active")) {
		$("#profile-img").addClass("offline");
	} else {
		$("#profile-img").removeClass();
	};
	
	$("#status-options").removeClass("active");
});

function newMessage() {
	message = $(".message-input input").val();
	if($.trim(message) == '') {
		return false;
	}
	$('<li class="sent"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>' + message + '</p></li>').appendTo($('.messages ul'));
	$('.message-input input').val(null);
	$('.contact.active .preview').html('<span>You: </span>' + message);
	$(".messages").animate({ scrollTop: $(document).height() }, "fast");
};

$('.submit').click(function() {
  newMessage();
});

$(window).on('keydown', function(e) {
  if (e.which == 13) {
    newMessage();
    return false;
  }
});


//function sendMessage(content) {
//  let date = new Date();
//  let hours = date.getHours();
//  let minutes = date.getMinutes();
//  let ampm = hours >= 12 ? '오후' : '오전';
//  hours = hours % 12;
//  hours = hours ? hours : 12; 
//  minutes = minutes < 10 ? '0' + minutes : minutes;
//  let strTime = ampm + ' ' + hours + ':' + minutes;
//
//  let messageElement = document.createElement('li');
//  messageElement.classList.add('sent');
//
//  let messageContent = document.createElement('p');
//  messageContent.textContent = content;
//
//  let messageTime = document.createElement('span');
//  messageTime.classList.add('message-time');
//  messageTime.textContent = strTime;
//
//  messageElement.appendChild(messageContent);
//  messageElement.appendChild(messageTime);
//
//  document.querySelector('.messages ul').appendChild(messageElement);
//}