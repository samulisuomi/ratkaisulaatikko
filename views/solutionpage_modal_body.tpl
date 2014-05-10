<div class="row">
	<div class="col-xs-6">
		<div class="row">
			<div class="col-xs-2 modalCompanyLogo">
				<img src="img/default_company.png" width="50px" height="50px">
			</div>
			<div class="col-xs-8">
				<h4>Yrityksen nimi</h4>
				<p>Osoite<br>Puhelin<br>Email<br>Y-tunnus</p>
			</div>
		</div>
	</div>
	<div class="col-xs-6">
		<h4><strong>Alustava hinta-arvio:</strong></h4>
		<p>Testi</p>
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
<hr>
%include("solutionpage_modal_message.tpl", type="company", date="12.5.2014 14:05", message="Meidän yrityksellämme on todennäköisesti tuolloin resursseja tehdä kyseinen maalausurakka. Pystytkö ilmoittamaan joitain lisätietoja kohteesta, muun muassa seinien tyypin?")
<hr>
<div class="row">
	<div class="col-xs-7 pull-right">
		<form class="form-inline" role="form" action="">
			<div class="form-group">
				<textarea class="form-control" rows="2" id="messageArea" placeholder="Kirjoita viestisi tähän."></textarea>
			</div>
				<button type="submit" id="submitMessage" class="btn btn-primary">Lähetä</button>
		</form>
	</div>
</div>