feature 'Battle game' do

  scenario 'entering players' do
    sign_in_and_play
    expect(page).to have_content('Jeremy vs Adam for the championship!')
  end

  scenario 'player two HP points' do
    sign_in_and_play
    expect(page).to have_content('60/60 HP')
  end
end
