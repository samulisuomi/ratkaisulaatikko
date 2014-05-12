# This Python file uses the following encoding: utf-8

from framework import bottle
from framework.bottle import Bottle, TEMPLATE_PATH, route, template, error, request, debug, post, redirect, url, SimpleTemplate, static_file
from google.appengine.ext.webapp.util import run_wsgi_app
from py import mail, dbfacade
import logging

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

@app.route("/demo")
def demo():
	return template("demoinstructions.tpl")

@app.route('/postaproblem', method='POST')
def postaproblem():
	name = request.forms.get('name')
	city = request.forms.get('city')
	description = request.forms.get('description')
	email = request.forms.get('email')
	mail.sendConfirmationEmail(name, email) #TODO!!
	return template("postaproblem.tpl", email=email)

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
	if (dbfacade.problemIdIsLegit(id)):
		return template("solutionpage.tpl", ownername=dbfacade.getProblemOwnerName(id), ownerlocation=dbfacade.getProblemOwnerLocation(id), owneremail=dbfacade.getProblemOwnerEmail(id), problemdescription=dbfacade.getProblemDescription(id))
	else:
		return("<p>You entered an invalid problem ID!</p><p><a href=\"/\">To the front page</a></p>")

@app.post("/ajax/getofferdetails")
def getofferdetails():
	bottle.debug(True)
	offerId = request.forms.get('offerid')
	#TODO: db (tietoja kyseisestä offerista)
	companyId = dbfacade.getCompanyId(offerId)
	companyName = dbfacade.getCompanyName(companyId)
	price = dbfacade.getOfferPrice(offerId)
	chat = dbfacade.getChatMessages(offerId)
	return template("solutionpage_modal_body", companyid=companyId, name=companyName, price=price, chat=chat)

@app.post("/ajax/getofferlist")
def getofferlist():
	bottle.debug(True)
	problemId = request.forms.get('problemid')
	logging.getLogger().setLevel(logging.DEBUG)
	logging.info(problemId)
	offers = dbfacade.getOffers(problemId)

	if (len(offers)>0):
		return template("solutionpage_offers_table", offers=offers)
	else:
		return template("solutuonpage_offers_table_empty")

@app.route("/yritystiedot")
def yritystiedot():
	return "<p>This page has not yet been implemented</p>"

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