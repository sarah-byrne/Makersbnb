require 'sinatra/base'
require 'rubygems'
require 'data_mapper'
require './lib/space.rb'
require './lib/booking_request.rb'

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
    p "space id #{session[:space_id] = params[:space_id]}"
    session[:space_id] = params[:space_id]
    erb :calendar
  end

  get '/requests' do
    #  get space name from session (temp for MVP)
    @space_name = session[:space_name]
    p @booking_request = Booking_request.first(:space_id => "100")
    erb :requests
  end

  post '/requests' do
    p session[:space_id]
    Booking_request.create(space_id: "100", start_date: params[:startdate], end_date: params[:enddate])
    redirect '/requests'
  end

  run! if app_file == $0
end
