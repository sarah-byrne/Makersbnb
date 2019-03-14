feature 'User can sign up' do
  scenario 'it shows input field for username' do
    visit '/'
    expect(page).to have_field('username')
  end

  scenario 'it shows input field for email address' do
    visit '/'
    expect(page).to have_field('email_address')
  end

  scenario 'it shows input field for password' do
    visit '/'
    expect(page).to have_field('password')
  end

  scenario 'it shows input for password confirmation' do
    visit '/'
    expect(page).to have_field('password_confirmation')
  end

  scenario 'it shows sign up button' do
    visit '/'
    expect(page).to have_button('Sign up')
  end

  scenario 'it welcomes the user' do
    visit '/'
    fill_in('username', :with => 'Joe Bloggs')
    fill_in('email_address', :with => 'jb@jb.com')
    fill_in('password', :with => 'password123')
    fill_in('password_confirmation', :with => 'password123')
    click_button('Sign up')
    expect(page).to have_content('Welcome Joe Bloggs')
  end
end
