require './lib/space'

describe Space do

  let (:space) { Space.new }

  it "is actually a class" do
    space
  end

  it "can create a new entry in a database" do
    setup
    Space.create(:name => "Third space", :description => "Nice space", :price => "loads")
  end

  it "can add a listing" do
    setup
    Space.add(name: "Fourth space", description: "Is nice", price: "Not too steep")
    expect(Space[0][:name]).to eq("Fourth space")
  end

end
