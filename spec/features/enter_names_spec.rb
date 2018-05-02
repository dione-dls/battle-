
feature 'Enter names' do
  scenario 'submitting names' do
    p sign_in_and_play
    p expect(page).to have_content "Sally vs. Bob"
  end
end
