require 'sinatra/base' #we need sinatra first

require './controllers/application' #same as app.rb
require './controllers/account'
require './controllers/coupon'

require './models/account'
require './models/coupon'


map('/') { run ApplicationController }
map('/account') { run AccountController }
map('/coupon') { run CouponController }
