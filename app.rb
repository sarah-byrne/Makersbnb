require 'sinatra/base'
require 'rubygems'
require 'data_mapper'
require './lib/space.rb'

class Makersbnb < Sinatra::Base

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

  run! if app_file == $0
end
