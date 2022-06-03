require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect '/play'
  end
  
  run! if app_file == $0
end



# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

# Modular programming (also referred to as modular architecture) is a general programming concept. 
# It involves separating a program's functions into independent pieces or building blocks, 
# each containing all the parts needed to execute a single aspect of the functionality

# Modular programming is the process of subdividing a computer program into separate sub-programs. 
# A module is a separate software component. 
# It can often be used in a variety of applications and functions with other components of the system.