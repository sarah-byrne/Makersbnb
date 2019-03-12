require './lib/space'

describe Space do

  it "can add a listing" do
    setup
    Space.add(name: "Fourth space", description: "Is nice", price: "Not too steep", date: "10/10/1900")
    expect(Space[1][:name]).to eq("Fourth space")
  end

end
