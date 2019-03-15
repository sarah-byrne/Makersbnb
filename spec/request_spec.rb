require "./lib/request.rb"

describe Request do

  context "Put some dates in" do

    it "is actually a table" do
      thing = Request.new
    end

    it "stores the date" do
      Request.create(space_id: "2", start_date: "15/03/2019", end_date: "17/03/2019")
      expect(Request[0][:space_id]).to eq("2")
    end

  end

end
