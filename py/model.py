#This file is for the moduls used by the database
# should maybe be in dba.py?

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