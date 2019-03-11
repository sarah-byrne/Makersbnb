feature 'List a space' do
    scenario 'displays a link from the homepage' do
        visit '/'
        expect(page).to have_button("List a space")
    end

    scenario 'displays a form with name input field' do
      visit '/'
      click_button("List a space")
      expect(page).to have_field("name")
    end

    scenario 'displays input field for description of space' do
      visit '/'
      click_button("List a space")
      expect(page).to have_field("description")
    end

    scenario 'displays input field for price per night' do
      visit '/'
      click_button("List a space")
      expect(page).to have_field("price")
    end
end
