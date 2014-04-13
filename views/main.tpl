<!DOCTYPE html>
<html>
	<head>
		<title>Ratkaisulaatikko</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta charset="utf-8"> 

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href="css/style.css" rel="stylesheet">
        <link href="css/font-awesome.css" rel="stylesheet">


		<style>

			html {
				height: 100%;
			}

			body {
				background: url(img/toolbox.jpg) no-repeat center center fixed; 
				background-size: 1280px;
				font-family: "Open Sans", sans-serif;
				height: 100%;
			}

			.boxContainer {
				height: 95%;
			    display: table;
			    vertical-align: middle;
			}

			.vertical-center-row {
			    display: table-cell;
			    vertical-align: middle;
			}

			.panel {
				background-color: rgba(255, 255, 255, 0.8);
			}

			.margin-base-vertical {
				margin: 40px 0;
			}

			.footerContainer {
				height: 15px;
			}

			.some {
				margin-left: 5px;
				color: #333;
			}

			textarea {
			   resize: none;
			}

			input-lg {
				width: 50%;
			}


		</style>

	</head>
	<body>
		<div class="container boxContainer">
			<div class="row vertical-center-row">

					<div class="col-xs-10 col-xs-offset-1 col-md-6 col-md-offset-3 panel panel-default text-center">

						<h1 class="margin-base-vertical">Ratkaisulaatikko</h1>

						<form role="form" class="margin-base-vertical">
							<p><input type="text" class="form-control input-lg" name="name" placeholder="Nimi" /></p>
							<p><input type="text" class="form-control input-lg" name="city" placeholder="Kaupunki tai kunta" /></p>
							<p><input type="text" class="form-control input-lg" name="email" placeholder="Sähköpostiosoite" /></p>
							<p><textarea class="form-control" name="description" rows="4" placeholder="Kuvaus ongelmastasi ja erityisvaatimuksistasi"></textarea></p>

							<p class="help-block text-center"><small>Kaikki yhteydenpito hoituu sähköpostisi välityksellä. Käyttäjätunnuksen tekeminen ei ole pakollista.</small></p>
							<button type="submit" class="btn btn-success btn-lg">Aloita ratkaiseminen</button>
						</form>
					</div>
			
			</div>
		</div>

		<div class="container footerContainer">
               
	        <div class="row">
	        	<div class="pull-left">
	        		<p class="col-sm-6">KIRJAUDU</p>
	                <p class="col-sm-6">LISÄTIETOJA</p>
            	</div>
	            <div class="pull-right">
	                <p class="text-right col-xs-12">
	                        <a class="some" href="http://www.facebook.com"><i class="fa fa-facebook fa-2x"></i></a>
	                        <a class="some" href="http://www.twitter.com"><i class="fa fa-twitter fa-2x"></i></a>
	                </p>
	            </div>

	        </div>
               
        </div>   

        <script src="js/jquery-1.11.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script> 
	</body>
</html>