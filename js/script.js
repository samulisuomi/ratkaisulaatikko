$(document).ready(function(){
	updateOfferList();

	$('[rel=tooltip]').tooltip({
	    placement: "top",
	    trigger: "focus",
	    width: "200px"
	});

	$("#newMessageForm").submit(function(e){
	    var form = $(this);
	    $.ajax({ 
	         url   : form.attr('action'),
	         type  : form.attr('method'),
	         data  : form.serialize(), // data to be submitted
	         success: function(response){
	            alert(response); // do what you like with the response
	         }
	    });
	    return false;
	 });

    $(document).on('click', '.btn-tarkastele', function(e) {
    	e.preventDefault();

    	$(".modal-body").html('');
		$(".modal-body").addClass('loader');
		$("#offerModal").modal('show')

		$.post('ajax/getofferdetails',
			{offerid: $(this).attr('data-id') },
			function(html) {
				$(".modal-body").removeClass('loader');
				$(".modal-body").html(html);
				$(".userMessageDiv").addClass("text-right");
			}
		);
	});
});

function updateOfferList() {
	    $(".offerZone").html('Ladataan...');
		$(".offerZone").addClass('loader');
		currentProblemId = getURLParameter('id');
		$.post('ajax/getofferlist',
			{problemid: currentProblemId },
			function(html) {
				$(".offerZone").removeClass('loader');
				$(".offerZone").html(html);
			}
		);
}

function getURLParameter(name) {
	return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null
}

