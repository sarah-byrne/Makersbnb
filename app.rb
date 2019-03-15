require 'sinatra/base'
require 'rubygems'
require 'data_mapper'
require './lib/space.rb'

class Makersbnb < Sinatra::Base
    enable :sessions

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
    @spaces = Space.all()
    erb :all_spaces
  end

  get '/spaces/1' do
    #  put booked space name in session (temp for MVP)
    session[:space_name] = params[:name]
    erb :calendar
    #redirect '/spaces/1'
  end

  get '/requests' do
    #  get space name from session (temp for MVP)
    @space_name = session[:space_name]
    @startdate = session[:startdate]
    @enddate = session[:enddate]
    erb :requests
  end

  post '/requests' do
    session[:startdate] = params[:startdate]
    session[:enddate] = params[:enddate]
    redirect '/requests'
  end

  run! if app_file == $0
end
