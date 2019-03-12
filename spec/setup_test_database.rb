require './lib/space'

def setup
  DataMapper.auto_migrate!
  Space.create(:name => "Third space", :description => "Nice space", :price => "loads", :date => "10/10/1900")
end
