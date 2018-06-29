feature 'View hits points' do
  scenario 'see Player2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Yvonne: 60HP'
 end
end
