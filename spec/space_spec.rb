require './lib/space'

describe Space do
  it { should have_many :availabilities }
  it { should have_property :name }
  it { should have_property :description }
  it { should have_property :price }
  it { should have_property :start_date }
  it { should have_property :end_date }

  it "can add a listing" do
    setup
    Space.add(name: "Fourth space", description: "Is nice", price: "Not too steep", start_date: "10/10/1900", end_date: "10/10/1900")
    expect(Space[1][:name]).to eq("Fourth space")
  end

  it "can create an availability for each date between start_date and end_date" do
     spaceRow = Space.add(name: "Fourth space", description: "Is nice", price: "Not too steep", start_date: "04/04/2019", end_date: "10/04/2019")
  #   # expect availabilities to have entries for all dates in range
  #   # date = DateTime.parse('04/04/2019')
  #   p "Space[0] #{Space[0]}"
  #   p "Availability[0] #{Availability[0]}"
  #   p "Availability[1] #{Availability[1]}"
  #   space = Space.get(spaceRow[:id])
  #   p "space #{space.availabilities}"
  #   expect(space.availabilities.length).to eq(7)   # this line is wrong but we haven't yet worked out how to test that the associations are created
  end

  it "can update booked status" do
    setup
    entry = Space.first(:name => 'Third space')
    entry.book("Third space")
    expect(Space[0][:available]).to eq(false)
  end

end
