require 'sinatra/base'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super-secret'
  before { @game = Game.game }

  get '/' do
    erb :index
  end

  get '/one-player' do
    erb :names
  end

  post '/save-name' do
    Game.create_game({ player_1: HumanPlayer.new(params[:player1]) })
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    session[:p1choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  get '/two-player' do
    @two_player = true
    erb :names
  end

  post '/2p-save-name' do
    Game.create_game({ player_1: HumanPlayer.new(params[:player1]), player_2: HumanPlayer.new(params[:player2]) })
    redirect '/two-play'
  end

  get '/two-play' do
    erb :two_play
  end

  get '/two-play-2' do
    erb :two_play_2
  end

  post '/two-choice' do
    session[:p1choice] = params[:choice]
    redirect '/two-play-2'
  end

  post '/two-choice-two' do
    session[:p2choice] = params[:choice2]
    redirect '/two-result'
  end

  get '/two-result' do
    erb :two_result
  end

  run! if app_file == $0
end
