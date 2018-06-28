
feature 'Entering player names' do
  scenario 'players can fill in their names and see those names on-screen' do
    visit('/')
    fill_in('player1', with: 'Kees')
    fill_in('player2', with: 'Yvonne')
    click_button("Submit")
    expect(page).to have_content "Kees and Yvonne start the battle"
  end
end

feature 'View hits points' do
  scenario 'see Player2 hit points' do
    visit('/')
    fill_in :player1, with: 'Kees'
    fill_in :player2, with: 'Yvonne'
    click_button 'Submit'
    expect(page).to have_content 'Yvonne: 60HP'
 end
end
