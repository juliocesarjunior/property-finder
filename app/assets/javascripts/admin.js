$(function(){
	$("body").on("click", "#toggleDetails", function(){
		var details = $("#prop-details");

		details.toggleClass("open")	
	})
});