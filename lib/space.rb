require 'rubygems'
require 'data_mapper'
require 'dm-postgres-adapter'

class Space

  DataMapper.setup(:default, 'postgres://student/makers_bnb')

end
