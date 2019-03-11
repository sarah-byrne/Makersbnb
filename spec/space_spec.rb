require './lib/space.rb'
require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'
require 'space'

describe Space do

  let (:space2) { Space.new }

  it "is actually a class" do
    space2
  end

  it "can connect to the database" do
    DataMapper.setup :default, {
 :adapter  => 'postgres',
 :host     => 'localhost',
 :database => 'makers_bnb_test',
 :user     => 'student',
}
  end

  it "can add a listing" do
    space = Space.create(:name => "First space", :description => "Nice space", :price => "loads")
  end

end
