% from framework import bottle
% from framework.bottle import request
% from py import dbfacade, dba

%include("main_header.tpl", style="solutionpage")

		<div class="container">
               
	        <div class="row">
	        		<p class="col-xs-8"><a href="/"><img id="headerLogo" src="img/ratkaisulaatikko.png"></a></p>
		        	<div class="col-xs-4">
		        		<div class="row text-right">
			        		<p class="col-sm-6">KIRJAUDU</p>
			                <p class="col-sm-6">LISÄTIETOJA</p>
			            </div>
			        </div>
	        </div>
			<div class="row">
				<div class="col-xs-3 panel panel-default solutionHeaderPanel">
						<p><button class="btn editButton btn-default btn-sm pull-right"><i class="fa fa-pencil fa-2x"></i></button></p>
						<p>Samuli Suomi</p>
						<p>Turku</p>
						<p>samulisuomi@yahoo.fi</p>
				</div>
				<div class="col-xs-8 panel panel-default solutionHeaderPanel">
						<p><button class="btn editButton btn-default btn-sm pull-right"><i class="fa fa-pencil fa-2x"></i></button></p>
						<p>100 m2 omakotitalo täytyisi maalata kesäkuussa. Edellisestä maalauksesta on aikaa 20 vuotta.</p>
				</div>
			</div>
			<div class="row text-left">
				<div class="col-sm-6">
					<h4>Saamasi tarjoukset:</h4>
				</div>
			</div>
			<div class="table-responsive">
		      <table class="table">
		        <thead>
		          <tr>
		            <th></th>
		            <th>Yritys</th>
		            <th>Uusin viesti</th>
		            <th>Hinta-arvio</th>
		            <th></th>
		            <th></th>
		          </tr>
		        </thead>
		        <tbody id="offerRows">
<tr>
			        <td class="text-center"><strong>Ei vielä yhtään tarjousta!</strong></td>
	       			</tr>
					<tr>
			        <td class="text-center">Ongelmaasi ratkaistaan parhaillaan! Ilmoitamme sähköpostiisi kun saat tarjouksia.</td>
	       			</tr>
		        </tbody>
		      </table>
			</div>
		</div>
%include("solutionpage_footer.tpl")