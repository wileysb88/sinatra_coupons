require 'sinatra/base' #we need sinatra first

require './controllers/application' #same as app.rb

map('/') { run ApplicationController }
