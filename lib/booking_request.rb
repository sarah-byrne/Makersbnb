require 'rubygems'
require 'data_mapper'

class Booking_request

  attr_reader :space_id, :start_date, :end_date

  include DataMapper::Resource

  property :id,         Serial
  property :space_id,   String
  property :start_date, String
  property :end_date,   String

end
