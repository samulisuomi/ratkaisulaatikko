% from framework import bottle
% from framework.bottle import request
% from py import dbfacade, dba

%include("main_header.tpl")
		<div class="container boxContainer">
			<div class="row">
				<h1>Ratkaisusivu {{request.query.id}}</h1>
			</div>
			<div class="row">
				<h2>Lähetetty ongelma tässä + muokkausnappulat</h2>
			</div>
			<div class="row text-center">
				<div class="col-sm-6">
					<h4>Saamasi tarjoukset:</h4>
				</div>
				<div class="col-sm-6">
					<h4>Tuhoamisvalikko tähän</h4>
				</div>
			</div>
			<div class="table-responsive">
		      <table class="table">
		        <thead>
		          <tr>
		            <th></th>
		            <th>Yritys</th>
		            <th>Viesti</th>
		            <th>Hinta-arvio</th>
		            <th></th>
		            <th></th>
		          </tr>
		        </thead>
		        <tbody id="offerRows">
					<tr>
			            <td width="50px"><img src="img/default_company.png" width="50px" height="50px"></td>
			            <td>Yrityksen nimi</td>
			            <td>Ehtoja, kysymyksiä, kuvausta, ym.</td>
			            <td>Urakalla 1000 €</td>
			            <td class="text-center"><button class="btn btn-primary" id="modalButton_rowId" data-toggle="modal" data-target="#offerModal">Tarkastele</button></td>
			            <td><input class="offerCheckbox" type="checkbox"></td>
	       			</tr>
	       			<tr>
			            <td width="50px"><img src="img/default_company.png" width="50px" height="50px"></td>
			            <td>Yrityksen nimi</td>
			            <td>Ehtoja, kysymyksiä, kuvausta, ym.</td>
			            <td>50 euroa tunti + tarvikkeet</td>
			            <td class="text-center"><button class="btn btn-primary" id="modalButton_rowId" data-toggle="modal" data-target="#offerModal">Tarkastele</button></td>
			            <td><input class="offerCheckbox" type="checkbox"></td>
	       			</tr>
		        </tbody>
		      </table>
			</div>
		</div>
%include("main_footer.tpl")