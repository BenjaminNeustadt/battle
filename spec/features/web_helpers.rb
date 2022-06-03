def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dragon'
  fill_in :player_2_name, with: 'Slayer'
  click_button 'Submit'
end

