require 'rubygems'
require 'data_mapper'

if ENV['ENVIRONMENT'] == 'test'
  DataMapper.setup(:default, "sqlite://#{Dir.pwd}/makers_bnb_test.rb")
else
  DataMapper.setup(:default, "sqlite://#{Dir.pwd}/makers_bnb.rb")
end

class Space

  include DataMapper::Resource

  property :id,           Serial
  property :name,         String
  property :description,  Text
  property :price,        String
  property :available,    Boolean, :default => true

  def self.add(name:, description:, price:)
    Space.create(name: name, description: description, price: price)
  end

end

DataMapper.finalize
DataMapper.auto_upgrade!
