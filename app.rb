require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "My session secret"

  end

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

    erb(:play)
  end

  get '/attack' do
    @player_one = $player_one.name
    @player_two = $player_two.name

    erb(:attack)
  end
end
