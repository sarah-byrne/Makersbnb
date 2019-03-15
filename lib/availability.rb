require 'rubygems'
require 'data_mapper'
  
class Availability
    include DataMapper::Resource

    property :id,           Serial
    property :date,         Date 
    property :booked,       Boolean 

    belongs_to :space
end
