feature 'Book a space' do
    scenario 'click a button to book a space' do
      visit '/spaces'
      expect(page).to have_button('Book this space')
    end

    scenario 'see a confirmation' do
      name = Space.first.name
      visit '/spaces'
      click_button('Book this space')
      fill_in 'startdate', with: "14/03/2019"
      fill_in 'enddate', with: "17/03/2019"
      click_button('Submit')
      msg = "You have booked #{name}"
      expect(page).to have_content(msg)
    end
end
