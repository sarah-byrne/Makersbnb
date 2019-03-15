require "./lib/booking_request.rb"

describe Booking_request do

  context "Put some dates in" do

    it "is actually a table" do
      thing = Booking_request.new
    end

    it "stores the date" do
      Booking_request.create(space_id: "2", start_date: "15/03/2019", end_date: "17/03/2019")
      expect(Booking_request[0][:space_id]).to eq("2")
    end

  end

end
