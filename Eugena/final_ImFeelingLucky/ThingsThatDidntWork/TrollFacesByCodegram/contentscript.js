$(document).ready(function(){
	// Trollface image must be at 'myextension/images/trollface.jpg'
var trollface = chrome.extension.getURL("trollface.jpg");
$('#content article img').each(function(index, image){
	$(image).attr('src', trollface),
	});
});