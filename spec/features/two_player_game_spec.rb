feature '2 player game' do

  before(:example) { two_player_sign_in }
  after(:example) { visit('/') }

  scenario 'two players sign in' do
    expect(page).to have_content 'Chocolate Rain vs Some Stay Dry'
  end

  scenario 'players choose options' do
    choose('rock')
    click_on("Submit")
    choose('paper')
    click_on("Submit")
    expect(page).to have_content "Chocolate Rain chose Rock; Some Stay Dry chose Paper"
  end

  scenario 'result is decided' do
    choose('rock')
    click_on("Submit")
    choose('paper')
    click_on("Submit")
    expect(page).to have_content "The winner is #{Game.game.player_2.name}"
  end
end
