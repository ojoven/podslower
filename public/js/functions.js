function languageSelectorChanged() {

	var myselect = document.getElementById("language-selector");
	var languageCode = myselect.options[myselect.selectedIndex].value;

	var languageBlock = document.getElementById(languageCode);
	console.log(languageBlock);
	scrollTo(document.documentElement,languageBlock.offsetTop,200);

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