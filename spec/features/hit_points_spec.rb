feature 'Hit points' do
  scenario 'show player 2 hit points' do
    visit('/')
    sign_in_and_play
    save_and_open_page 
    expect(page).to have_content 'Slayer: 60HP'
  end
end