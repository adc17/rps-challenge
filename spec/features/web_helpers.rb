def one_player_sign_in
  visit('/')
  click_on('1 Player')
  fill_in('player1', with: 'Chocolate Rain')
  click_on('Submit')
end

def two_player_sign_in
  visit('/')
  click_on('2 Player')
  fill_in('player1', with: 'Chocolate Rain')
  fill_in('player2', with: 'Some Stay Dry')
  click_on('Submit')
end
