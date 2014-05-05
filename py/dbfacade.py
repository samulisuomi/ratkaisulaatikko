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
