<div class="row">
	<div class="col-xs-6">
		<div class="row">
			<div class="col-xs-2 modalCompanyLogo">
				<img src="img/default_company.png" width="50px" height="50px">
			</div>
			<div class="col-xs-8">
				<h4><a href="/yritystiedot?id=yrityksenid">Varsinais-Suomen Remonttifirma Oy</a></h4>
				<p>Osoite<br>Puhelin<br>Email<br>Kotisivut</p>
			</div>
		</div>
	</div>
	<div class="col-xs-6">
		<h4><strong>Alustava hinta-arvio:</strong></h4>
		<p>Riippuu seinämateriaalista</p>
	</div>
</div>
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
<div class="row text-center">
	<div class="col-xs-12">
		<p><strong>Älä hylkää tarjousta saman tien!</strong></p>
		<p>Voitte koittaa päästä yhteisymmärrykseen keskustelutoiminnon avulla.</P>
	</div>
</div>
<hr>
%include("solutionpage_modal_message.tpl", type="company", date="12.5.2014 14:05", message="Meidän yrityksellämme on todennäköisesti tuolloin resursseja tehdä kyseinen maalausurakka. Pystytkö ilmoittamaan joitain lisätietoja kohteesta, muun muassa seinien tyypin? Tulemme joka tapauksessa kyllä paikan päälle kurkkaamaan tilanteen ennen urakasta sopimista.")
%include("solutionpage_modal_message.tpl", type="user", date="12.5.2014 17:25", message="Rintamamiestalo kyseessä, neliöitä tosiaan nuo 100 m2 kolmessa kerroksessa. Koska pystyisitte tulemaan paikalle katsomaan? Olen joka toinen viikko iltavuorossa, joten silloin sopisi myös päiväsaikaan.")
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