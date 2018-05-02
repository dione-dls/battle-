
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sally'
    fill_in :player_2_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content "Sally vs. Bob"
  end
end

feature 'viewing hit points' do
  scenario 'view player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Sally'
    fill_in :player_2_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content "Bob 60HP"
  end
end
