require 'sinatra/base'
require 'rubygems'
require 'data_mapper'
require './lib/space.rb'
require './lib/user.rb'

class Makersbnb < Sinatra::Base
    enable :sessions

  if ENV['ENVIRONMENT'] == 'test'
    env = "sqlite://#{Dir.pwd}/makers_bnb_test.rb"
    DataMapper.setup(:default, env)
  else
    env = "sqlite://#{Dir.pwd}/makers_bnb.rb"
    DataMapper.setup(:default, env)
  end
  DataMapper.finalize
  DataMapper.auto_upgrade!
  
  
  get '/' do
    erb :index
  end

  get '/spaces/new' do
    erb :new_space
  end

  post '/spaces/new' do
    name = params[:name]
    description = params[:description]
    price = params[:price]
    date = params[:date]
    Space.add(name: name, description: description, price: price, date: date)
    redirect '/spaces'
  end

  get '/spaces' do
    @user = User.instance
    @spaces = Space.all()
    erb :all_spaces
  end

  get '/spaces/1' do
    #  put booked space name in session (temp for MVP)
    session[:space_name] = params[:name]
    redirect '/requests'
  end

  get '/requests' do
    #  get space name from session (temp for MVP)
    @space_name = session[:space_name]
    erb :requests
  end

  post '/user/new' do
    User.add(name: params[:username], email_address: params[:email_address], password: params[:password])
    User.create_instance(params[:username])
    redirect '/spaces'
  end

  run! if app_file == $0
end
