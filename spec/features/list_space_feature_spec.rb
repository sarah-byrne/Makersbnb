feature 'List a space' do
    scenario 'displays a link from the homepage' do
        visit '/'
        expect(page).to have_button("List a space")
    end
end