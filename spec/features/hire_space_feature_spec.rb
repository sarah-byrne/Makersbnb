feature 'Book a space' do
    scenario 'click a button to book a space' do
      visit '/spaces'
      expect(page).to have_button('Book this space')
    end

    scenario 'see a confirmation' do
      name = Space.first().name
      visit '/spaces'
      click_button('Book this space')
      msg = "You have booked #{name}"
      expect(page).to have_content(msg)
    end
end