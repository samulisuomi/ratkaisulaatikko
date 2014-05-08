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
			            <td width="50px"><img src="img/default_company.png" width="50px" height="50px"></td>
			            <td class="restrictedColumn">Varsinais-Suomen Remonttifirma Oy</td>
			            <td><button class="btn btn-default btn-message">Minkälainen seinämateriaali?</button></td>
			            <td class="restrictedColumn">Urakalla 1000 €</td>
			            <td class="text-center"><button class="btn btn-success" id="modalButton_rowId" data-toggle="modal" data-target="#offerModal">Tarkastele</button></td>
			            <td class="text-center"><button class="btn btn-danger" id="rejectButton_rowId">Hylkää yritys</button></td>
	       			</tr>
					<tr>
			            <td width="50px"><img src="img/default_company.png" width="50px" height="50px"></td>
			            <td class="restrictedColumn">Yrityksen nimi</td>
			            <td><button class="btn btn-default btn-message">Soita 0401234567 niin puhutaan tarkemmin.</button></td>
			            <td class="restrictedColumn">50 euroa tunti + tarvikkeet</td>
			            <td class="text-center"><button class="btn btn-success" id="modalButton_rowId" data-toggle="modal" data-target="#offerModal">Tarkastele</button></td>
			            <td class="text-center"><button class="btn btn-danger" id="rejectButton_rowId">Hylkää yritys</button></td>
	       			</tr>
	       			<tr>
			            <td width="50px"><img src="img/default_company.png" width="50px" height="50px"></td>
			            <td class="restrictedColumn">Yrityksen nimi</td>
			            <td><button class="btn btn-default btn-message">Soita 0401234567 niin puhutaan tarkemmin.</button></td>
			            <td class="restrictedColumn">50 euroa tunti + tarvikkeet</td>
			            <td class="text-center"><button class="btn btn-success" id="modalButton_rowId" data-toggle="modal" data-target="#offerModal">Tarkastele</button></td>
			            <td class="text-center"><button class="btn btn-danger" id="rejectButton_rowId">Hylkää yritys</button></td>
	       			</tr>
		        </tbody>
		      </table>
			</div>
		</div>
%include("solutionpage_footer.tpl")