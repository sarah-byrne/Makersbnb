require 'sinatra/base'

class Space < Sinatra::Base

  get '/' do
    erb :'index'
  end

  get '/spaces/new' do
    erb :'new_space'
  end

  post '/spaces/new' do
  end

  run! if app_file == $0

end
