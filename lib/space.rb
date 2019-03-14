require 'rubygems'
require 'data_mapper'
require './lib/availability'

class Space

  attr_reader :name, :available, :availabilities

  include DataMapper::Resource

  property :id,           Serial
  property :name,         String
  property :description,  Text
  property :price,        String
  property :available,    Boolean, :default => true
  property :start_date,   Date
  property :end_date,     Date 

  has n,  :availabilities

  def self.add(name:, description:, price:, start_date:, end_date:)
    Space.create(name: name, description: description, price: price, start_date: start_date, end_date: end_date)
  end

  def book(name)
    entry = Space.first(:name => name)
    entry.update(:available => false)
  end

end
