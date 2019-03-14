require './lib/space'

def setup
  DataMapper.auto_migrate!
  Space.create(:name => "Third space", :description => "Nice space", :price => "loads", :start_date => "10/10/1900", :end_date => "10/10/1900")
end
