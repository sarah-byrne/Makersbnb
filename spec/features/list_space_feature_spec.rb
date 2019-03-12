feature 'List a space' do
  scenario 'displays a link from the homepage' do
    visit '/'
    expect(page).to have_button('List a space')
  end

  scenario 'displays a form with name input field' do
    go_to_new_space_page
    expect(page).to have_field('name')
  end

  scenario 'displays input field for description of space' do
    go_to_new_space_page
    expect(page).to have_field('description')
  end

  scenario 'displays input field for price per night' do
    visit '/'
    go_to_new_space_page
    expect(page).to have_field('price')
  end

  scenario 'displays input field for the date the space is available' do
    visit '/'
    go_to_new_space_page
    expect(page).to have_field('date')
  end

  scenario 'has a button to submit new listing' do
    visit '/'
    go_to_new_space_page
    expect(page).to have_button('List my space')
  end
end
