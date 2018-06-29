require "./app.rb"

feature 'Entering player names' do
  scenario 'players can fill in their names and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content "Kees and Yvonne start the battle"
  end
end
