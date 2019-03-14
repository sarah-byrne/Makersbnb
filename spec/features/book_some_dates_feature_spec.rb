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

end
