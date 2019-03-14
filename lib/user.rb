require 'bcrypt'
require 'rubygems'
require 'data_mapper'

class User

  attr_reader :name

  include DataMapper::Resource

  property :id,             Serial
  property :name,           String
  property :email_address,  String
  property :password,       String, :length => 200

  def self.add(name:, email_address:, password:)
    p "user name #{name}"
    p "pw #{password}"
    encrypted_password = BCrypt::Password.create(password)
    #p "epw #{encrypted_password}"
    resource = User.create(email_address: email_address, password: "$2a$10$F9GIlc8Vyp1T6FnH3jqvxOtBIAUcE2Y8UOigiT8zCG1t1/wmaj14W")
    p "user saved? #{resource.saved?}"
    p "resource #{resource.errors}" 
    resource.errors.each do |e|
        puts e
      end
  end

  def self.create_instance(name)
    @user = User.new(name)
  end
  
  def self.instance
    @user
  end

  def initialize(name)
    @name = name
  end

end
