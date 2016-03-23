class AccountController < ApplicationController

  post '/account_recap' do
    p params
    @new_user = Account.create({
      :name => params[:name],
      :email => params[:email],
      :password_hash => params[:password].to_s.reverse
    })

    @all_users = Account.all

    erb :account_recap
  end

  get '/' do
    erb :account
  end


end
