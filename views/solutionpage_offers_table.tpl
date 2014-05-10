<div class="table-responsive">
	<table class="table">
		<thead>
		  <tr>
		    <th></th>
		    <th>Yritys</th>
		    <th>Uusin viesti</th>
		    <th>Hinta-arvio</th>
		    <th></th>
		  </tr>
		</thead>
		<tbody id="offerRows">
			%for item in offers:
				%include("solutionpage_offers_table_row", offerId=item[0], yrityksenid=item[1], name=item[2], latestmessage=item[3], price=item[4])
			%end
		</tbody>
	</table>
</div>