feature 'Book a space' do
    scenario 'click a button to book a space' do
      Space.create(:name => "Oregon Heights", :description => "Nice space", :price => "loads", :date => "10/10/1900")
      visit '/spaces'
      expect(page).to have_button('Book this space')
    end

    scenario 'see a confirmation' do
      Space.create(:name => "Oregon Heights", :description => "Nice space", :price => "loads", :date => "10/10/1900")
      visit '/spaces'
      click_button('Book this space')
      expect(page).to have_content('You have booked Oregon Heights')
    end
end