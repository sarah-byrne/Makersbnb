require './lib/user'

describe User do
    it 'can add a user' do
        User.create(name: 'Ann Brown', email_address: 'ann@mail.com', password: 'ann1234')
      p  User[0]
      expect(User[0][:name]).to eq("Ann Brown")
    end
end