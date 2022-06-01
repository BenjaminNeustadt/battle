require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions
  
  get '/' do
    'Testing infrasturcture working!'
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
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