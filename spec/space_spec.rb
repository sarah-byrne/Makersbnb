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
    Space.add(name: "Fourth space", description: "Is nice", price: "Not too steep", start_date: "04/04/2019", end_date: "05/04/2019")
    # expect availabilities to have 2 entries, one for 4 April and one for 5 April
    date = DateTime.parse('04/04/2019')
    expect(Space[0].availabilities[0][:date]).to eq(date)   # this line is wrong!
  end

  it "can update booked status" do
    setup
    entry = Space.first(:name => 'Third space')
    entry.book("Third space")
    expect(Space[0][:available]).to eq(false)
  end

end
