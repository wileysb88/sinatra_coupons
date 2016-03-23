class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'sinatra_coupons'
  )

  set :public_folder, File.expand_path('../../public', __FILE__)
  set :views, File.expand_path('../../views', __FILE__)

  @account_message = ""


  not_found do
    erb :notfound
  end

  get '/' do
    erb :index
  end

end
