require './lib/availability'
require 'date'

describe Availability do
    it 'can persist a date that a space is available' do
        # start from an empty Availability table - this is done by auto_migrate! in setup_test_database which is called before each test by spec_helper
        # create a new availability entry
        Availability.create(date: '03/03/2019', space_id: 1)
        # check that the entry is in the table
        date = DateTime.parse('03/03/2019')
        expect(Availability[0][:date]).to eq(date)
    end
end