$(document).ready(function(){
	$('[rel=tooltip]').tooltip({
	    placement: "top",
	    trigger: "focus",
	    width: "200px"
	});
	
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
});