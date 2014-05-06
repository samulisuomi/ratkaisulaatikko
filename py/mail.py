 # This Python file uses the following encoding: utf-8

from google.appengine.api import mail
from google.appengine.ext import db

# class for storing problems posted
class Problem(db.Model):
  description = db.Text(required=True) # description of problem
  owner = db.Key(required=True) # use existing user or create one
  offers = db.Text() #list of offers
  chat = db.Chat.Key() # list of keys to relevant Chat objects

# class for modeling the person that has problems
class Owner(db.Model):
  email = db.StringProperty(required=True) #contact info
  #add some identification information. use something premade?

# class for service provider
class Provider(db.Model):
  name = db.StringProperty(required=True)
  #add some rating system?
  concactInfo = db.StringProperty()

# class for storing chat conversation between user and provider
class Chat(db.Model):
  #relevant parties
  problem = db.Problem.Key(required=True)
  provider = db.Provider.Key(required=True)
  chat = db.Text() #list of chat


def sendConfirmationEmail(name, email):
	mail.send_mail(sender="Ratkaisulaatikko <ratkaisulaatikko@ratkaisulaatikko.appspotmail.com>",
	              to=name + " <" + email + ">",
	              subject="Vahvista sähköpostiosoitteesi - Ratkaisulaatikko",
	              body="""
	Hei,

	Olet melkein valmis! Klikkaa alla olevaa linkkiä, jotta voimme varmistaa sähköpostiosoitteesi:

	http://ratkaisulaatikko.appspot.com/vahvista?id=123456789

	Terveisin,
	Ratkaisulaatikko
	""")
def tempSendSolutionMail():
	sendSolutionPageLink("Samuli Suomi", "samulisuomi@yahoo.fi")

def sendSolutionPageLink(name, email):
	mail.send_mail(sender="Ratkaisulaatikko <ratkaisulaatikko@ratkaisulaatikko.appspotmail.com>",
              to=name + " <" + email + ">",
              subject="Ratkaisulinkkisi - Ratkaisulaatikko",
              body="""
	Hei,

	Voit seurata ongelmasi tilannetta seuraavalla sivulla:

	http://ratkaisulaatikko.appspot.com/ratkaisusivu?id=a1b2c3d4e5

	Voit tallentaa sivun myös kirjanmerkiksi.

	Terveisin,
	Ratkaisulaatikko
	""")