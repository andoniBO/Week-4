Rails.application.routes.draw do
  get '/movies/' => 'movie#index'
  get '/movies/search' => 'movie#make_search'
  get '/movies/show' => 'movie#show'

  post '/movies/search' => 'movie#search'
end
