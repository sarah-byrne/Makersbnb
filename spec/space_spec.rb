require './lib/space.rb'
require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'

describe Space do

  let (:space) { Space.new }

  it "is actually a class" do
    space
  end

  it "can connect to the database" do
    DataMapper.setup :default, {
 :adapter  => 'postgres',
 :host     => 'localhost',
 :database => 'makers_bnb',
 :user     => 'student',
}
  end

  it "can return a listing" do

  end

end
