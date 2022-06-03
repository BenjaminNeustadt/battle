def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Dragon'
  fill_in :player_2, with: 'Slayer'
  click_button 'Submit'
end

