feature 'Select some dates' do

  scenario 'click a button to take you to see the available spaces' do
   visit '/'
   expect(page).to have_button('View available spaces')
  end

end
