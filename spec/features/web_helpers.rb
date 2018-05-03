# require './lib/player'

def sign_in_and_play
  p visit('/')
  p fill_in('player_1', with: 'Sally')
  p fill_in('player_2', with: 'Bob')
  p click_button 'Submit'
end
