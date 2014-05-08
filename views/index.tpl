%include("main_header.tpl", style="style")
		<div class="container boxContainer">
			<div class="row vertical-center-row">

					<div class="col-xs-10 col-xs-offset-1 col-md-6 col-md-offset-3 panel panel-default text-center">

						<h1 class="margin-base-vertical"><img id="logo" src="img/ratkaisulaatikko.png"></h1>
						<h4>Kilpailuta helposti niin pienet kuin isotkin kodin askareesi!</h4>
						<h4>Täytä lomake ja asiasi alkaa edistyä välittömästi.</h4>

						<form role="form" class="margin-base-vertical" action="/postaproblem" method="post">
							<p><input type="text" class="form-control input-lg" name="name" placeholder="Nimi" /></p>
							<p><input type="text" class="form-control input-lg" name="city" placeholder="Kaupunki tai kunta" /></p>
							<p><textarea rel="tooltip" data-original-title="Esimerkki: &quot;100 m2 omakotitalo täytyisi maalata kesäkuussa. Edellisestä maalauksesta on aikaa 20 vuotta&quot;" class="form-control" name="description" rows="4" placeholder="Kuvaus ongelmastasi ja erityisvaatimuksistasi. Kerro ainakin koska haluat ongelman hoidettavan."></textarea></p>
							<p><input type="text" class="form-control input-lg" name="email" placeholder="Sähköpostiosoite" /></p>
							<p class="help-block"><small>Kaikki yhteydenpito hoituu sähköpostisi välityksellä. Käyttäjätunnuksen tekeminen ei ole pakollista.</small></p>
							<button type="submit" class="btn btn-success btn-lg">Aloita ratkaiseminen</button>
						</form>

					</div>
			
			</div>
		</div>
%include("main_footer.tpl")