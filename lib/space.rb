require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'

class Space

  if ENV['RACK_ENV'] == 'test'
    DataMapper.setup(:default, 'postgres://student@127.0.0.1:5432/makers_bnb_test')
    #DataMapper.finalize
    #DataMapper.auto_upgrade!
  else
    DataMapper.setup(:default, 'postgres://student@127.0.0.1:5432/makers_bnb')
    #DataMapper.finalize
    #DataMapper.auto_upgrade!
  end


  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :price, String
  property :available, Boolean, :default => true



end

DataMapper.finalize
DataMapper.auto_upgrade!
