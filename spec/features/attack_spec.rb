require "./app.rb"

feature 'Attacking' do
  scenario 'Attack Player2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Kees attack Yvonne'
  end
end
