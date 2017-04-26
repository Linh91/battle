require 'sinatra/base'


class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "My session secret"

  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]

    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]

    erb(:play)
  end

end
