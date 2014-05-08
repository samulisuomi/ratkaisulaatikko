# This Python file uses the following encoding: utf-8
# Tietokantaan liittyvät matalamman tason operaatiot (konkreettiset kyselyt)

# from google.appengine.<jotain> import <jotain storageen liittyvää>
from google.appengine.ext import db

# function for creating an Owner
def createOwner(email):
	owner = Owner(email=email, isVerified=False)
	owner.put()
	#call function for sending verification email

# function for creating a Problem
def createProblem(email, description, location):
	problem = Problem(description = description, location = location, owner = createOwner(email))
	problem.put()

# function for creating a Provider
def createProvider(name):
	provider = Provider(name = name)
	provider.put()

#function for creating a chat
#maybe this hsould include the offer?
def createChat(problem, provider):
	chat = Chat(problem=problem, provider= provider)
	chat.put()

# function for making offers
def makeOffer(problem, provider):
	problem.offers.append(createChat(problem, provider))

#needs functions for getting entitys from db

#needs functions for modifying most of the objects