% from framework import bottle
% from framework.bottle import request
% from py import dbfacade, dba

%include("main_header.tpl")
		<div class="container boxContainer">
			<div class="row">
				<div class="col-xs-12">
			      <h4>Hakutulokset: {{request.query.id}}</h4>
			      <table class="table table-responsive browsingTable">
			        <thead>
			          <tr>
			            <th></th>
			            <th>Yritys</th>
			            <th>Viesti</th>
			            <th>Hinta-arvio</th>
			            <th></th>
			          </tr>
			        </thead>
			        <tbody id="offerRows">
						
			        </tbody>
			      </table>
				</div>
			</div>
		</div>
%include("main_footer.tpl")