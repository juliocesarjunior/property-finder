$(function(){
	// Função Telefone Perfil Properties
	$("#show-tel").on("click", function(){
		var $this = $(this);
		$this.find("span").text( $this.data("telephone"))
	});
	// Função Show Details da Properties
	$("#toggleDetails").on("click", function(){
		var details = $("#prop-details");

		details.toggleClass("open");
		if(details.hasClass("open")){
			$(this).text("Show less")
		}else{
			$(this).text("Show more")
		}
	});

	$("#send-message-to-agent").on("click", function(){
		var agent_id = $("#agent_id").val(),
			first_name = $("#message-first-name").val(),
			last_name = $("#message-last-name").val(),
			message = $("#message-text").val(),

		$;ajax({
			url: "/agent/message",
			method: "POST",
			dataType: "json",
			data: {
				agent_id: agent_id,
				first_name: first_name,
				last_name: last_name,
				message: message
			}
			success: function(data){
				console.log(data);
			}
		});
	});

	// Função Modal
	$('#contact-modal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget); // Button that triggered the modal
	  var modal = $(this);
	});
});
