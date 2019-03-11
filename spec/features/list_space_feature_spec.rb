feature 'List a space' do
    scenario 'displays a link from the homepage' do
        visit '/'
        expect(page).to have_button("List a space")
    end

    scenario 'displays a form with name input field' do
      get_to_new_space_page
      expect(page).to have_field("name")
    end

    scenario 'displays input field for description of space' do
      get_to_new_space_page
      expect(page).to have_field("description")
    end

    scenario 'displays input field for price per night' do
      visit '/'
      get_to_new_space_page
      expect(page).to have_field("price")
    end

    scenario 'displays input field for the date the space is available (MVP. Multiple dates to be implemented later)' do
      visit '/'
      get_to_new_space_page
      expect(page).to have_field("price")
    end

    scenario 'has a button to submit new listing' do
      visit '/'
      get_to_new_space_page
      expect(page).to have_button("List my space")
    end
end
