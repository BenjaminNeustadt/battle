# feature 'Attacking' do
#   scenario 'Attack Player 2 and get confirmation' do
#     sign_in_and_play 
#     click_link 'Attack'
#     expect(page).to have_content 'Dragon attacked Slayer'
#   end
# end

feature 'Attacking' do
  
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Slayer: 60HP'
    expect(page).to have_content 'Slayer: 50HP'
  end
end