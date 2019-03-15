require 'rubygems'
require 'data_mapper'
require 'date'
require './lib/availability'

class Space

  attr_reader :name, :available, :availabilities, :id

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
    spaceRow = Space.create(name: name, description: description, price: price, start_date: start_date, end_date: end_date)
    date1 = Date.parse(start_date)
    date2 = Date.parse(end_date)
    (date1..date2).each do |date|
      availRow = Availability.create(space: spaceRow, date: date)
      p "Availability inserted? #{availRow.saved?} "
    end
  end

  def book(name)
    entry = Space.first(:name => name)
    entry.update(:available => false)
  end

end
