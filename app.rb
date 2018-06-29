require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :players
  end

  post '/enter_names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/names'
  end

  get '/names' do
    @player1 = $player1
    @player2 = $player2
    erb :names
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    erb :attack
  end

  run! if app_file == $0
end
