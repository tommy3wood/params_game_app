Rails.application.routes.draw do
  namespace :api do
    get '/name_game' => 'params_games_apps#name_game'
    get '/guess_a_number' => 'params_games_apps#guess_a_number'
  end
end
