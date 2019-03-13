feature 'User can sign up' do
  scenario 'it shows input field for email address' do
    visit '/'
    expect(page).to have_field('Email address')
  end

  scenario 'it shows input field for password' do
    visit '/'
    expect(page).to have_field('Password')
  end
end
