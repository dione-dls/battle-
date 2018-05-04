require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions
  # set :session_secret, 'secret session'

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    session[:game] = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  get '/attack' do
    @game = session[:game]
    @game.attack(@game.player_2)
    @game.switch_turns(@game.player_2)
    erb :attack
  end
end
