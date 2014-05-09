from framework import bottle
from framework.bottle import Bottle, TEMPLATE_PATH, route, template, error, request, debug, post, redirect, url, SimpleTemplate, static_file
from google.appengine.ext.webapp.util import run_wsgi_app
from py import mail, dbfacade

#Instead of supplying url in every handler, set up a template default
SimpleTemplate.defaults["url"] = lambda x, **kwargs: SETTINGS.URL_BASE + url(x, **kwargs)

app = Bottle()
TEMPLATE_PATH.insert(0,"views")	

def main():
	run_wsgi_app(bottle.default.app())

if __name__=="__main__":
	main()

@app.route("/")
def home():
	return template("index.tpl")

@app.route('/postaproblem', method='POST')
def postaproblem():
	name = request.forms.get('name')
	city = request.forms.get('city')
	description = request.forms.get('description')
	email = request.forms.get('email')
	if ((name == "LeanSoftwareStartup") or (email == "samulisuomi@yahoo.fi")): #TODO!!
		mail.sendConfirmationEmail(name, email) #TODO!!
		return template("postaproblem.tpl", email=email)
	else:
		redirect("/")

@app.route("/vahvista")
def validateemail():
	#TODO:
	id = request.query.id
	if (id == "123456789"):
		mail.tempSendSolutionMail()
		return template("validate.tpl")
	else:
		redirect("/")

@app.route("/ratkaisusivu")
def solutionpage():
	bottle.debug(True)
	#TODO:
	id = request.query.id
	if (id == "a1b2c3d4e5demo"):
		return template("solutionpage.tpl")
	elif (id =="a1b2c3d4e5"):
		return template("solutionpage_empty.tpl")
	else:
		redirect("/")

@app.post("/ajax/getofferdetails")
def getofferdetails():
	bottle.debug(True)
	offerid = request.forms.get('offerid')
	#TODO: db
	if (True):
		return "<p>Rivin data-id: " + offerid + "</p>"
	else:
		return "<p>Error with retrieving information.</p>"

@app.error(404)
def error404(error):
    return template("404.tpl")

@app.route("/misc/<filename:path>")
def serve_misc(filename):
	return static_file(filename, root="misc")

@app.route("/css/<filename:path>", name="css")
def serve_css(filename):
	return static_file(filename, root="css")

@app.route("/js/<filename:path>", name="js")
def serve_js(filename):
    return static_file(filename, root="js")

@app.route("/fonts/<filename:path>", name="fonts")
def serve_fonts(filename):
    return static_file(filename, root="fonts")

@app.route("/less/<filename:path>", name="less")
def serve_less(filename):
    return static_file(filename, root="less")

@app.route("/scss/<filename:path>", name="scss")
def serve_scss(filename):
    return static_file(filename, root="scss")

# This isn"t exactly ideal because all images must be placed in the root of img/, but it works for now.
@app.route("<path:re:.*>/<filename:re:.*\.(jpg|gif|png|ico)>")
def serve_images(filename, path):
	return static_file(filename, root="img/")