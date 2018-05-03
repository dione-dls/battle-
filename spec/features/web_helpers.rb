# require './lib/player'

def sign_in_and_play
  p visit('/')
  p fill_in :player_1_name, with: 'Sally'
  p fill_in :player_2_name, with: 'Bob'
  p click_button 'Submit'
end
