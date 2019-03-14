require 'rubygems'
require 'data_mapper'

class Space

  attr_reader :name, :available

  include DataMapper::Resource

  property :id,           Serial
  property :name,         String
  property :description,  Text
  property :price,        String
  property :available,    Boolean, :default => true
  property :date,         String

  def self.add(name:, description:, price:, date:)
    resource = Space.create(name: name, description: description, price: price, date: date)
    p "space saved? #{resource.saved?}"
  end

  def book(name)
    entry = Space.first(:name => name)
    entry.update(:available => false)
  end

end
