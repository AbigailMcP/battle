require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    @hp = $player_two.hp
    erb(:play)
  end

  post '/attack' do
    @player_one = $player_one.name
    @player_two = $player_two.name
    @hp = $player_two.attack
    @attacked = true
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
