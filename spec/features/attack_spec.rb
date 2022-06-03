feature 'Attack' do

  scenario 'Attack Player 2 and get confirmation' do
    sign_in_and_play 
    click_button 'Attack'
    expect(page).to have_content 'Dragon attacked Slayer'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play 
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Slayer: 60HP'
    expect(page).to have_content 'Slayer: 50HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Slayer attacked Dragon'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Slayer: 60HP'
    expect(page).to have_content 'Dragon: 50HP'
  end

end