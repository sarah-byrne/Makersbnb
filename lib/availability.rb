require 'rubygems'
require 'data_mapper'

if ENV['ENVIRONMENT'] == 'test'
    env = "sqlite://#{Dir.pwd}/makers_bnb_test.rb"
else
    env = "sqlite://#{Dir.pwd}/makers_bnb.rb"
end
  
DataMapper.setup(:default, env)

class Availability
    include DataMapper::Resource

    property :id,           Serial
    property :date,         Date 

    belongs_to :space
end

DataMapper.finalize
DataMapper.auto_upgrade!
