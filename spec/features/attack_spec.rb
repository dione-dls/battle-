feature 'attack' do
  scenario "attack player 2" do
    p sign_in_and_play
    p click_button('Attack')
    p expect(page).to have_content "Sally attacked Bob"
  end
end
