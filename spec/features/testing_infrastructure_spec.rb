feature 'Battle game' do

  scenario 'entering players' do
    sign_in_and_play
    expect(page).to have_content('Jeremy vs Adam')
  end

  scenario 'player two HP points' do
    sign_in_and_play
    expect(page).to have_content('100 HP')
  end

  scenario 'attack player two' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Jeremy attacked Adam')
  end
end
