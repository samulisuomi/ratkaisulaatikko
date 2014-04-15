 # This Python file uses the following encoding: utf-8

from google.appengine.api import mail

def sendEmail(name, email):
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