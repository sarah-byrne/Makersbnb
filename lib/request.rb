require 'rubygems'
require 'data_mapper'

if ENV['ENVIRONMENT'] == 'test'
  env = "sqlite://#{Dir.pwd}/makers_bnb_test.rb"
else
  env = "sqlite://#{Dir.pwd}/makers_bnb.rb"
end

DataMapper.setup(:default, env)

class Request

  include DataMapper::Resource

  property :id,         Serial
  property :space_id,   Text
  property :start_date, String
  property :end_date,   String


end

DataMapper.finalize
DataMapper.auto_upgrade!
