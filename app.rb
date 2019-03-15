require 'sinatra/base'
require 'rubygems'
require 'data_mapper'
require './lib/space.rb'

class Makersbnb < Sinatra::Base
    enable :sessions

    if ENV['ENVIRONMENT'] == 'test'
      DataMapper.setup(:default, "sqlite://#{Dir.pwd}/makers_bnb_test.rb")
    else
      DataMapper.setup(:default, "sqlite://#{Dir.pwd}/makers_bnb.rb")
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
    start_date = params[:start_date]
    end_date = params[:end_date]
    Space.add(name: name, description: description, price: price, start_date: start_date, end_date: end_date)
    redirect '/spaces'
  end

  get '/spaces' do
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

  run! if app_file == $0
end

