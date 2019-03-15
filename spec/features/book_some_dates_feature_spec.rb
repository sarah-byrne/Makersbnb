require './lib/space'

feature 'Select some dates' do

  scenario 'click a button to take you to see the available spaces' do
   visit '/'
   expect(page).to have_button('View available spaces')
  end

  scenario 'it shows a calendar from which user can select the dates' do
    visit '/'
    click_button('View available spaces')
    click_button('Book this space')
    expect(page).to have_field('startdate')
    expect(page).to have_field('enddate')
  end

  scenario 'it has a submit button for sending the dates' do
    visit '/'
    click_button('View available spaces')
    click_button('Book this space')
    fill_in 'startdate', with: "14/03/2019"
    fill_in 'enddate', with: "17/03/2019"
    click_button('Submit')
    expect(page).to have_content("14/03/2019")
    expect(page).to have_content("17/03/2019")
  end

end
