require_relative '../../app.rb'

feature 'displaying user\'s name' do
  scenario 'user enters name' do
    sign_in
    expect(page).to have_content 'Chocolate Rain vs Random Ruby'
  end
end
