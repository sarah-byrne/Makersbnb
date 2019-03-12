feature 'Book a space' do
    scenario 'click a button to book a space' do
      Space.create(:name => "Third space", :description => "Nice space", :price => "loads", :date => "10/10/1900")
      visit '/spaces'
      expect(page).to have_button('Book this space')
    end
end