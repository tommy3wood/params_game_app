Rails.application.routes.draw do
  namespace :api do
    get '/name_game' => 'params_games_apps#name_game'
    get '/guess_a_number' => 'params_games_apps#guess_a_number'
    get '/guess_segment/:wildcard' => 'params_games_apps#guess_segment'
    post '/guess_number' => 'params_games_apps#guess_number'
    post '/login' => 'params_games_apps#login'
    
  end
end
