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

  scenario 'displays input field for the start_date the space is available' do
    visit '/'
    go_to_new_space_page
    expect(page).to have_field('start_date')
  end

  scenario 'displays input field for the end_date the space is available' do
    visit '/'
    go_to_new_space_page
    expect(page).to have_field('end_date')
  end

  scenario 'has a button to submit new listing' do
    visit '/'
    go_to_new_space_page
    expect(page).to have_button('List my space')
  end
end

feature 'It displays the listing on a new page' do
  scenario 'displays the listing details' do
    go_to_new_space_page
    fill_in('name', :with => 'Oregon Heights')
    fill_in('description', :with => 'Two-bed mansion')
    fill_in('price', :with => '250')
    fill_in('start_date', :with => '12/03/2019')
    fill_in('end_date', :with => '14/03/2019')
    click_button('List my space')
    expect(page).to have_content('Oregon Heights')
  end
end
