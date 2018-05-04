feature 'attack' do
  scenario "attack player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Sally attacked Bob"
  end

  scenario 'player 2 received hit and loses points' do
    sign_in_and_play
    click_button('Attack')
    click_link 'OK'
    expect(page).to have_content "Bob 50HP"
  end

end
