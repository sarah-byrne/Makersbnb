require 'sinatra/base'
require 'rubygems'
require 'data_mapper'

class Makersbnb < Sinatra::Base

  get '/' do
    'Hello World'
  end

  run! if app_file == $0

end
