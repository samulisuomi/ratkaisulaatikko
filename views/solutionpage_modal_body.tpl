<div class="row">
	<div class="col-xs-6">
		<div class="row">
			<div class="col-xs-2 modalCompanyLogo">
				<img src="img/default_company.png" width="50px" height="50px">
			</div>
			<div class="col-xs-8">
				<h4><a href="/yritystiedot?id={{companyid}}">{{name}}</a></h4>
			</div>
		</div>
	</div>
	<div class="col-xs-6">
		<h4><strong>Alustava hinta-arvio:</strong></h4>
		<p>{{price}}</p>
	</div>
</div>
<hr>
<div class="row">
	<div class="col-xs-offset-3 col-xs-6 text-center">
		<div class="row">
			<div class="col-md-6">
				<button type="button" class="btn btn-success">Hyväksy tarjous</button>
			</div>
			<div class="col-md-6">
				<button type="button" class="btn btn-danger">Hylkää tarjous</button>
			</div>
		</div>
	</div>
</div>
<div class="row text-center disclaimermargin">
	<div class="col-xs-12">
		<p><strong>Älä hylkää tarjousta saman tien!</strong></p>
		<p>Voitte koittaa päästä yhteisymmärrykseen keskustelutoiminnon avulla.</P>
	</div>
</div>
<hr>
%for item in chat:
	%include("solutionpage_modal_message.tpl", type=item[1], date=item[2], message=item[3])
%end
<hr>
<div class="row">
	<div class="col-xs-7 pull-right">
		<form class="form-inline" name="messageForm" method="POST" role="form" action="/ajax/sendnewmessage">
			<div class="form-group">
				<textarea class="form-control" rows="2" id="messageArea" placeholder="Kirjoita viestisi tähän."></textarea>
			</div>
				<button type="button" id="submitMessage" class="btn btn-primary">Lähetä</button>
		</form>
	</div>
</div>