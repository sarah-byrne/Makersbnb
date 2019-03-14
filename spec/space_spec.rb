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
    Space.add(name: "Fourth space", description: "Is nice", price: "Not too steep", date: "10/10/1900")
    expect(Space[1][:name]).to eq("Fourth space")
  end

  it "can update booked status" do
    setup
    entry = Space.first(:name => 'Third space')
    entry.book("Third space")
    expect(Space[0][:available]).to eq(false)
  end

end
