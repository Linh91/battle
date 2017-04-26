feature 'Battle game' do

  scenario 'entering players' do
    visit('/')
    fill_in('player_one', with: 'Jeremy')
    fill_in('player_two', with: 'Adam')
    click_button('Submit')
    expect(page).to have_content('Jeremy vs Adam for the championship!')
  end

  scenario 'player two HP points' do
    visit('/')
    fill_in('player_one', with: 'Jeremy')
    fill_in('player_two', with: 'Adam')
    click_button('Submit')
    expect(page).to have_content('60/60 HP')
  end
end
