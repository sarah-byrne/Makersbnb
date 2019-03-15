require 'rubygems'
require 'data_mapper'

if ENV['ENVIRONMENT'] == 'test'
  env = "sqlite://#{Dir.pwd}/makers_bnb_test.rb"
else
  env = "sqlite://#{Dir.pwd}/makers_bnb.rb"
end

DataMapper.setup(:default, env)

class Request

  attr_reader :space_id, :start_date, :end_date

  include DataMapper::Resource

  property :id,         Serial
  property :space_id,   String
  property :start_date, String
  property :end_date,   String


end

DataMapper.finalize
DataMapper.auto_upgrade!
