require './lib/space.rb'
require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'

describe Space do

  it "is actually a class" do
    space = Space.new
  end

  it "can connect to the database" do
    DataMapper.setup :default, {
 :adapter  => 'postgres',
 :host     => 'localhost',
 :database => 'makers_bnb',
 :user     => 'student',
}
  end

end
