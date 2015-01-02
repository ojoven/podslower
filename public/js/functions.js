/** DOCUMENT READY **/
$(document).ready(function() {

	$(".episode .links a").on('click',function(e) {
		e.preventDefault();

		$(".episode .links a.active").removeClass('active');
		$(this).addClass('active');
		var player = document.getElementById("player");

		console.log($(this).closest(".episode").hasClass('active'));
		if (!$(this).closest(".episode").hasClass('active')) {

			if (player) {
				player.pause();
				$("#player").remove();
			}

			var src = $(this).closest(".episode").data('href');
			var audio = "<audio controls autoplay preload id='player'><source src='"+src+"' /></audio>";
			$(".episode.active").removeClass('active');
			$(this).closest(".episode").addClass('active').append(audio);

		}


		var speed = parseInt($(this).data('speed'));
		player = document.getElementById("player");
		player.playbackRate = speed / 100;
		player.play();

		return false;
	});

});

/** FUNCTIONS **/
function languageSelectorChanged() {

	var myselect = document.getElementById("language-selector");
	var languageCode = myselect.options[myselect.selectedIndex].value;

	var languageBlock = document.getElementById(languageCode);
	console.log(languageBlock);
	$("html, body").animate({scrollTop:languageBlock.offsetTop-20}, '500');

}

function scrollTo(element, to, duration) {

	if (duration < 0) return;
	var difference = to - element.scrollTop;
	console.log(to,element.scrollTop);
	var perTick = difference / duration * 10;

	setTimeout(function() {
		element.scrollTop = element.scrollTop + perTick;
		if (element.scrollTop == to) return;
		scrollTo(element, to, duration - 10);
	}, 10);

}