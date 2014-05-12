$(document).ready(function(){
	updateOfferList();

	$('[rel=tooltip]').tooltip({
	    placement: "top",
	    trigger: "focus",
	    width: "200px"
	});
	/*
	$('#offerModal').modal({
        keyboard: true,
        backdrop: "static",
        show:false,
    }).on('show', function(){ //subscribe to show method
		console.log("testi");
        var getIdFromRow = $(event.target).closest('td').data('id'); //get the id from tr
        //make your ajax call populate items or what even you need
        $(this).find('#idTest').html($('<b> Offer Id selected: ' + getIdFromRow  + '</b>'));
    });
*/
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
	    $(".offerZone").html('');
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