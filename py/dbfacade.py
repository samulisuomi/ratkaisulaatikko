# This Python file uses the following encoding: utf-8
# Tietokantaan liittyvät korkean tason operaatiot

from py import mail, dba

def checkIfPendingVerifications(email):
	#DBA: voi olla turha tehdä tästä tänne dbafacade-puolelle mitään mutta ainakin löytyy kaikki samasta paikasta
	return False #jos niitä ei löytynyt

# creates verification ID on the sent problem if there is no email verification pending
# fields have been checked. returns the verificationId
def startVerificationProcess(name, city, description, email):
	#DBA: saves email address with unique id -> return verification ID from dba function
	#DBA: saves the pending problem into the database along with a generated verification ID and marked as UNVERIFIED
	return 0 #verificationId

# verifies the email and sets the problem into active state. returns the problem ID
def setProblemVerified(verificationId):
	# DBA: mark the earlier verification as VERIFIED (etc)
	# DBA: modify the pending problem into ACTIVE
	return 0 #problemId

# False IDs..? :)
# (TEMPORARY?) functions for offer details:
def getCompanyId(offerId):
	if (offerId == "a1b2c3d4e5001"):
		return "001"
	elif (offerId == "a1b2c3d4e5002"):
		return "002"

def getCompanyName(companyId):
	if (companyId == "001"):
		return "Varsinais-Suomen Remontit Oy"
	elif (companyId == "002"):
		return "Peran Remppa T:mi"

def getOfferPrice(offerId):
	if (offerId == "a1b2c3d4e5001"):
		return "Riippuu seinämateriaalista"
	elif (offerId == "a1b2c3d4e5002"):
		return "50 euroa tunti + tarvikkeet"

def getChatMessages(offerId):
	if (offerId == "a1b2c3d4e5001"):
		chat = [
			["001", "company", "12.5.2014 14:01", "Meidän yrityksellämme on todennäköisesti tuolloin resursseja tehdä kyseinen maalausurakka. Pystytkö ilmoittamaan joitain lisätietoja kohteesta, muun muassa seinien tyypin? Tulemme joka tapauksessa kyllä paikan päälle kurkkaamaan tilanteen ennen urakasta sopimista."],
			["kayttajanid", "user", "12.5.2014 17:31", "Rintamamiestalo kyseessä, neliöitä tosiaan nuo 100 m2 kolmessa kerroksessa. Koska pystyisitte tulemaan paikalle katsomaan? Olen joka toinen viikko iltavuorossa, joten silloin sopisi myös päiväsaikaan."]
		]
		return chat
	elif (offerId == "a1b2c3d4e5002"):
		chat = [
			["002", "company", "12.5.2014 15:39", "moikka. soittele 0400123456 niin sovitaan tarkemmin"]
		]
		return chat

def getShortLatestMessage(offerId):
	messages = getChatMessages(offerId)
	# LOL for this:
	foundIt = False
	latestMessage = ""

	i = len(messages) - 1

	while (foundIt == False):
		if messages[i][1] == "company":
			foundIt = True
			latestMessage = messages[i][3]
		i = i - 1
	
	if len(latestMessage) > 160:
		return latestMessage[:157] + "..."
	else: 
		return latestMessage


# (TEMPORARY?) functions for problem
def problemIdIsLegit(problemId):
	if ((problemId == "a1b2c3d4e5") | (problemId == "a1b2c3d4e5demo")):
		return True
	else:
		return False

def getOffers(problemId):
	if (problemId == "a1b2c3d4e5"):
		offers = []
		return offers
	elif (problemId == "a1b2c3d4e5demo"):
		# TODO: get actual offer id list from somewhere
		offers = [
			["a1b2c3d4e5001", getCompanyId("a1b2c3d4e5001"), getCompanyName(getCompanyId("a1b2c3d4e5001")), getShortLatestMessage("a1b2c3d4e5001"), getOfferPrice("a1b2c3d4e5001")],
			["a1b2c3d4e5002", getCompanyId("a1b2c3d4e5002"), getCompanyName(getCompanyId("a1b2c3d4e5002")), getShortLatestMessage("a1b2c3d4e5002"), getOfferPrice("a1b2c3d4e5002")]
		]
		return offers

def getProblemOwnerName(problemId):
	if ((problemId == "a1b2c3d4e5") | (problemId == "a1b2c3d4e5demo")):
		return "Samuli Suomi"

def getProblemOwnerLocation(problemId):
	if ((problemId == "a1b2c3d4e5") | (problemId == "a1b2c3d4e5demo")):
		return "Turku"

def getProblemOwnerEmail(problemId):
	if ((problemId == "a1b2c3d4e5") | (problemId == "a1b2c3d4e5demo")):
		return "samulisuomi@yahoo.fi"

def getProblemDescription(problemId):
	if ((problemId == "a1b2c3d4e5") | (problemId == "a1b2c3d4e5demo")):
		return "100 m2 omakotitalo täytyisi maalata kesäkuussa. Edellisestä maalauksesta on aikaa 20 vuotta."