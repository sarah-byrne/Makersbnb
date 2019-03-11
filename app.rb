require 'sinatra/base'

class Space < Sinatra::Base

  get '/' do
    erb :'index'
  end

  get '/spaces/new' do
    erb :'new_space'
  end

  post '/spaces/new' do
    "TO DO - persist new space and go to Spaces page"
  end

  run! if app_file == $0

end
