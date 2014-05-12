% from framework import bottle
% from framework.bottle import request
% from py import dbfacade, dba

%include("main_header.tpl", style="solutionpage")

		<div class="container">
               
	        <div class="row">
	        		<div class="col-sm-8"><a href="/"><img id="headerLogo" src="img/ratkaisulaatikko.png"></a></div>
		        	<div class="col-sm-4 text-right">
		        		<p><span class="headerLink">KIRJAUDU</span><span class="headerLink">LISÄTIETOJA</span></p>
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
			<div class="offerZone">
			</div>
		</div>
		<div class="modal fade" id="offerModal" tabindex="-1" role="dialog" aria-labelledby="offerModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="offerModalLabel">Tarkastele tarjousta</h4>
			  </div>
			  <div class="modal-body">
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Sulje</button>
			  </div>
			</div>
		  </div>
		</div>
%include("solutionpage_footer.tpl")